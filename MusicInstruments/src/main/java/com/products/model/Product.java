package com.products.model;


public class Product {
    private String id;
    private String name;
    private String status;
    private String price;
    private int quantity;
    private String category;

    // Default constructor
    public Product() {}

    // Constructor with all fields
    public Product(String id, String name, String status, String price, int quantity, String category) {
        this.id = id;
        this.name = name;
        this.status = status;
        this.price = price;
        this.quantity = quantity;
        this.category = category;
    }

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getstatus() {
        return status;
    }

    public void setstatus(String description) {
        this.status = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    
    
}