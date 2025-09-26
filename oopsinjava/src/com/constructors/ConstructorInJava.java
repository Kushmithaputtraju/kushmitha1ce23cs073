package com.constructors;
class Grandparent{
	public Grandparent() {
		System.out.println("Grandparent constructor");
	}
}
class Person extends Grandparent{
	int parent_Id = 20;
	public Person() {
		System.out.println("person constructor");
	}	
}
class Student extends Person{
	public int id;
	public String name;
	public Student(int id, String name) {
		this.id = id;
		this.name = name;
	}
	public Student(int id) {
		super();
		System.out.println(super.parent_Id);
		this.id = id;
	}
}

public class ConstructorInJava {
	public static void main(String[] args) {
		Student s1=new Student(101,"kushi");
		Student s2=new Student(101);
		
		System.out.println("First Student:");
		System.out.println("Id:"+s1.id);
		System.out.println("Name:"+s1.name);
		
		System.out.println("Second Student:");
		System.out.println("Id:"+s2.id);
		System.out.println("Name:"+s2.name);	
	}
}


