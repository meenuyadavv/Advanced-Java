package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DemoController 
{
	//http://localhost:8080/controller-demo/m1
	@RequestMapping("/m1")
	public String method1()
	{
		System.out.println("First handler called...");
		return "aa";
	}
	//http://localhost:8080/controller-demo/m2
	@RequestMapping("/m2")
	public String method2()
	{
		System.out.println("Second handler called...");
		return "bb";
	}
	//http://localhost:8080/controller-demo/m3
	@RequestMapping("/m3")
	public String method3()
	{
		System.out.println("Third handler called...");
		return "cc";
	}
}
