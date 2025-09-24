package com.conditionalstatements;
import java.util.Scanner;
public class Assignment {
	    public static void main(String[] args) {
	        Scanner sc = new Scanner(System.in);

	        // Input three numbers
	        System.out.print("Enter first number: ");
	        int a = sc.nextInt();

	        System.out.print("Enter second number: ");
	        int b = sc.nextInt();

	        System.out.print("Enter third number: ");
	        int c = sc.nextInt();

	        // Find greatest
	        int greatest;

	        if (a >= b && a >= c) {
	            greatest = a;
	        } else if (b >= a && b >= c) {
	            greatest = b;
	        } else {
	            greatest = c;
	        }

	        // Output result
	        System.out.println("Greatest number is: " + greatest);
	        
	        sc.close();
	    }

}

