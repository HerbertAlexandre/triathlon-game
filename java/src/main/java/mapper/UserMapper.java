package mapper;

import model.User;

public interface UserMapper {

    public User login(String email, String password);
}
