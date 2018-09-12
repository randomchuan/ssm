package team.edge.dto;

import lombok.Data;
import team.edge.bean.Comment;

import java.io.Serializable;

/**
 * @author jack
 * @date 2018/9/11
 */
@Data
public class CommentDetail implements Serializable {
    private Long serialVersionUID = 1L;
    private Comment comment;
    private String userName;
    private String productName;
}
