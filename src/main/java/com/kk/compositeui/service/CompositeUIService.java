package com.kk.compositeui.service;

import org.springframework.web.multipart.MultipartFile;

import com.kk.compositeui.model.RecommendationList;
import com.kk.compositeui.model.StockList;

public interface CompositeUIService {

	RecommendationList getRecommendation();

	StockList getStocks();

	void uploadFile(MultipartFile file);


}
