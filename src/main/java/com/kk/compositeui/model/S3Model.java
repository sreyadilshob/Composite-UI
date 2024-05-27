package com.kk.compositeui.model;

import java.io.InputStream;

import com.amazonaws.services.s3.S3ClientOptions;
import com.amazonaws.services.s3.model.PutObjectRequest;

public class S3Model {
	

	private static final String BUCKET = "doc-stock-recommendation";
	
	public static void uploadFile(String fileName, InputStream inputStream) {
		S3ClientOptions client = S3ClientOptions.builder().build();
		PutObjectRequest request = new PutObjectRequest(BUCKET, fileName, fileName);
		
		
	}

}
