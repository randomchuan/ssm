package team.edge.bean;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author jack
 * @date 2018/9/10
 */
@Data
public class Info implements Serializable {
    private Long serialVersionUID = 1L;
    private Integer id;
    private Integer userId;
    private String address;
    private String phone;
    private Date createTime;
}
