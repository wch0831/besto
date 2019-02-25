package com.com.point;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.Gson;

public class RequestUtil {
	 
	public void printHttpHeaderInfo(HttpServletRequest request) {
		//###request.getHeaders("Authorization: Bearer")
		Map<String, String> map = new HashMap<String, String>();
		Enumeration headerNames = request.getHeaderNames();
		while (headerNames.hasMoreElements()) {
		    String key = (String) headerNames.nextElement();
		    String value = request.getHeader(key);
		    map.put(key, value);
		    System.out.println(key + "," + value);
		}
	}
	
	public String sendGet(String url) {
		StringBuffer buffer = new StringBuffer();
		BufferedReader br = null;
		try { 
		    URL obj = new URL(url);
		    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
		    conn.setRequestMethod( "GET" );
			conn.setRequestProperty( "Content-Type", "application/x-www-form-urlencoded"); 
			conn.setRequestProperty("Accept-Charset", "UTF-8");
			conn.setRequestProperty( "charset", "utf-8");
			conn.setDoOutput( true );
			conn.setInstanceFollowRedirects( false );
			conn.setUseCaches( false );
	
		    br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		    String inputLine;
		    while ((inputLine = br.readLine()) != null) {
		    	buffer.append(inputLine);
		    }
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return buffer.toString();
	}
	
	public String sendPost(String url, HashMap<String, Object> paramMap) {
		StringBuffer buffer = new StringBuffer();
		BufferedReader br = null;
		
		try { 
			URL obj = new URL(url);
		    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
			conn.setRequestMethod("POST" );
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded"); 
			conn.setRequestProperty("Accept-Charset", "UTF-8");
			conn.setRequestProperty("charset", "utf-8");
			conn.setDoOutput( true );
			conn.setInstanceFollowRedirects( false );
			conn.setUseCaches( false );
			
			//POST :  param을 body에 담아 보낸다. ---------------
			StringBuffer paramBuffer = new StringBuffer();
			for (Map.Entry<String,Object> map : paramMap.entrySet()) {
	            if (paramBuffer.length() != 0) paramBuffer.append('&');
	            paramBuffer.append(map.getKey());
	            paramBuffer.append('=');
	            paramBuffer.append(String.valueOf(map.getValue()));
	        }
			byte[] postDataBytes = paramBuffer.toString().getBytes("UTF-8");
	        conn.setRequestProperty( "Content-Length", Integer.toString( postDataBytes.length ));
			try( DataOutputStream wr = new DataOutputStream( conn.getOutputStream())) {
			   wr.write( postDataBytes );
			}
			
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		    String inputLine;
		    while ((inputLine = br.readLine()) != null) {
		    	buffer.append(inputLine);
		    }
		    
		} catch (IOException e) {
			e.printStackTrace();
		}
		return buffer.toString();
	}
	
	public  HashMap<String, Object> sendGetReturnMap(String url) {
		StringBuffer buffer = new StringBuffer();
		BufferedReader br = null;
		HashMap<String, Object> responseMap = new HashMap<String, Object>();
		Gson gson = new Gson();
		try { 
		    URL obj = new URL(url);
		    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
		    conn.setRequestMethod( "GET" );
			conn.setRequestProperty( "Content-Type", "application/x-www-form-urlencoded"); 
			conn.setRequestProperty("Accept-Charset", "UTF-8");
			conn.setRequestProperty( "charset", "utf-8");
			conn.setDoOutput( true );
			conn.setInstanceFollowRedirects( false );
			conn.setUseCaches( false );
	
		    br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		    String inputLine;
		    while ((inputLine = br.readLine()) != null) {
		    	buffer.append(inputLine);
		    }
		    
		    responseMap = gson.fromJson(buffer.toString(), responseMap.getClass());
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return responseMap;
	}
	
	
	public HashMap<String, Object> sendPostReturnMap(String url, HashMap<String, Object> paramMap, String access_token) {
		StringBuffer buffer = new StringBuffer();
		BufferedReader br = null;
		HashMap<String, Object> responseMap = new HashMap<String, Object>();
		Gson gson = new Gson();

		try { 
			URL obj = new URL(url);
		    HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
			conn.setRequestMethod("POST" );
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded;charset=utf-8"); 
//			conn.setRequestProperty("Accept-Charset", "UTF-8");
//			conn.setRequestProperty("charset", "utf-8");
			conn.setDoOutput( true );
			conn.setInstanceFollowRedirects( false );
			conn.setUseCaches( false );
			//conn.setRequestProperty("Authorization", "KakaoAK cafe4190cbe17164b929dce86ab5ff0f");  // KakaoAK {admin_key}
			conn.setRequestProperty("Authorization", "Bearer "+access_token);
			conn.setRequestProperty( "Accept", "*/*" );
			
			
			//POST :  param을 body에 담아 보낸다. ---------------
			StringBuffer paramBuffer = new StringBuffer();
			for (Map.Entry<String,Object> map : paramMap.entrySet()) {
	            if (paramBuffer.length() != 0) paramBuffer.append('&');
	            paramBuffer.append(map.getKey());
	            paramBuffer.append('=');
	            paramBuffer.append(String.valueOf(map.getValue()));
	        }
			System.out.println(paramBuffer.toString());
			byte[] postDataBytes = paramBuffer.toString().getBytes("UTF-8");
	        conn.setRequestProperty( "Content-Length", Integer.toString( postDataBytes.length ));
	        conn.getOutputStream().write(postDataBytes);
//			try( DataOutputStream wr = new DataOutputStream( conn.getOutputStream())) {
//			   wr.write( postDataBytes );
//			}
			
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		    String inputLine;
		    while ((inputLine = br.readLine()) != null) {
		    	buffer.append(inputLine);
		    }
		    
		    responseMap = gson.fromJson(buffer.toString(), responseMap.getClass());
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println(buffer.toString());
		return responseMap;
	}
	
}
