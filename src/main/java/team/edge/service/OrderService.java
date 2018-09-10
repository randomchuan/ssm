package team.edge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.edge.bean.Order;
import team.edge.bean.OrderDetail;
import team.edge.mapper.OrderMapper;

import java.util.Date;
import java.util.List;

/**
 * @author jack
 * @date 2018/9/9
 */
@Service
public class OrderService {
    private final OrderMapper mapper;

    @Autowired
    public OrderService(OrderMapper mapper) {
        this.mapper = mapper;
    }

    public List<Order> selectOrdersByUserId(Integer id, Integer no) {
        return mapper.selectOrderByUserId(id, no);
    }

    public OrderDetail selectOrderDetailById(Integer id) {
        return mapper.selectOrderDetailById(id);
    }

    public Boolean insertOrder(Order order) {
        order.setId(order.hashCode());
        order.setCreateTime(new Date());
        return mapper.insertOrder(order) == 1;
    }

    public Boolean delOrder(Integer id) {
        return mapper.delOrder(id) == 1;
    }

}
