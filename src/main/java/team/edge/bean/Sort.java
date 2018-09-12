package team.edge.bean;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * @author jack
 * @date 2018/9/11
 */
@Data
public class Sort implements Serializable {
    private Long serialVersionUID = 1L;
    private Integer id;
    private String name;
    private String description;
    private Date createTime;
}
