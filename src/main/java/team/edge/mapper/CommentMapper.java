package team.edge.mapper;

import org.apache.ibatis.annotations.Param;
import team.edge.bean.Comment;

import java.util.List;

/**
 * @author jack
 * @date 2018/9/10
 */
public interface CommentMapper {
    public List<Comment> selectCommentById(@Param("id") Integer id, @Param("size") Integer size);

    public int addComment(Comment comment);
}
