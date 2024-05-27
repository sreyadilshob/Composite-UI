package com.kk.compositeui.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.services.s3.AmazonS3;
import com.kk.compositeui.model.RecommendationList;
import com.kk.compositeui.model.StockList;


@Service
public class CompositeUIServiceImpl implements CompositeUIService {
	
	@Autowired
	RestTemplate restTemplate;

	@Value("${url.recom.api}")
	private String recomAPIUrl;
	
	@Value("${url.stock.api}")
	private String stockAPIUrl;
	
	@Value("${aws.s3.bucket}")
    private String bucketName;
	
	@Autowired
	private AmazonS3 amazonS3;
	
	@Override
	public RecommendationList getRecommendation() {
		RecommendationList recommendations = restTemplate.getForObject(recomAPIUrl, RecommendationList.class);	
		return recommendations;
	}

	@Override
	public StockList getStocks() {
	    StockList stocks =restTemplate.getForObject(stockAPIUrl, StockList.class);	
		return stocks;
	}

	@Override
	public void uploadFile(MultipartFile mfile) {
		final File file = convertMultiPartFileToFile(mfile);
		// amazonS3.putObject(bucketName, bucketName, file) 
	      uploadFileToS3Bucket(bucketName, file);
		
	}

	private void uploadFileToS3Bucket(String bucketName, File file) {
		 final String uniqueFileName = LocalDateTime.now() + "_" + file.getName();
		// final PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName, uniqueFileName, file);
		 System.out.println("############"+uniqueFileName);
		// amazonS3.putObject(putObjectRequest);
		 amazonS3.putObject(bucketName, uniqueFileName, file);
		 
	}
 
	private File convertMultiPartFileToFile(MultipartFile file) {
		File convFile = new File( file.getOriginalFilename() );
	
		 try {
		    
		    FileOutputStream fos = new FileOutputStream( convFile );
			fos.write( file.getBytes() );
			fos.close();
		 }
	 	 catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return convFile;
	}

}
