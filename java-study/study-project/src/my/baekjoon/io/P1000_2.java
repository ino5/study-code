package my.baekjoon.io;

import java.io.*;
import java.util.*;

public class P1000_2 {
	public static void main(String[] args) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		StringTokenizer st = new StringTokenizer(br.readLine());
		
		int a = Integer.parseInt(st.nextToken()); 
		int b = Integer.parseInt(st.nextToken());
		System.out.print(a+b);
		
		br.close();
	}
}
