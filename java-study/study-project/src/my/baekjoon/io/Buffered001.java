package my.baekjoon.io;

import java.io.*;
import java.util.*;

public class Buffered001 {
	public static void main(String[] args) throws Exception {
		//Construction Buffered objects
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		
		//Input
		int N = Integer.parseInt(br.readLine());
		StringTokenizer st = new StringTokenizer(br.readLine());
		
		//Save
		int[] arr = new int[N];
		for (int i = 0; i < N; i++) {
			arr[i] = Integer.parseInt(st.nextToken());
		}
		
		//Output
		for (int i = 0; i < N; i++) {
			bw.write(Integer.toString(arr[i]));
			bw.newLine();
			bw.flush();
		}
		
		//close()
		br.close();
		bw.close();
		
	}
}
