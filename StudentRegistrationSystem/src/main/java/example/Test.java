package example;

import java.util.HashMap;

public class Test {
	public static void main(String[] args) {
		HashMap<Integer, String> map = new HashMap<Integer, String>();
		map.put(1, "hell");
		map.put(3, "no");
		System.out.println(map.containsKey(2));
	}
}
