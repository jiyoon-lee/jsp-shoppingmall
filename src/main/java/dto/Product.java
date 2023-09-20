package dto;

import java.io.Serializable;

public class Product implements Serializable {

	private static final long serialVersionUID = 5172686590827527119L;

	private String productId; // 상품 아이디
	private String pname; // 상품명
	private Integer unitPrice; // 상품 가격
	private String description; // 상품 설명
	private String manufacturer; // 제조사
	private String category; // 분류
	private long unitsInStock; // 재고 수
	private String condition; // 신상품 or 중고품 or 재생품
	private String filename; // 이미지 파일명
	private int quantity;
	



	public Product() { super(); }
	
	public Product(String productId, String name, Integer unitPrice) {
		this.productId = productId;
		this.pname = name;
		this.unitPrice = unitPrice;
	}
	
	public String getProductId() { return productId; }
	public String getPname() { return pname; }
	public Integer getUnitPrice() { return unitPrice; }
	public String getDescription() { return description; }
	public String getManufacturer() { return manufacturer; }
	public String getCategory() { return category; }
	public long getUnitsInStock() { return unitsInStock; }
	public String getCondition() { return condition; }
	public String getFilename() { return filename; }
	public int getQuantity() { return quantity; }	

	public void setProductId(String productId) { this.productId = productId; }
	public void setPname(String pname) { this.pname = pname; }
	public void setUnitPrice(Integer unitPrice) { this.unitPrice = unitPrice; }
	public void setDescription(String description) { this.description = description; }
	public void setManufacturer(String manufacturer) { this.manufacturer = manufacturer; }
	public void setCategory(String category) { this.category = category; }
	public void setUnitsInStock(long unitsInStock) { this.unitsInStock = unitsInStock; }
	public void setCondition(String condition) { this.condition = condition; }
	public void setFilename(String filename) { this.filename = filename; }
	public void setQuantity(int quantity) { this.quantity = quantity; }
	
}
