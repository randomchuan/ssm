package team.edge.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.edge.bean.User;
import team.edge.mapper.UserMapper;

import java.util.Date;

/**
 * @author jack
 * @date 2018/9/9
 * @// TODO: 2018/9/9 处理与User相关的服务
 */
@Service
public class UserService {
    private final Logger logger = Logger.getLogger(this.getClass());
    private final UserMapper mapper;

    @Autowired
    public UserService(UserMapper mapper) {
        this.mapper = mapper;
    }

    public User selectUser(User user) {
        return mapper.selectUser(user);
    }

    public boolean insertUser(User user) {
        // 在这里生成用户ID，注册日期
        Integer id = user.hashCode();
        user.setId(id);
        user.setCreateTime(new Date());
        logger.info(user);
        return mapper.insertUser(user) == 1;
    }
}
