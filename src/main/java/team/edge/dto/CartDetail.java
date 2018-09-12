package team.edge.dto;

import lombok.Data;
import team.edge.bean.Cart;

import java.io.Serializable;

/**
 * @author jack
 * @date 2018/9/11
 */
@Data
public class CartDetail implements Serializable {
    private Long serialVersionUID = 1L;
    private Cart cart;
    private String productName;
    private String userName;
}
