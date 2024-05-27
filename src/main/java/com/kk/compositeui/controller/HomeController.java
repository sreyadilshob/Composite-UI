package com.kk.compositeui.controller;

import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kk.compositeui.model.Recommendation;
import com.kk.compositeui.model.RecommendationList;
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
		System.out.println("HEREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE");
		RecommendationList recommendations = compoService.getRecommendation();
		for (Recommendation rcom : recommendations.getRecommendationList()) {

			List<StockPrice> updPrices = rcom.getStock().getStockPrices().stream().sorted(Comparator.comparing(StockPrice::getDate).reversed())
					.limit(10).collect(Collectors.toList());
			rcom.getStock().setStockPrices(updPrices);

		}
		model.addAttribute("recommendations", recommendations.getRecommendationList());
		return "index";
	}

}
