package team.edge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.edge.bean.Comment;
import team.edge.bean.User;
import team.edge.mapper.CommentMapper;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @author jack
 * @date 2018/9/10
 */
@Service
public class CommentService {

    @Autowired
    private CommentMapper mapper;

    public List<Comment> selectCommentById(Integer id, Integer size) {
        return mapper.selectCommentById(id, size);
    }

    public boolean addComment(Comment comment) {
        // 这里添加comment其他属性
        //  createTime
        comment.setId(comment.hashCode());
        comment.setCreateTime(new Date());
        return mapper.addComment(comment) == 1;
    }
}
