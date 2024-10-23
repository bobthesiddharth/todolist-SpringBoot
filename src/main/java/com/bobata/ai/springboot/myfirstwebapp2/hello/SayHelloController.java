package com.bobata.ai.springboot.myfirstwebapp2.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class SayHelloController {
		//"say-hello" => "ssup there ??"
	
	@RequestMapping("say-hello")
	@ResponseBody
	public String sayHello() {
		return "Hello!! what are you learning today ??";
	}
	
	@RequestMapping("say-hello-html")
	@ResponseBody
	public String sayHelloHtml() {
		return "<h1>Hello from HTML</h1>";
	}
	
	@RequestMapping("say-hello-jsp")
	public String sayHelloJsp() {
		return "sayHello";
	}
}
