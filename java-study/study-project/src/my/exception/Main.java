package my.exception;

public class Main {

	static void method1() {
		try {
			method2();
		} catch (Exception e) {
			System.out.print("caused by: ");
			e.printStackTrace();
			throw new RuntimeException();
		}
	}

	static void method2() {
		try {
			method3();
		} catch (Exception e) {
			System.out.print("caused by: ");
			e.printStackTrace();
			throw new NullPointerException();
		}

	}

	static void method3() throws Exception {
		System.out.println(1 / 0);
	}

	public static void main(String[] args) {
		method1();
	}
}
