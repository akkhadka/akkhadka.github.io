package io.github.akkhadka.webstore.model;

public class Product {
    private int productId ;
    private String name ;
    private String description ;
    private double price ;
    private String category ;

    public Product(int id,String name, String description, double price, String category) {
        this.productId=id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.category = category;
    }

    public int getProductId() {
        return productId;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public double getPrice() {
        return price;
    }

    public String getCategory() {
        return category;
    }
}
