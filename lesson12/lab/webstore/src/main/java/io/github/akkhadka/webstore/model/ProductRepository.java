package io.github.akkhadka.webstore.model;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();
    Product find(int id);
}
