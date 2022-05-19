package InventoryManager;

public class SalesReportBean {
	private int id;
	private String product;
	private int salePercentage;

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

	public int getSalePercentage() {
		return salePercentage;
	}

	public void setSalePercentage(int salePercentage) {
		this.salePercentage = salePercentage;
	}

	public SalesReportBean(int id, String product, int salePercentage) {
		super();
		this.id = id;
		this.product = product;
		this.salePercentage = salePercentage;
	}

}

