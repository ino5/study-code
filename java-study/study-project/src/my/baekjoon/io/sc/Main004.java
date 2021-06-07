package my.baekjoon.io.sc;

import java.util.Scanner;

public class Main004 {
	public static void main(String[] args) {
		String a = "23\nasd\nbc\n";
		Scanner sc = new Scanner(a);
		System.out.print(sc.nextInt());
		String b = sc.nextLine();
		System.out.print(b);
		System.out.print(sc.nextLine());
		System.out.print(sc.nextLine());
		
		System.out.println(b.equals(""));
		sc.close();
	}
}
