package io.github.akkhadka.webstore.repository;

import io.github.akkhadka.webstore.model.Product;
import io.github.akkhadka.webstore.model.ProductRepository;

import java.util.ArrayList;
import java.util.List;

public class FakeProductRepository implements ProductRepository {
    private static List<Product> products;

    public FakeProductRepository() {
        if (products == null) {
            synchronized (FakeProductRepository.class) {
                products = new ArrayList<Product>();
                products.add(new Product(1,"FootBall","Primium football and high quality",25,"soccer"));
                products.add(new Product(2,"Human Chess Board","A fun game for the family",10,"chess"));
                products.add(new Product(3,"Kayak","A boat for one person",30,"watersports"));
            }

        }

    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public Product find(int id) {
        return products.stream().filter(x->x.getProductId()==id).findFirst().orElse(null);
    }
}
