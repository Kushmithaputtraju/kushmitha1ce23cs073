package com.abstraction;

abstract class Shape{
	//contain both abstract and abstract methods
	//we can't create a object for abstract class
	abstract void draw();
	public void display() {
		System.out.println("This is diplay function");
	}
}

class Circle extends Shape{
	
	@Override
	void draw() {
		System.out.println("This is shape draw method");
	}
}
public class AbstractClass {
	public static void main(String[] args) {
		Circle circle=new Circle();
		circle.draw();
		circle.display();
		
	}

}
