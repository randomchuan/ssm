package team.edge.mapper;

import org.apache.ibatis.annotations.Param;
import team.edge.bean.Comment;
import team.edge.dto.CommentDetail;

import java.util.List;

/**
 * @author jack
 * @date 2018/9/10
 */
public interface CommentMapper {
    public List<CommentDetail> selectCommentById(@Param("id") Integer id, @Param("size") Integer size);

    public int addComment(Comment comment);
}
