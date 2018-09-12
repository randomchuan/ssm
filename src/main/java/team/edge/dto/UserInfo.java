package team.edge.dto;

import lombok.Data;
import team.edge.bean.User;

import java.io.Serializable;

/**
 * @author jack
 * @date 2018/9/11
 */
@Data
public class UserInfo implements Serializable {
    private Long serialVersionUID = 1L;
    private User user;
    private String address;
    private String phone;
}
