package model;

import java.io.Serializable;
import java.sql.Date;

public class Order implements Serializable{
	private String codeOrder;
	private Customer customerID;
	private Customer address;
	private String status;
	private String paymentMethod;
	private Date orderDate;
	private Date deliveryDate;

	public Order() {
		super();
	}

	public Order(String codeOrder, Customer customerID, Customer address, String status, String paymentMethod,
			Date orderDate, Date deliveryDate) {
		super();
		this.codeOrder = codeOrder;
		this.customerID = customerID;
		this.address = address;
		this.status = status;
		this.paymentMethod = paymentMethod;
		this.orderDate = orderDate;
		this.deliveryDate = deliveryDate;
	}

	public String getCodeOrder() {
		return codeOrder;
	}

	public void setCodeOrder(String codeOrder) {
		this.codeOrder = codeOrder;
	}

	public Customer getCustomerID() {
		return customerID;
	}

	public void setCustomerID(Customer customerID) {
		this.customerID = customerID;
	}

	public Customer getAddress() {
		return address;
	}

	public void setAddress(Customer address) {
		this.address = address;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public Date getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

}
