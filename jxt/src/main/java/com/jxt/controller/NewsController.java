package com.jxt.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.json.JSONObject;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.jxt.entity.Account;
import com.jxt.entity.News;
import com.jxt.service.NewsService;

@Controller
public class NewsController {
	
	@Autowired
	private NewsService newsService;
	
	@GetMapping("/createNews")
	public String get() {
		
		return "news/newsEditor";
		
	}
	
	@PostMapping("/createNews")
	public String insertNews(News news, HttpServletRequest request) {
		
		news.setEditorId(((Account) (request.getSession().getAttribute("account"))).getAccountId());
		
		Timestamp time = new Timestamp(System.currentTimeMillis());
		news.setNewsCreate(time);
		news.setNewsModified(time);
		
		int rows = newsService.add(news);
		
		return "redirect:/myNews";
	}
	
	
	@GetMapping("/news/{id}")
	public String showNews(@PathVariable("id") int id, Model model) {
		News news = newsService.getNewsById(id);
		model.addAttribute("news", news);

		return "news/newsDetail";
	}

	@GetMapping("/newsManage")
	public String newsList(Model model, HttpServletRequest request) {
		List<News> news = newsService.findAll();
		model.addAttribute("news", news);

		return "news/newsManage";
	}
	
	@GetMapping("/updateNews/{id}")
	public String updateNews(@PathVariable("id") int id, Model model) {
		News news = newsService.getNewsById(id);
		model.addAttribute("news", news);

		return "news/updateNews";
	}
	
	@PostMapping("/updateNews/{id}")
	public String checkUpdate(News news, HttpServletRequest request) {
		//更新修改时间
		news.setNewsModified(new Timestamp(System.currentTimeMillis()));
		
		int rows = newsService.update(news);
		
		return "redirect:/newsManage";
	}
	
	@GetMapping("/deleteNews/{id}")
	public String deleteNews(@PathVariable("id") int id, HttpServletRequest request) {
		
		int rows = newsService.delete(id);
		
		
		return "redirect:/newsManage";
	}
	
	@GetMapping("/myNews")
	public String myNews(HttpServletRequest request, Model model) {
		int editorId = ((Account) (request.getSession().getAttribute("account"))).getAccountId();
		
		List<News> news = newsService.getByEditor(editorId);
		
		model.addAttribute("news", news);
		return "news/myNews";
	}
	
	@RequestMapping("/uploadNewsCover")  
    public void uploadPic(MultipartFile pic, HttpServletRequest request, HttpServletResponse response) throws IllegalStateException, IOException {  
  
        try {  
            // 获取图片原始文件名  
            String originalFilename = pic.getOriginalFilename();  
            System.out.println(originalFilename);  
          
            // 文件名使用当前时间  
            String name = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());  
            
            String folder = new SimpleDateFormat("yyyyMMdd").format(new Date()); 
          
            // 获取上传图片的扩展名(jpg/png/...)  
            String extension = FilenameUtils.getExtension(originalFilename);  
              
            // 图片上传的相对路径（因为相对路径放到页面上就可以显示图片）  
            String path = "/upload/images/" + folder + "/" + name + "." + extension;  
  
            // 图片上传的绝对路径  
            String url = request.getSession().getServletContext().getRealPath("") + path;  
          
            File dir = new File(url);  
            if(!dir.exists()) {  
            	dir.mkdirs();  
            }  
              
            // 上传图片  
            pic.transferTo(new File(url));  
          
            // 将相对路径写回（json格式）  
            JSONObject jsonObject = new JSONObject();  
            // 将图片上传到本地  
            jsonObject.put("path", path);  
          
            // 设置响应数据的类型json  
            response.setContentType("application/json; charset=utf-8");  
            // 写回  
            response.getWriter().write(jsonObject.toString());  
  
        } catch (Exception e) {  
            throw new RuntimeException("服务器繁忙，上传图片失败");  
        }  
    } 

}
