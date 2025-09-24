package com.loop;

import java.util.Scanner;

public class WhileLoop {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		System.out.println("enter a number:");
		int size = sc.nextInt();
		if(size<=0) {
			System.out.println("invalid number");
		}
		int i=1;
		while (size<5) {
			if(i%2==0) {
				System.out.println(i+ "even");
			}else {
				System.out.println(i+ "odd");
			}i++;
		}
	}

}

