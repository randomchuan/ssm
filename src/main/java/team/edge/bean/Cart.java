package team.edge.bean;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.Objects;

/**
 * @author jack
 * @date 2018/9/10
 */
@Data
public class Cart implements Serializable {
    private Long serialVersionUID = 1L;
    private Integer id;
    private Integer productId;
    private Integer userId;
    private Integer count;
    private Date createTime;

    @Override
    public int hashCode() {
        return Objects.hash(productId, userId, count);
    }
}
