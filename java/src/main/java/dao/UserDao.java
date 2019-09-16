package dao;

import mapper.UserMapper;
import model.User;
import org.apache.ibatis.session.SqlSession;
import service.MyBatisUtil;

public class UserDao {

    public User login(String email, String password) {
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        try{
            UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
            return userMapper.login(email, password);
        }finally{
            sqlSession.close();
        }
    }
}
