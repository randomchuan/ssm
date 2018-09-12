package team.edge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.edge.mapper.CartMapper;

/**
 * @author jack
 * @date 2018/9/10
 *
 * @// TODO: 2018/9/12 重写购物车功能
 * @author randongchun
 */
@Service
public class CartService {
    private final CartMapper mapper;

    @Autowired
    public CartService(CartMapper mapper) {
        this.mapper = mapper;
    }
}
