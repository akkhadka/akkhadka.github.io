package io.github.akkhadka.model;

public class User {
    public String getUsername() {
        return username;
    }
    public String getPassword() {
        return password;
    }

    private String username;
    private String password;

    public String getName() {
        return name;
    }

    private String name;
    public User(String username,String password,String name){
        this.password=password;
        this.username = username;
        this.name=name;
    }
}
