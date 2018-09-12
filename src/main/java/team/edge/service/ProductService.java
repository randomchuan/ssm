package team.edge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.edge.bean.Comment;
import team.edge.bean.Detail;
import team.edge.dto.CommentDetail;
import team.edge.dto.ProductBrief;
import team.edge.dto.ProductDetail;
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
    public List<ProductBrief> selectHotProducts() {
        return mapper.selectHotProducts(6);
    }

    /**
     * 获取最新上架的4种商品
     *
     * @return
     */
    public List<ProductBrief> selectNewProducts() {
        return mapper.selectNewProducts(4);
    }

    public ProductDetail selectDetailById(Integer id) {
        // 在此处解析参数
//        判空
        ProductDetail detail = mapper.selectDetailById(id);
        String params = detail.getDetail().getParameter();
        String[] strings = params.split(",");
        Map<String, String> paramsMap = new HashMap<>(10);
        String[] strs;
        for (String string : strings) {
            strs = string.split(":");
            paramsMap.put(strs[0], strs[1]);
        }
        detail.setParams(paramsMap);
        return detail;
    }

    public List<CommentDetail> selectCommentById(Integer id, Integer no) {
        return commentMapper.selectCommentById(id, no);
    }
}
