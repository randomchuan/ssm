package team.edge.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import team.edge.bean.Comment;
import team.edge.dto.CommentDetail;
import team.edge.service.CommentService;

import java.util.List;

/**
 * @author jack
 * @date 2018/9/10
 * @// TODO: 2018/9/11 为类添加映射
 */
@Controller
@RequestMapping("comment")
public class CommentController {
    @Autowired
    private CommentService service;

    /**
     * 分页显示评论
     *
     * @return
     */
    @RequestMapping(value = "/list/{id}", method = RequestMethod.GET)
    public String commentList(@PathVariable Integer id, Model model) {
        Integer size = 10;
        List<CommentDetail> comments = service.selectCommentById(id, size);
        model.addAttribute("comments", comments);
        model.addAttribute("product_id", id);
        return "comments";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String commentAdd(@ModelAttribute Comment comment, Model model) {
        boolean b = service.addComment(comment);
        model.addAttribute("result", b);
//        再次请求显示评论方法 刷新评论
        return "redirect:/comment/list/" + comment.getUserId();
    }
}
