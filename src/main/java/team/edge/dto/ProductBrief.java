package team.edge.dto;

import lombok.Data;
import team.edge.bean.Product;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author jack
 * @date 2018/9/11
 */
@Data
public class ProductBrief implements Serializable {
    private Long serialVersionUID = 1L;
    private Product product;
    private BigDecimal priceOld;
    private BigDecimal priceNew;
    private Integer star;
    private Integer sales;
}
