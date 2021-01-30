package io.github.akkhadka.webstore.repository;

import io.github.akkhadka.webstore.model.User;
import io.github.akkhadka.webstore.model.UserRepository;

import java.util.HashMap;
import java.util.List;

public class FakeUserRepository implements UserRepository {
    private static HashMap<String, User> users;

    private static HashMap<String, User> getUsers(){
        if(users == null){
            synchronized (FakeUserRepository.class){
                if(users==null){
                    users = new HashMap<>();
                    users.put("arjun",new User("arjun","123","Arjun Khadka"));
                    users.put("rakesh",new User("rakesh","123","Rakesh Shrestha"));
                }
            }
        }
        return users;
    }
    @Override
    public void update(User entity) {
        getUsers().put(entity.getUsername(),entity);
    }

    @Override
    public void save(User entity) {
        getUsers().put(entity.getUsername(),entity);
    }

    @Override
    public void remove(User entity) {

    }

    @Override
    public User find(String s) {
        return   getUsers().get(s);
    }

    @Override
    public List<User> findAll() {
        return null;
    }
}
