package io.github.akkhadka.webstore.service;

import io.github.akkhadka.webstore.model.Product;
import io.github.akkhadka.webstore.model.ProductRepository;
import io.github.akkhadka.webstore.repository.FakeProductRepository;

import java.util.List;

public class ProductServiceImpl implements ProductService {
    private ProductRepository productRepository;
    public ProductServiceImpl(){
        productRepository = new FakeProductRepository();
    }
    @Override
    public List<Product> getProducts() {
        return productRepository.findAll();
    }
}
