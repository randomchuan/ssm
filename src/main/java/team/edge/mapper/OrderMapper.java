package team.edge.mapper;

import org.apache.ibatis.annotations.Param;
import team.edge.bean.Order;
import team.edge.bean.OrderDetail;

import java.util.List;

/**
 * @author jack
 * @date 2018/9/9
 */
public interface OrderMapper {
    /**
     * 分页显示订单信息
     *
     * @param id
     * @param no
     * @return
     */
    public List<Order> selectOrderByUserId(@Param("id") Integer id, @Param("no") Integer no);

    public OrderDetail selectOrderDetailById(Integer id);

    public int insertOrder(Order order);

    public int delOrder(Integer id);
}
