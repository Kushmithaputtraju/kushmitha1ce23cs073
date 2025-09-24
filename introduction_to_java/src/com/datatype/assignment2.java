package com.datatype;

import java.util.Scanner;

public class assignment2 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Problem 1: Student Details
        System.out.println("=== Student Details Input ===");
        System.out.print("Enter Student ID: ");
        int studentId = sc.nextInt();
        sc.nextLine(); // consume leftover newline

        System.out.print("Enter Name: ");
        String studentName = sc.nextLine();

        System.out.print("Enter Age: ");
        int age = sc.nextInt();

        System.out.print("Enter Grade: ");
        char grade = sc.next().charAt(0);

        System.out.println("\n--- Student Details ---");
        System.out.println("Student ID : " + studentId);
        System.out.println("Name       : " + studentName);
        System.out.println("Age        : " + age);
        System.out.println("Grade      : " + grade);

        // Problem 2: Employee Details
        System.out.println("\n=== Employee Details Input ===");
        System.out.print("Enter Employee ID: ");
        int empId = sc.nextInt();
        sc.nextLine(); // consume leftover newline

        System.out.print("Enter Name: ");
        String empName = sc.nextLine();

        System.out.print("Enter Department: ");
        String department = sc.nextLine();

        System.out.print("Enter Salary: ");
        double salary = sc.nextDouble();

        System.out.println("\n--- Employee Details ---");
        System.out.println("Employee ID : " + empId);
        System.out.println("Name        : " + empName);
        System.out.println("Department  : " + department);
        System.out.println("Salary      : " + salary);

        sc.close();
    }
}