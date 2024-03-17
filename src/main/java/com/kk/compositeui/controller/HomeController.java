package com.kk.compositeui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.kk.compositeui.model.RecommendationList;
import com.kk.compositeui.model.Stock;
import com.kk.compositeui.model.StockList;
import com.kk.compositeui.model.StockPrice;
import com.kk.compositeui.service.CompositeUIService;


@Controller
public class HomeController {
	
	@Autowired
	CompositeUIService compoService;
	
	@GetMapping("/rec")
	public String home(Model model) {
		return "index";
	}
	
	@GetMapping("/")
	public String rec(Model model) {
		
		RecommendationList recommendations = compoService.getRecommendation();
		model.addAttribute("recommendations", recommendations.getRecommendationList());
		return "index";
	}

}
