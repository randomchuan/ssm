package team.edge.bean;

import lombok.Data;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author jack
 * @date 2018/9/7
 */
@Data
public class Detail implements Serializable {
    private Long serialVersionUID = 1L;
    private Integer id;
    private Integer productId;
    private BigDecimal priceOld;
    private BigDecimal priceNew;
    private String parameter;
    private Integer sales;
    private Integer visitor;
    private Integer assessment;
    private Date createTime;
    private Integer star;
    private String description;
}
