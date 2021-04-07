package com.perfumeshop.service;


import com.perfumeshop.entity.Comment;
import com.perfumeshop.entity.CommentExample;

import java.util.List;

public interface CommentService {
    public void insertSelective(Comment comment);

    public List<Comment> selectByExample(CommentExample commentExample);
}
