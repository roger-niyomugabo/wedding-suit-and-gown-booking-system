package air;

public class ClothesClass {
	String clothes_type,clothes_image,clothes_description,clothes_price,clothes_id;

	public ClothesClass() {
		super();
	}

	public ClothesClass(String clothes_type, String clothes_image, String clothes_description, String clothes_price,
			String clothes_id) {
		super();
		this.clothes_type = clothes_type;
		this.clothes_image = clothes_image;
		this.clothes_description = clothes_description;
		this.clothes_price = clothes_price;
		this.clothes_id = clothes_id;
	}

	public ClothesClass(String clothes_type, String clothes_image, String clothes_description, String clothes_price) {
		super();
		this.clothes_type = clothes_type;
		this.clothes_image = clothes_image;
		this.clothes_description = clothes_description;
		this.clothes_price = clothes_price;
	}

	public String getClothes_type() {
		return clothes_type;
	}

	public void setClothes_type(String clothes_type) {
		this.clothes_type = clothes_type;
	}

	public String getClothes_image() {
		return clothes_image;
	}

	public void setClothes_image(String clothes_image) {
		this.clothes_image = clothes_image;
	}

	public String getClothes_description() {
		return clothes_description;
	}

	public void setClothes_description(String clothes_description) {
		this.clothes_description = clothes_description;
	}

	public String getClothes_price() {
		return clothes_price;
	}

	public void setClothes_price(String clothes_price) {
		this.clothes_price = clothes_price;
	}

	public String getClothes_id() {
		return clothes_id;
	}

	public void setClothes_id(String clothes_id) {
		this.clothes_id = clothes_id;
	}
	

}
