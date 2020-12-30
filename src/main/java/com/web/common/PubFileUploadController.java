package com.web.common;

import java.io.File;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * 公共文件上传文件
 */
@Controller
@RequestMapping("/pubFileUpload")
public class PubFileUploadController {

    /**
     * 单个文件上传
     * @param file
     * @param request
     * @param response
     */
    @RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
    public void fileUpload(@RequestParam("file") MultipartFile file, HttpServletRequest request, HttpServletResponse response){
        try {
            //原始文件名
            String originalFilename = file.getOriginalFilename();
            //文件名
            String fileName = originalFilename;

            //用于生成日期文件夹路径
            DateFormat dateFormat = new SimpleDateFormat("YYYYMMDD");
            Date date = new Date();

            //文件存放路径:
            //走访日志： gridSystem\visitLog\YYYYMMDD\12位村社区代码
            //任务上报： gridSystem\taskMedia\YYYYMMDD\12位村社区代码
            String filePath = "E:\\gridSystem\\visitLog\\" + dateFormat.format(date) + "\\"+ "网格代码" + "\\";
            //保存文件
            File desFile = new File(filePath);
            file.transferTo(desFile);


            //文件服务器存放文件路径:
            //走访日志： gridSystem\visitLog\YYYYMMDD\12位村社区代码
            //任务上报： gridSystem\taskMedia\YYYYMMDD\12位村社区代码
            //String ftpPath = "\\gridSystem\\taskMedia\\" + dateFormat.format(date) + "\\" + "网格代码" + "\\";
            //上传文件至文件服务
            //ftpService.uploadFile(ftpPath, fileName, file);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    /**
     * 多个文件上传
     * @param files
     * @param request
     * @param response
     */
    @RequestMapping(value = "/multiFileUpload.action", method = RequestMethod.POST)
    public void multiFileUpload(@RequestParam("files") MultipartFile[] files, HttpServletRequest request, HttpServletResponse response){
        try {
            if(files != null && files.length > 0) {
                for(MultipartFile file: files) {
                    //原始文件名
                    String originalFilename = file.getOriginalFilename();
                    //文件名
                    String fileName = originalFilename;

                    //用于生成日期文件夹路径
                    DateFormat dateFormat = new SimpleDateFormat("YYYYMMDD");
                    Date date = new Date();

                    //文件存放路径:
                    //走访日志： gridSystem\visitLog\YYYYMMDD\12位村社区代码
                    //任务上报： gridSystem\taskMedia\YYYYMMDD\12位村社区代码
                    String filePath = "E:\\gridSystem\\visitLog\\" + dateFormat.format(date) + "\\"+ "网格代码" + "\\";
                    //保存文件
                    //File desFile = new File(filePath);
                    //file.transferTo(desFile);


                    //文件服务器存放文件路径:
                    //走访日志： gridSystem\visitLog\YYYYMMDD\12位村社区代码
                    //任务上报： gridSystem\taskMedia\YYYYMMDD\12位村社区代码
                    //String ftpPath = "\\gridSystem\\taskMedia\\" + dateFormat.format(date) + "\\" + communityNo + "\\";
                    //上传文件至文件服务
                    //ftpService.uploadFile(ftpPath, fileName, file);
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
