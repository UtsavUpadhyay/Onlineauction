package bean;

public class Itembean {
	 String name,description,closeson,addedon,category,seller;
	 int id,initprice,highestbid;
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public String getAddedon() {
		return addedon;
	}
	public void setAddedon(String addedon) {
		this.addedon = addedon;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCloseson() {
		return closeson;
	}
	public void setCloseson(String closeson) {
		this.closeson = closeson;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getInitprice() {
		return initprice;
	}
	public void setInitprice(int initprice) {
		this.initprice = initprice;
	}
	public int getHighestbid() {
		return highestbid;
	}
	public void setHighestbid(int highestbid) {
		this.highestbid = highestbid;
	}

}
