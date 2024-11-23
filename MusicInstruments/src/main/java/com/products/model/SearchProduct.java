package com.products.model;

public class SearchProduct {
	
	private String name;
    private double price;
    private String status;
    private String description;
    private String image_url;

    public SearchProduct(String name, double price, String status,String description,String image_url ) {
    
        this.name = name;
        this.price = price;
        this.status = status;
        this.description = description;
        this.image_url = image_url;
        
    }
   

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public String getstatus() {
        return status;
    }
    
    public String getdescription() {
        return description;
    }

    public String getimage_url() {
        return image_url;
    }

}
