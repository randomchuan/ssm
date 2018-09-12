package team.edge.bean;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author jack
 * @date 2018/9/9
 */
@Data
public class Order implements Serializable {
    private Long serialVersionUID = 1L;
    private Integer id;
    private Integer userId;
    private Integer productId;
    private Integer status;
    private Date createTime;
}
