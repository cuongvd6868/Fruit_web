package model;

public class OrderDetail {
	private String codeOrderDetail;
	private Order codeOrder;
	private Product fruitID;
	private int amount;
	private double orderSellingPrice;
	private double vat;
	private double total;

	public OrderDetail() {
		super();
	}

	public OrderDetail(String codeOrderDetail, Order codeOrder, Product fruitID, int amount, double orderSellingPrice,
			double vat, double total) {
		super();
		this.codeOrderDetail = codeOrderDetail;
		this.codeOrder = codeOrder;
		this.fruitID = fruitID;
		this.amount = amount;
		this.orderSellingPrice = orderSellingPrice;
		this.vat = vat;
		this.total = total;
	}

	public String getCodeOrderDetail() {
		return codeOrderDetail;
	}

	public void setCodeOrderDetail(String codeOrderDetail) {
		this.codeOrderDetail = codeOrderDetail;
	}

	public Order getCodeOrder() {
		return codeOrder;
	}

	public void setCodeOrder(Order codeOrder) {
		this.codeOrder = codeOrder;
	}

	public Product getFruitID() {
		return fruitID;
	}

	public void setFruitID(Product fruitID) {
		this.fruitID = fruitID;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public double getOrderSellingPrice() {
		return orderSellingPrice;
	}

	public void setOrderSellingPrice(double orderSellingPrice) {
		this.orderSellingPrice = orderSellingPrice;
	}

	public double getVat() {
		return vat;
	}

	public void setVat(double vat) {
		this.vat = vat;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

}
