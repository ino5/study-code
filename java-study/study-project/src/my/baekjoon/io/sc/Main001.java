package my.baekjoon.io.sc;

import java.util.Scanner;

public class Main001 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		final int N = sc.nextInt();
		int[] arr = new int[N];
		for(int i = 0; i<N; i++) {
			arr[i] = sc.nextInt();
		}
		for(int num : arr) {
			System.out.println(num);
		}
		
		
		sc.close();
	}
}
