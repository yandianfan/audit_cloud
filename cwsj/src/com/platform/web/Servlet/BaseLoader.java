package com.platform.web.Servlet;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BaseLoader extends HttpServlet {
	public static final String MAP_BLH="MAP_BLH";
	private static Map<String, Object> blhmap=null;
	/**
	 * Constructor of the object.
	 */
	public BaseLoader() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
		try {
			this.start();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void start() throws SecurityException, NoSuchMethodException, IllegalArgumentException, MalformedURLException, IllegalAccessException, InvocationTargetException, ClassNotFoundException, URISyntaxException {
		ServletContext application = this.getServletContext();
		if(blhmap==null){
			blhmap=new HashMap<String,Object>();
		}					
	    long time = System.currentTimeMillis();
	    System.out.println("开始启动平台......");
	    String pathurl= Thread.currentThread().getContextClassLoader().getResource("").toURI().getPath(); 
	    System.out.println("当前工程路径为"+pathurl);
	 // 设置class文件所在根路径
	 // 例如/usr/java/classes下有一个test.App类，则/usr/java/classes即这个类的根路径，而.class文件的实际位置是/usr/java/classes/test/App.class
//	 File clazzPath = new File(System.getProperty("user.dir"));
	    File clazzPath = new File(pathurl);
	 // 记录加载.class文件的数量
	 int clazzCount = 0;

	 if (clazzPath.exists() && clazzPath.isDirectory()) {
	 	// 获取路径长度
	 	int clazzPathLen = clazzPath.getAbsolutePath().length() + 1;

	 	Stack<File> stack = new Stack<File>();
	 	stack.push(clazzPath);

	 	// 遍历类路径
	 	while (stack.isEmpty() == false) {
	 		File path = stack.pop();
	 		File[] classFiles = path.listFiles(new FileFilter() {
	 			public boolean accept(File pathname) {
	 				return pathname.isDirectory() || pathname.getName().endsWith(".class");
	 			}
	 		});
	 		for (File subFile : classFiles) {
	 			if (subFile.isDirectory()) {
	 				stack.push(subFile);
	 			} else {
//	 				if (clazzCount++ == 0) {
//	 					Method method = URLClassLoader.class.getDeclaredMethod("addURL", URL.class);
//	 					boolean accessible = method.isAccessible();
//	 					try {
//	 						if (accessible == false) {
//	 							method.setAccessible(true);
//	 						}
//	 						// 设置类加载器
//	 						URLClassLoader classLoader = (URLClassLoader) ClassLoader.getSystemClassLoader();
//	 						// 将当前类路径加入到类加载器中
//	 						method.invoke(classLoader, clazzPath.toURI().toURL());
//	 					} finally {
//	 						method.setAccessible(accessible);
//	 					}
//	 				}
	 				// 文件名称
	 				String className = subFile.getAbsolutePath();
	 				className = className.substring(clazzPathLen, className.length() - 6);
	 				className = className.replace(File.separatorChar, '.');
	 				if(!"".equals(className)&&className!=null){
		 				synchronized (blhmap) {
		 					blhmap.put(subFile.getName(), className);
		 				} 	 					
	 				}
			
	 				// 加载Class类
	 				//Class.forName(className);
	 				System.out.println("读取应用程序类文件[class={"+className+"}]");
	 			}
	 		}
	 	}
	 }    
	 application.setAttribute(this.MAP_BLH, blhmap);
	}

}
