package com.blog.entity;

import java.util.List;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Data
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
 private Long postID;
 private Long postUserID;
 private String postContent;
 @ElementCollection // 1
 @CollectionTable(name = "my_list", joinColumns = @JoinColumn(name = "id")) // 2
 @Column(name = "list") // 3
 private List<String> postCommentsList;
}

