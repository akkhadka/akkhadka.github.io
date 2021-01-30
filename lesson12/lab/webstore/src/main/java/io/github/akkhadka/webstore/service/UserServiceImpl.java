package io.github.akkhadka.webstore.service;

import io.github.akkhadka.webstore.model.User;
import io.github.akkhadka.webstore.model.UserRepository;
import io.github.akkhadka.webstore.repository.FakeUserRepository;

public class UserServiceImpl implements UserService {
    UserRepository userRepository;

    public UserServiceImpl(){
        userRepository = new FakeUserRepository();
    }
    public User find(String id) {
        return userRepository.find(id);
    }

    @Override
    public void signUp(User user) {
        userRepository.save(user);
    }
}
