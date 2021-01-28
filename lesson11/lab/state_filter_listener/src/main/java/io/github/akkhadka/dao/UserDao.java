package io.github.akkhadka.dao;

import io.github.akkhadka.model.User;

import java.util.HashMap;
import java.util.Map;

public class UserDao {
    private static HashMap<String, User> users;

    private static HashMap<String, User> getUsers(){
        if(users == null){
        synchronized (UserDao.class){
            if(users==null){
                users = new HashMap<>();
                users.put("arjun",new User("arjun","password123","Arjun Khadka"));
                users.put("xuan",new User("xuan","password123","Xuan Tuan"));
            }
        }
        }
        return users;
    }

    public User  getUser(String userName){
        User user = getUsers().get(userName);
        return user;
    }
}
