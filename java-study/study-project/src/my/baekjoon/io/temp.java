package my.baekjoon.io;

import java.io.*;
import java.util.*;

public class temp {
	public static void main(String[] args) throws Exception{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		StringTokenizer st = new StringTokenizer(br.readLine());
		
		while(st.countTokens()>0) {
			bw.write(st.nextToken());
			bw.flush();
			
			bw.newLine();
		}
		
		br.close();
		bw.close();
	}
}