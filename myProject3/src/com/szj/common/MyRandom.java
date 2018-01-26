package com.szj.common;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;


public class MyRandom {

	/**
	 * @author SueZhiJun
	 * @date 2017年11月26日 下午1:41:01 
	 * @Description (n,m) == SSS+产生随机n位数 验证码+ss <br/>
	 * (n,0) == 产生随机n位数 <br/>
	 * (n,1) == SSS + 产生随机n位数 <br/>
	 * (n,2) == 产生随机n位数  + ss <br/>
	 */
	public static String yzm(int num,int kind) {
		String[] code = { "q", "A", "B", "2", "C", "D", "E", "6", "G", "H",
				"J", "z", "K", "L", "M", "P", "u", "4", "Q", "R", "p", "S",
				"T", "9", "U", "V", "5", "W", "s", "X", "Y", "7", "Z", "a",
				"b", "8", "c", "d", "e", "f", "g", "h", "j", "k", "m", "n",
				"r", "t", "v", "w", "x", "y", "3", "F", "N" };

		Random random = new Random();
		StringBuilder yzm = new StringBuilder(); // 动态字符串
		int count = 1;
		while (count <= num) { // 抽取5个作为验证码
			// 随机产生一个下标，通过下标取出字符串数组中对应的内容
			String cc = code[random.nextInt(code.length)];
			if ( -1 ==yzm.indexOf("" + cc)) { // 【注意】"C" 与 C+"" 不同
				yzm.append(cc);
				count++;
			}
		}
		String SSS = new SimpleDateFormat("SSS").format(new Date());
		String ss = new SimpleDateFormat("ss").format(new Date());
		
		if(kind==0){
			return yzm.toString();
		}else if(kind==1){
			return SSS + yzm.toString();
		}else if(kind==2){
			return yzm.toString() + ss;
		}else {	
			return SSS+yzm.toString() + ss;
		}
	
	}

}
