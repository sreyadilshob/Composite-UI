package com.kk.compositeui.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
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

}
