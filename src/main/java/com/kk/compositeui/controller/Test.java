package com.kk.compositeui.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.kk.compositeui.service.CompositeUIService;

@RequestMapping("/file")
@RestController
public class Test {
	
	@Autowired
	CompositeUIService awsService;
	
	@Value("${spring.variable.constant}")
	String var;

    @PostMapping("/upload")
    public ResponseEntity<Map<String, String>> saveFile(@RequestParam(value = "file") MultipartFile file) {

        Map<String, String> map = new HashMap<>();
        System.out.println("####@@@@@@@@@@@####"+file.getName());

        if (file != null) {
            map.put("fileName", file.getOriginalFilename());
            map.put("fileSize", " " + file.getSize()); 
            map.put("fileContentType", file.getContentType());
            map.put("message", "File upload done");
        } else {
            map.put("message", "No file uploaded");
        }
       
        awsService.uploadFile(file);
       
        

        return ResponseEntity.ok(map);
    }
    
    @GetMapping("/message")
    String getMessages() {
    	return "Hello "+var;
    }
}
