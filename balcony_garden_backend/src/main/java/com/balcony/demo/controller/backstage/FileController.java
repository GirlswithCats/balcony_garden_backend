package com.balcony.demo.controller.backstage;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.SecureUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.balcony.demo.common.api.ApiResult;
import com.balcony.demo.mapper.backstage.FileMapper;
import com.balcony.demo.model.entity.backstage.Files;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.json.*;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;


/**
 * 文件上传相关接口
 */
@RestController
@RequestMapping("/file")
public class FileController {

    @Value("${files.upload.path}")
    private String fileUploadPath;

//    @Value("${server.ip}")
//    private String serverIp;

    @Resource
    private FileMapper fileMapper;

//
//    @Autowired
//    private StringRedisTemplate stringRedisTemplate;


    /**
     * 文件上传接口
     * @param file 前端传递过来的文件
     * @return
     * @throws IOException
     */
    @PostMapping("/upload")
    public String upload(@RequestParam("file") MultipartFile file) throws IOException {
        String originalFilename = file.getOriginalFilename();
        String type = FileUtil.extName(originalFilename);
        long size = file.getSize();

        // 定义一个文件唯一的标识码
        String fileUUID = IdUtil.fastSimpleUUID() + StrUtil.DOT + type;

//        File uploadParentFile = new File(fileUploadPath + fileUUID);

        File uploadFile = new File(fileUploadPath + fileUUID);

        // 判断配置的文件目录是否存在，若不存在则创建一个新的文件目录
        File parentFile = uploadFile.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }

        // 获取文件的md5
        String md5 = SecureUtil.md5(file.getInputStream());
        Files dbFiles = getFileByMd5(md5);

        //获取文件url
        String url ;
        // 从数据库查询是否存在相同的记录
        if (dbFiles != null) {

            url = dbFiles.getUrl();

        } else {
            // 上传文件到磁盘
            file.transferTo(uploadFile);

            // 数据库若不存在重复文件，则不删除刚才上传的文件
           url =  "http://localhost:8000/file/"+ fileUUID;
        }

        // 存储数据库
        Files saveFile = new Files();
        saveFile.setName(originalFilename);
        saveFile.setType(type);
        saveFile.setSize(size/1024); // 单位 kb
        saveFile.setUrl(url);
        saveFile.setMd5(md5);
        fileMapper.insert(saveFile);
        return url;

    }

    @PostMapping("/uploadImg")
    public Object uploadImg(@RequestParam("file") MultipartFile file) throws IOException {
        String originalFilename = file.getOriginalFilename();
        String type = FileUtil.extName(originalFilename);
        long size = file.getSize();

        // 定义一个文件唯一的标识码
        String fileUUID = IdUtil.fastSimpleUUID() + StrUtil.DOT + type;

//        File uploadParentFile = new File(fileUploadPath + fileUUID);

        File uploadFile = new File(fileUploadPath + fileUUID);

        // 判断配置的文件目录是否存在，若不存在则创建一个新的文件目录
        File parentFile = uploadFile.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }

        // 获取文件的md5
        String md5 = SecureUtil.md5(file.getInputStream());
        Files dbFiles = getFileByMd5(md5);

        //获取文件url
        String url ;
        // 从数据库查询是否存在相同的记录
        if (dbFiles != null) {

            url = dbFiles.getUrl();

        } else {
            // 上传文件到磁盘
            file.transferTo(uploadFile);

            // 数据库若不存在重复文件，则不删除刚才上传的文件
            url =  "http://localhost:8000/file/"+ fileUUID;
        }

        // 存储数据库
        Files saveFile = new Files();
        saveFile.setName(originalFilename);
        saveFile.setType(type);
        saveFile.setSize(size/1024); // 单位 kb
        saveFile.setUrl(url);
        saveFile.setMd5(md5);
        fileMapper.insert(saveFile);

        JSONObject res = new JSONObject();
//        res.set("errno",0);

       ;

//        res.set("data","{[\"url\":"+url+"]}");

        return JSONUtil.parseObj( "{ \"errno\":0, \"data\":[{\"url\":\""+url+"\"}] }");

    }




    //    /**
//     * 文件下载接口   http://localhost:9090/file/{fileUUID}
//     * @param fileUUID
//     * @param response
//     * @throws IOException
//     */
    @GetMapping("/{fileUUID}")
        public void download(@PathVariable String fileUUID , HttpServletResponse response) throws IOException {

        // 根据文件的唯一标识码获取文件
        File uploadFile = new File(fileUploadPath + fileUUID);

        // 设置输出流的格式
        ServletOutputStream os = response.getOutputStream();
        response.addHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileUUID, "UTF-8"));
        response.setContentType("application/octet-stream");

        // 读取文件的字节流
        os.write(FileUtil.readBytes(uploadFile));
        os.flush();
        os.close();
    }


    /**
     * 通过文件的md5查询文件
     * @param md5
     * @return
     */
    private Files getFileByMd5(String md5) {
        // 查询文件的md5是否存在
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("md5", md5);
        List<Files> filesList = fileMapper.selectList(queryWrapper);
        return filesList.size() == 0 ? null : filesList.get(0);
    }
//
//    //    @CachePut(value = "files", key = "'frontAll'")
//    @PostMapping("/update")
//    public Result update(@RequestBody Files files) {
//        fileMapper.updateById(files);
//        flushRedis(Constants.FILES_KEY);
//        return Result.success();
//    }
//
    @GetMapping("/detail/{id}")
    public ApiResult getById(@PathVariable Integer id) {
        return ApiResult.success(fileMapper.selectById(id));
    }
//
//    //清除一条缓存，key为要清空的数据
////    @CacheEvict(value="files",key="'frontAll'")
//    @DeleteMapping("/{id}")
//    public Result delete(@PathVariable Integer id) {
//        Files files = fileMapper.selectById(id);
//        files.setIsDelete(true);
//        fileMapper.updateById(files);
//        flushRedis(Constants.FILES_KEY);
//        return Result.success();
//    }
//
//    @PostMapping("/del/batch")
//    public Result deleteBatch(@RequestBody List<Integer> ids) {
//        // select * from sys_file where id in (id,id,id...)
//        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
//        queryWrapper.in("id", ids);
//        List<Files> files = fileMapper.selectList(queryWrapper);
//        for (Files file : files) {
//            file.setIsDelete(true);
//            fileMapper.updateById(file);
//        }
//        return Result.success();
//    }
//
    /**
     * 分页查询接口
     * @param pageNum
     * @param pageSize
     * @param name
     * @return
     */
    @GetMapping("/page")
    public ApiResult findPage(@RequestParam Integer pageNum,
                              @RequestParam Integer pageSize,
                              @RequestParam(defaultValue = "") String name) {

        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        // 查询未删除的记录
        queryWrapper.eq("is_delete", false);
        queryWrapper.orderByDesc("id");
        if (!"".equals(name)) {
            queryWrapper.like("name", name);
        }
        return ApiResult.success(fileMapper.selectPage(new Page<>(pageNum, pageSize), queryWrapper));
    }

//    // 设置缓存
//    private void setCache(String key, String value) {
//        stringRedisTemplate.opsForValue().set(key, value);
//    }
//
//    // 删除缓存
//    private void flushRedis(String key) {
//        stringRedisTemplate.delete(key);
//    }



}
