/**  
 * @Title: FileToolUtils.java
 * @Package com.lit.util
 * @Description: 描述
 * @author raowenxing
 * @date 2016-5-20 下午3:02:28
 */
package com.tianhong.utils;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.multipart.MultipartFile;

import com.tianhong.constant.CommonConstant;

/**
 * ClassName: FileToolUtils
 * 
 * @Description: 描述
 * @author raowenxing
 * @date 2016-5-20 下午3:02:28
 */
public class FileToolUtils extends FileUtils {

	private static final Log log = LogFactory.getLog(FileToolUtils.class);

	public static void writer(File file, String str, boolean append, String code) throws Exception {
		BufferedWriter bw = null;
		OutputStreamWriter out = null;
		FileOutputStream fileOutput = null;
		try {
			fileOutput = new FileOutputStream(file, append);
			out = new OutputStreamWriter(fileOutput, CommonConstant.UTF_8);
			bw = new BufferedWriter(out);
			bw.write(str);
		} finally {
			if (bw != null) {
				bw.flush();
				bw.close();
			}
			if (out != null) {
				out.close();
			}
			if (fileOutput != null) {
				fileOutput.close();
			}
		}
	}

	public static void mkDir(File file) throws Exception {
		if (file.getParentFile().exists()) {
			file.mkdir();
		} else {
			mkDir(file.getParentFile());
			file.mkdir();
		}
	}

	public static void mkDir(String fileName) throws Exception {
		File file = new File(fileName);
		if (file.getParentFile().exists()) {
			file.mkdir();
		} else {
			mkDir(file.getParentFile().getPath());
			file.mkdir();
		}
	}

	public static void createNewFile(File file) throws Exception {
		if (!file.exists()) {
			file.createNewFile();
		}
	}

	public static void createNewFile(String fileName) throws Exception {
		File file = new File(fileName);
		if (!file.exists()) {
			file.createNewFile();
		}
	}

	public static boolean deleteFile(String path) throws Exception {
		log.info("删除文件路径1:" + path);
		boolean flag = false;
		File file = new File(path);
		// 路径为文件且不为空则进行删除
		if (file.exists()) {
			if (file.isFile()) {
				flag = file.delete();
				AssertUtils.isTrue(flag, "文件删除失败:" + file.getPath());
			} else {
				File[] fi = file.listFiles();
				if (fi != null && fi.length > 0) {
					for (File f : fi) {
						flag = deleteFile(f.getPath());
						AssertUtils.isTrue(flag, "文件删除失败:" + f.getPath());
					}
				} else {
					// flag = file.delete();
					AssertUtils.isTrue(flag, "文件删除失败:" + file.getPath());
				}
			}
		}
		return flag;
	}

	public static boolean deleteFile(File file) throws Exception {
		log.info("删除文件路径2:" + file.getPath());
		boolean flag = false;
		// 路径为文件且不为空则进行删除
		if (file.exists()) {
			if (file.isFile()) {
				flag = file.delete();
				AssertUtils.isTrue(flag, "文件删除失败:" + file.getPath());
			} else {
				File[] fi = file.listFiles();
				if (fi != null && fi.length > 0) {
					for (File f : fi) {
						flag = deleteFile(f);
						AssertUtils.isTrue(flag, "文件删除失败:" + f.getPath());
					}
				} else {
					// flag = file.delete();
					AssertUtils.isTrue(flag, "文件删除失败:" + file.getPath());
				}
			}
		}
		return flag;
	}

	public static String getPathMkdir(String realPath, String mdwPath) throws Exception {
		/**
		 * 创建的文件夹与tomcat平级
		 */
		StringBuffer pathBuffer = new StringBuffer();
		String separator = File.separator;
		if (!separator.equals("/")) {
			separator = "\\\\";
		}
		String path[] = realPath.split(separator);
		for (int i = 0; i < path.length - 3; i++) {
			pathBuffer.append(path[i]);
			pathBuffer.append(separator);
		}
		String rep = mdwPath.replaceAll("/", separator);
		pathBuffer.append(rep);
		FileToolUtils.mkDir(pathBuffer.toString());
		return pathBuffer.toString();
	}

	public static String getPathMkdir2(String realPath, String mdwPath) throws Exception {
		/**
		 * 创建的文件夹与tomcat平级
		 */
		StringBuffer pathBuffer = new StringBuffer();
		String separator = File.separator;
		if (!separator.equals("/")) {
			separator = "\\\\";
		}
		String path[] = realPath.split(separator);
		for (int i = 0; i < path.length - 3; i++) {
			pathBuffer.append(path[i]);
			pathBuffer.append(separator);
		}
		String rep = mdwPath.replaceAll("/", separator);
		pathBuffer.append(rep);
		FileToolUtils.mkDir(pathBuffer.toString());
		return pathBuffer.toString();
	}

	public static String fileToString(File file, String code) throws Exception {
		StringBuffer sb = new StringBuffer();
		InputStream fileInput = null;
		BufferedReader reader = null;
		try {
			fileInput = new FileInputStream(file);
			reader = new BufferedReader(new InputStreamReader(fileInput, code));
			String line = null;
			while ((line = reader.readLine()) != null) {
				sb.append(line);
			}
		} finally {
			if (fileInput != null) {
				fileInput.close();
			}
			if (reader != null) {
				reader.close();
			}
		}
		return sb.toString();
	}

	public static void downLoad(HttpServletResponse response, String path, boolean delete) throws Exception {
		InputStream input = null;
		FileInputStream fileInput = null;
		OutputStream toClient = null;
		try {
			File file = new File(path);
			// 取得文件名。
			String filename = file.getName();
			response.reset();
			// 设置response的Header
			response.addHeader("Content-Disposition", "attachment;filename=" + java.net.URLEncoder.encode(filename, "UTF-8"));
			response.addHeader("Content-Length", "" + file.length());
			response.setContentType("application/csv;charset=UTF-8");
			response.setContentType("multipart/form-data");
			// 以流的形式下载文件。
			fileInput = new FileInputStream(file);
			input = new BufferedInputStream(fileInput);
			byte[] b = new byte[1024];
			toClient = new BufferedOutputStream(response.getOutputStream());
			while (input.read(b) != -1) {
				toClient.write(b);
			}
			toClient.flush();
		} finally {
			if (input != null) {
				input.close();
			}
			if (fileInput != null) {
				fileInput.close();
			}
			if (toClient != null) {
				toClient.close();
			}
			if (delete) {
				FileToolUtils.deleteFile(path);
			}
		}
	}

	public static String getFileSeparator() {
		String separator = File.separator;
		if (!separator.equals("/")) {
			separator = "\\\\";
		}
		return separator;
	}

	public static void saveMultipartFile(MultipartFile[] file, String path, String fileName) throws Exception {
		BufferedInputStream input = null;
		FileOutputStream fileOut = null;
		BufferedOutputStream output = null;
		try {
			for (int i = 0; i < file.length; i++) {
				if (StringUtils.isEmpty(fileName)) {
					fileName = file[i].getOriginalFilename();
				}
				FileToolUtils.deleteFile(path + fileName);
				FileToolUtils.mkDir(path);
				input = new BufferedInputStream(file[i].getInputStream());
				File f = new File(path + fileName);
				FileToolUtils.deleteFile(f);
				fileOut = new FileOutputStream(f);
				output = new BufferedOutputStream(fileOut);
				byte[] b = new byte[1024];
				while (input.read(b) != -1) {
					output.write(b);
				}
				output.flush();
			}
		} finally {
			try {
				if (input != null) {
					input.close();
				}
				if (fileOut != null) {
					fileOut.close();
				}
				if (output != null) {
					output.close();
				}
			} catch (Exception e2) {
				log.error("", e2);
			}
		}
	}

	public static void saveMultipartFile(MultipartFile[] file, String path) throws Exception {
		BufferedInputStream input = null;
		FileOutputStream fileOut = null;
		BufferedOutputStream output = null;
		try {
			for (int i = 0; i < file.length; i++) {
				String fileName = file[i].getOriginalFilename();
				String[] splits = fileName.split(CommonConstant.POINT);
				StringBuffer sb = new StringBuffer();
				sb.append(System.currentTimeMillis()).append(CommonConstant.POINT).append(splits[splits.length - 1]);
				FileToolUtils.deleteFile(path + sb.toString());
				FileToolUtils.mkDir(path);
				input = new BufferedInputStream(file[i].getInputStream());
				File f = new File(path + sb.toString());
				FileToolUtils.deleteFile(f);
				fileOut = new FileOutputStream(f);
				output = new BufferedOutputStream(fileOut);
				byte[] b = new byte[1024];
				while (input.read(b) != -1) {
					output.write(b);
				}
				output.flush();
			}
		} finally {
			try {
				if (input != null) {
					input.close();
				}
				if (fileOut != null) {
					fileOut.close();
				}
				if (output != null) {
					output.close();
				}
			} catch (Exception e2) {
				log.error("", e2);
			}
		}
	}

	public static String saveFile(MultipartFile file, String path) throws Exception {
		BufferedInputStream input = null;
		FileOutputStream fileOut = null;
		BufferedOutputStream output = null;
		try {
			String fileName = file.getOriginalFilename();

			FileToolUtils.deleteFile(path + fileName);
			FileToolUtils.mkDir(path);
			input = new BufferedInputStream(file.getInputStream());
			File f = new File(path + fileName);
			FileToolUtils.deleteFile(f);
			fileOut = new FileOutputStream(f);
			output = new BufferedOutputStream(fileOut);
			byte[] b = new byte[1024];
			while (input.read(b) != -1) {
				output.write(b);
			}
			output.flush();
			return fileName;
		} finally {
			try {
				if (input != null) {
					input.close();
				}
				if (fileOut != null) {
					fileOut.close();
				}
				if (output != null) {
					output.close();
				}
			} catch (Exception e2) {
				log.error("", e2);
			}
		}
	}

	public static String saveImage(MultipartFile file, String path) throws Exception {
		BufferedInputStream input = null;
		OutputStream fileOut = null;
		BufferedOutputStream output = null;
		try {
			StringBuffer sb = new StringBuffer();
			sb.append(System.currentTimeMillis()).append(".png");
			input = new BufferedInputStream(file.getInputStream());
			File f = new File(path + sb.toString());
			fileOut = new FileOutputStream(f);
			output = new BufferedOutputStream(fileOut);
			byte[] b = new byte[1024];
			while (input.read(b) != -1) {
				output.write(b);
			}
			output.flush();
			return sb.toString();
		} finally {
			try {
				if (input != null) {
					input.close();
				}
				if (fileOut != null) {
					fileOut.close();
				}
				if (output != null) {
					output.close();
				}
			} catch (Exception e2) {
				log.error("", e2);
			}
		}
	}

	public static void copyFile(String oldPath, String newPath) throws Exception {
		File oldFile = new File(oldPath);
		File newFile = new File(newPath);
		if (newFile.exists()) {
			FileToolUtils.deleteFile(newFile);
		}
		FileUtils.copyFile(oldFile, newFile);
	}
}
