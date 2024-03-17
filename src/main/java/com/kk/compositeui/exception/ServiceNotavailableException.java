package com.kk.compositeui.exception;

public class ServiceNotavailableException extends RuntimeException {
	private String message;

	public ServiceNotavailableException(String message) {
		this.message = message;
	}

	public String getMessage() {
		return message;
	}
}
