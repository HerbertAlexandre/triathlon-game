package service;

import dao.UserDao;
import model.User;

import javax.inject.Inject;

public class UserService {

    private final UserDao userDao;

    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    public User login(String email, String password){
        User user = userDao.login(email, password);


        return user;
    }
}
