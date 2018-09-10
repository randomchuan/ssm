package team.edge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import team.edge.bean.Comment;
import team.edge.service.CommentService;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author jack
 * @date 2018/9/10
 */
@Controller
public class CommentController {
    @Autowired
    private CommentService service;

    /**
     * 分页显示评论
     *
     * @return
     */
    @RequestMapping(value = "/commentList/{id}", method = RequestMethod.GET)
    public String commentList(@PathVariable Integer id, Model model) {
        Integer size = 10;
        List<Comment> comments = service.selectCommentById(id, size);
        model.addAttribute("comments", comments);
        return "/comments";
    }

    @RequestMapping(value = "/commentAdd", method = RequestMethod.PUT)
    public String commentAdd(@ModelAttribute Comment comment, Model model) {
        boolean b = service.addComment(comment);
        model.addAttribute("result", b);
        return "comments";
    }
}
