package com.com.point;

import java.util.HashMap;

public class OpenVO {
	private String url;
	private String requestMethod;
	private String host;
	private String auth;
	private HashMap<String, Object> map;
	private String access_token;
	
	
	public String getAccess_token() {
		return access_token;
	}
	public void setAccess_token(String access_token) {
		this.access_token = access_token;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getRequestMethod() {
		return requestMethod;
	}
	public void setRequestMethod(String requestMethod) {
		this.requestMethod = requestMethod;
	}
	public String getHost() {
		return host;
	}
	public void setHost(String host) {
		this.host = host;
	}
	public String getAuth() {
		return auth;
	}
	public void setAuth(String auth) {
		this.auth = auth;
	}
	public HashMap<String, Object> getMap() {
		return map;
	}
	public void setMap(HashMap<String, Object> map) {
		this.map = map;
	}

	


}
