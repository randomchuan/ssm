package team.edge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.edge.bean.Comment;
import team.edge.bean.Product;
import team.edge.bean.Detail;
import team.edge.mapper.CommentMapper;
import team.edge.mapper.ProductMapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author jack
 * @date 2018/9/7
 */
@Service
public class ProductService {
    // private final ProductMapper mapper;

    // @Autowired
    // public ProductService(ProductMapper mapper) {
    //     this.mapper = mapper;
    // }

    @Autowired
    private ProductMapper mapper;
    @Autowired
    private CommentMapper commentMapper;

    /**
     * 获取最畅销的6种商品
     *
     * @return
     */
    public List<Product> selectMostItems() {
        return mapper.selectMostItems();
    }

    /**
     * 获取最新上架的4种商品
     *
     * @return
     */
    public List<Product> selectNewItems() {
        return mapper.selectNewItems();
    }

    public Detail selectDetailById(Integer id) {
        // 在此处解析参数
        Detail detail = mapper.selectDetailById(id);
        String params = detail.getParameter();
        String[] strings = params.split(",");
        Map<String, String> paramsMap = new HashMap<>();
        String[] strs;
        for (String string : strings) {
            strs = string.split(":");
            paramsMap.put(strs[0], strs[1]);
        }
        detail.setParams(paramsMap);
        return detail;
    }

    public List<Comment> selectCommentById(Integer id, Integer no){
        return commentMapper.selectCommentById(id,no);
    }
}
