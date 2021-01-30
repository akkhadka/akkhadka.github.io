package io.github.akkhadka.webstore.service;

import io.github.akkhadka.webstore.model.User;

public interface UserService {
    User find(String id);
    void signUp(User user);
}
