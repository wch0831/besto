package com.com.com;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;




public class NewsCraw {
   
      public static void makeFakeCertAndSSLSetting() throws NoSuchAlgorithmException, KeyManagementException {
           
         TrustManager[] trustAllCerts = new TrustManager[] { new X509TrustManager() {
              
               public X509Certificate[] getAcceptedIssuers() {
                   return null;
               }
               public void checkClientTrusted(X509Certificate[] certs, String authType) {
               }
               public void checkServerTrusted(X509Certificate[] certs, String authType) {
               }
           } 
         };
         
           SSLContext sc = SSLContext.getInstance("SSL");
           sc.init(null, trustAllCerts, new SecureRandom());
           HttpsURLConnection.setDefaultHostnameVerifier(
               new HostnameVerifier() {
                   @Override
                   public boolean verify(String hostname, SSLSession session) {
                       return true;
                   }
               }
           );
}
      
//      public static void main(String[] a) {
//    	  NewsCraw c = new NewsCraw();
//    	  ArrayList<NewsVO> list = c.newsCrawling("http://www.yonhapnews.co.kr/sports/1003000001.html","#content > div.contents > div.contents01 > div > div.headlines.headline-list > ul > li.section02",10);
//    	  //return list
////		  for(NewsVO vo : list) {
////			  System.out.println(vo.getTitle());
////		  }
//      }
      
   public ArrayList<NewsVO> newsCrawling(String url, String selector, int topn) {
      
      if(url.indexOf("https://") >= 0){
            try {
				makeFakeCertAndSSLSetting();  //ssl
			} catch (KeyManagementException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
      
      
      //크롤링 하는 싸이트의 주소 구하기:http://www.naver.com:8088
      //http://www.naver.com:8088/aa/bb/index.html
      //https://www.naver.com/aa/bb/index.html
      //siteURl + /imgs/aa.jpg
      String siteURL = "";
      try {
      	siteURL += new URL(url).getProtocol() +"://"+ new URL(url).getHost();
      	if(new URL(url).getPort() != -1)
      		siteURL +=  ":"+ new URL(url).getPort();	
		} catch (MalformedURLException e1) {
			e1.printStackTrace();
		}

      
      Connection.Response response;
      
      ArrayList<NewsVO> list = new ArrayList<NewsVO>();
      try {
         response = Jsoup.connect(url)
               .method(Connection.Method.GET)
               .execute();

         System.out.println(response.statusMessage());
         System.out.println(response.statusCode());

         Document html = response.parse();

         Elements elms = html.select(selector);
         
         int loopCnt=0;  
         if(topn == -1) {
        	 loopCnt = elms.size();
         }else {
        	 loopCnt = topn;
         }

//         for(Element elm : elms) {
         for(int i=0; i<loopCnt; i++) {
        	Element elm = elms.get(i);
        	NewsVO vo  = new NewsVO();
        	
        	
        	
            Elements atagTitle = elm.select("div strong a");
            vo.setUrl(atagTitle.attr("href"));
            vo.setTitle(atagTitle.text());
            
            Elements photos = elm.select("div p.poto a img");
            vo.setPicsrc(photos.attr("src"));
            
            Elements info = elm.select("div p.lead a");
            vo.setInfo(info.text());
            
            Elements address = elm.select("div p.lead span");
            vo.setAddress(address.text());
          
            list.add(vo);
         }
         

      } catch (IOException e) {
         e.printStackTrace();
      }
      return list;
   }

   
   
}