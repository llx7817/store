package com.store.controls;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/file")
public class CommonFileController {

	public String getProjectPath(HttpServletRequest request) {
		String basePath = request.getSession().getServletContext().getRealPath("");// D:\programming\hibernate\store\src\main\webapp
		String path = basePath.replace('/', '\\') + "\\resources\\img\\";
		return path;
	}

	@RequestMapping("/upload")
	@ResponseBody
	// @RequestMapping(method = RequestMethod.POST, path = "upload/up")
	public Object upload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request)
			throws IllegalStateException, IOException {
		Map<String, String> map = new HashMap<String, String>();
		System.out.println("开始");
		//////////////
		if (!file.isEmpty()) {
			// 上传文件路径
			String filePath = getProjectPath(request);
			// String path = basePath.substring(0, num).replace('/', '\\') + projectName +
			// "\\webapp\\resources\\img\\";
			// String path = "D:\\image";
			// String path = request.getServletContext().getRealPath("/image/");
			System.out.println("file " + file);
			// 上传文件名
			String filename = file.getOriginalFilename();
			System.out.println("filename " + filename);
			File filepath = new File(filePath, filename);
			System.out.println("filepath " + filepath);
			// 判断路径是否存在，如果不存在就创建一个
			if (!filepath.getParentFile().exists()) {
				filepath.getParentFile().mkdirs();
			}
			// 将上传文件保存到一个目标文件夹中
			// 保存
			try {
				file.transferTo(new File(filePath + File.separator + filename));
			} catch (Exception e) {
				e.printStackTrace();
			}
			map.put("filename", filename);
			return map;
			// request.setAttribute("filename", filename);
		} else
			return null;

	}

	// private String tempPath;
	@RequestMapping("/download")
	@ResponseBody
	// @RequestMapping(value = "/load/getPreviewFile", method = RequestMethod.GET)
	public void download(HttpServletResponse response, HttpServletRequest request) throws IOException {
		// MultipartFile file = null;
		// File localFileRoot = new File("D:\\fpi_dev\\image\\temp");// 临时存储路径
		// 对各种类型的文件下载
		// 2.获取要下载的文件名
		// String fileName = "test.png";
		// 3.设置content-disposition响应头控制浏览器以下载的形式打开文件
		// 解决中文文件名乱码问题
		// String fileName = new
		// String(request.getParameter("filename").getBytes("ISO8859-1"), "UTF-8");
		String fileName = new String(request.getParameter("filename").getBytes("ISO8859-1"), "UTF-8");
		response.setHeader("content-disposition", "attachment;filename=" + fileName);
		// 4.获取要下载的文件输入流
		InputStream in = null;
		OutputStream out = null;
		// String projectName = "store";// 项目名
		// String basePath = request.getSession().getServletContext().getRealPath("");
		// int num = basePath.indexOf(".metadata");
		// String filePath = basePath.substring(0, num).replace('/', '\\') + projectName
		// + "\\webapp\\resources\\img\\";
		// String filePath = basePath.substring(0, num).replace('/', '\\') + projectName
		// + "\\WebContent\\image\\";
		String filePath = getProjectPath(request);
		try {// 获取要下载的文件的绝对路径
			in = new FileInputStream(filePath + fileName);
			// in = new FileInputStream("D:/image/" + fileName);
			int len = 0;
			// 5.创建数据缓冲区
			byte[] buffer = new byte[1024];
			// 6.通过response对象获取OutputStream流
			out = response.getOutputStream();
			// 7.将FileInputStream流写入到buffer缓冲区
			while ((len = in.read(buffer)) > 0) {// in.read(byte[] b)最多读入b.length个字节 在碰到流的结尾时 返回-1
				// 8.使用OutputStream将缓冲区的数据输出到客户端浏览器
				out.write(buffer, 0, len);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} finally {
			in.close();
			out.close();
		}

	}

}
