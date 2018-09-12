package team.edge.dto;

import lombok.Data;
import team.edge.bean.Detail;

import java.io.Serializable;
import java.util.Map;

/**
 * @author jack
 * @date 2018/9/11
 */
@Data
public class ProductDetail implements Serializable {
    private Long serialVersionUID = 1L;
    private Detail detail;
    private String name;
    private String sortName;
    private Map<String,String> params;
}
