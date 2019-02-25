package com.com.member;

public class RandomPw {
	
	public String newpw() {
		
		int rnum1 = (int)(Math.random() *10);
        int rnum2 = (int)(Math.random() *10);
        int rnum3 = (int)(Math.random() *10);
        int rnum4 = (int)(Math.random() *10);
        
        String newPw = ""+rnum1+rnum2+rnum3+rnum4;
        
		return newPw;
	}

}
