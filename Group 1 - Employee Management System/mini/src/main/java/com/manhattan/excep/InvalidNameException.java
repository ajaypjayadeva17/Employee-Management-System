package com.manhattan.excep;


public class InvalidNameException extends Exception {

	private String message;
	
	public InvalidNameException(String message)
	{
		this.message=message;
		System.err.println("name not in database");
	}
	
	 public String toString() {
	        return message;
	    }
}
