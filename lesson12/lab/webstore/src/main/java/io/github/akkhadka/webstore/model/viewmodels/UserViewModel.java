package io.github.akkhadka.webstore.model.viewmodels;

public class UserViewModel {
    private String username;
    private String name;
    private String password;

    private boolean isTemp;
    public UserViewModel(String password,String username, String name){

        this.username = username;
        this.name=name;
        this.password=password;
    }
    public String getName() {
        return name;
    }
    public String getUsername() {
        return username;
    }

    public boolean isTemp() {
        return isTemp;
    }

    public void setTemp(boolean temp) {
        isTemp = temp;
    }

}
