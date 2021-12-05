package air;

public class BookingClass {
 int clothes_id,customer_id;
 String booked_date;
public BookingClass() {
	super();
}

public BookingClass(int clothes_id, int customer_id, String booked_date) {
	super();
	this.clothes_id = clothes_id;
	this.customer_id = customer_id;
	this.booked_date = booked_date;
}

public int getClothes_id() {
	return clothes_id;
}
public void setClothes_id(int clothes_id) {
	this.clothes_id = clothes_id;
}
public int getCustomer_id() {
	return customer_id;
}
@Override
public String toString() {
	return "BookingClass [clothes_id=" + clothes_id + ", customer_id=" + customer_id + ", booked_date=" + booked_date
			+ "]";
}

public void setCustomer_id(int customer_id) {
	this.customer_id = customer_id;
}
public String getBooked_date() {
	return booked_date;
}
public void setBooked_date(String booked_date) {
	this.booked_date = booked_date;
}


}
 

