package model;

import java.util.HashMap;
import java.util.Map;

public class User {

    private Integer id;
    private String firstName;
    private String lastName;
    private String userName;
    private String phone;
    private String email;

    public User(Integer id, String firstName, String lastName, String userName, String phone, String email) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.userName = userName;
        this.phone = phone;
        this.email = email;
    }

    public User() { }

    public Map<String, Object> toJson(){
        Map<String, Object> json = new HashMap<>();
        json.put("id", this.id);
        json.put("firstName", this.firstName);
        json.put("lastName", this.lastName);
        json.put("userName", this.userName);
        json.put("phone", this.phone);
        json.put("email", this.email);
        return json;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
