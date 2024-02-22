package com.manhattan.excep;

public class InvalidIdException extends Exception {
	private String message;
	
	public InvalidIdException(String message)
	{
		this.message=message;
		System.err.println("Id not in database");
	}
	
	 public String toString() {
	        return message;
	    }
}
