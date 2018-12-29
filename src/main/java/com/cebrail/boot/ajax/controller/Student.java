package com.cebrail.boot.ajax.controller;

public class Student {
	private String name;
	private String surname;
	private String number;

	public Student() {

	}

	public Student(String name, String surname, String number) {
		this.name = name;
		this.surname = surname;
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public void print() {
		System.out.println(name + " - " + surname);
	}

}
