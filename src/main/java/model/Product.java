package model;

import java.io.Serializable;
import java.sql.Date;

public class Product implements Serializable{
	private String fruitID;
	private String fruitName;
	private String origin;
	private Date fruitShelfLife;
	private double originalPrice;
	private double price;
	private int amount;
	private String detail;

	public Product() {
		super();
	}

	public Product(String fruitID, String fruitName, String origin, Date fruitShelfLife, double originalPrice,
			double price, int amount, String detail) {
		super();
		this.fruitID = fruitID;
		this.fruitName = fruitName;
		this.origin = origin;
		this.fruitShelfLife = fruitShelfLife;
		this.originalPrice = originalPrice;
		this.price = price;
		this.amount = amount;
		this.detail = detail;
	}

	public String getFruitID() {
		return fruitID;
	}

	public void setFruitID(String fruitID) {
		this.fruitID = fruitID;
	}

	public String getFruitName() {
		return fruitName;
	}

	public void setFruitName(String fruitName) {
		this.fruitName = fruitName;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public Date getFruitShelfLife() {
		return fruitShelfLife;
	}

	public void setFruitShelfLife(Date fruitShelfLife) {
		this.fruitShelfLife = fruitShelfLife;
	}

	public double getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(double originalPrice) {
		this.originalPrice = originalPrice;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

}
