package team.edge.mapper;

import team.edge.bean.User;

/**
 * @author jack
 * @date 2018/9/9
 * @// TODO: 2018/9/9 这里处理用户相关的数据请求 
 */
public interface UserMapper {
    /**
     * 判断登录操作
     * @param user
     * @return
     */
    public User selectUser(User user);

    /**
     * 注册用户
     * @param user
     * @return
     */
    public Integer insertUser(User user);
}
