package team.edge.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;
import team.edge.bean.Comment;
import team.edge.bean.Product;
import team.edge.bean.Detail;

import java.util.List;

/**
 * @author jack
 * @date 2018/9/7
 * @// TODO: 2018/9/7 在这里处理Product的数据请求
 */
@Service
public interface ProductMapper {

    /**
     * 获取最新上架的4种商品
     * @return
     */
    public List<Product> selectNewItems();

    /**
     * 获取最畅销的6种商品
     * @return
     */
    public List<Product> selectMostItems();

    public Detail selectDetailById(Integer id);
}
