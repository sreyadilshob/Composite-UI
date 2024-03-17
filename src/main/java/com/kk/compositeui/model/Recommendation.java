package com.kk.compositeui.model;

import java.util.Date;

public class Recommendation {
	Long id;
	Long stockId;
	String callType;
	Date startDate;
	Long startPrice;
	Date targetDate;
	Long targetPrice;
	Long stopLossPrice;
	String channel;
	Date currDate;
	String status;
	Long returnPercentage;
	boolean completed;
	
	Stock stock;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getStockId() {
		return stockId;
	}

	public void setStockId(Long stockId) {
		this.stockId = stockId;
	}

	public String getCallType() {
		return callType;
	}

	public void setCallType(String callType) {
		this.callType = callType;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Long getStartPrice() {
		return startPrice;
	}

	public void setStartPrice(Long startPrice) {
		this.startPrice = startPrice;
	}

	public Date getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(Date targetDate) {
		this.targetDate = targetDate;
	}

	public Long getTargetPrice() {
		return targetPrice;
	}

	public void setTargetPrice(Long targetPrice) {
		this.targetPrice = targetPrice;
	}

	public Long getStopLossPrice() {
		return stopLossPrice;
	}

	public void setStopLossPrice(Long stopLossPrice) {
		this.stopLossPrice = stopLossPrice;
	}

	public String getChannel() {
		return channel;
	}

	public void setChannel(String channel) {
		this.channel = channel;
	}

	public Date getCurrDate() {
		return currDate;
	}

	public void setCurrDate(Date currDate) {
		this.currDate = currDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getReturnPercentage() {
		return returnPercentage;
	}

	public void setReturnPercentage(Long returnPercentage) {
		this.returnPercentage = returnPercentage;
	}

	public boolean isCompleted() {
		return completed;
	}

	public void setCompleted(boolean isCompleted) {
		this.completed = isCompleted;
	}
	public Stock getStock() {
		return stock;
	}

	public void setStock(Stock stock) {
		this.stock = stock;
	}

}
