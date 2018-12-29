package com.cebrail.boot.ajax.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	List<Student> list = new ArrayList<>();

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public @ResponseBody List<Student> save(@RequestBody Student st) {
		list.add(st);
		st.print();
		return list;

	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public  @ResponseBody List<Student> search(@RequestParam String name) {
		 List<Student> result = list.stream()
	                .filter(p -> p.getName().toLowerCase().contains(name.toLowerCase()))
	                .map(p -> new Student(p.getName(), p.getSurname(), p.getNumber()))
	                .collect(Collectors.toList());
		return result;

	}


}
