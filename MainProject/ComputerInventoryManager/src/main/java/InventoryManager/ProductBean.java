package InventoryManager;

public class ProductBean {
	private int id;
	private String product;
	private int noOfUnits;
	public ProductBean() {
		super();
	}
	
	public ProductBean(int id, String product, int noOfUnits) {
		super();
		this.id = id;
		this.product = product;
		this.noOfUnits = noOfUnits;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getNoOfUnits() {
		return noOfUnits;
	}
	public void setNoOfUnits(int noOfUnits) {
		this.noOfUnits = noOfUnits;
	}
}
