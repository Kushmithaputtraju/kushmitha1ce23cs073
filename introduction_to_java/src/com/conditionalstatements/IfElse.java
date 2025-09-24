package com.conditionalstatements;

import java.util.Scanner;

public class IfElse {
	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		int userInput;
		System.out.println("enter a number:");
		userInput = sc.nextInt();
	if(userInput% 2 == 0) {
		System.out.println("Even number");
	} else {
		System.out.println("odd number");
		}
		
	}
}


