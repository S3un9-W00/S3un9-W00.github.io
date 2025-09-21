---
layout: post
title:  "간단한 게시판 사이트(개인)"
summary: "Simple Board Site(Personal)"
author: 안승우
date: '2025-09-20'
category: ['solo_project', 'board', 'portfolio']
thumbnail: /assets/img/projectBOARD.png
permalink: /blog/projectBOARD/
usemathjax: true
---

## 프로젝트 개요

이 프로젝트는 개인 학습 및 실습을 목적으로 제작한 **간단한 게시판 사이트**입니다.  
간단한 로그인과 게시판 기능을 구현하였습니다.  

---

## 주요 기능
- **취약점 보안**  
  - 로그인 할때 sql injection 보안  
  - 게시글을 쓸때 xss 취약점 보안
  - 데이터베이스의 보안을 위해 비밀번호는 암호화하여 저장  



- **로그인 & 회원가입**  
  위 사이트의 회원이 아니면 게시판 이용을 못하도록 회원가입과 로그인 기능을 도입
![](/assets/img/projectBOARD_login.png)![](/assets/img/projectBOARD_register.png)



- **게시글 쓰기 & 보기**  
  - 로그인을 하면 위 네비게이션 바에서 board에 들어가 게시글 목록을 볼수 있고 쓰기 가능  
  - 게시글 목록에서 목록에 있는 게시물 제목을 클릭하면 해당 게시물의 제목과 쓴 날짜, 글쓴이, 게시글 확인 가능 
![](/assets/img/projectBOARD_board.png)![](/assets/img/projectBOARD_write.png)
 

---

## 사용 기술 스택
   
PHP, MARIADB 

---

## 프로젝트 의의

이 프로젝트는 단순하게 게시물, 로그인 기능만 넣는 목적이 아니라, "사이버 가디언즈"에서 배운 보안 공격 기법을 복습하기 위해서 직접 공격도 해보고 막기도 해보기 위한 목적으로 만들었습니다.

---

## 앞으로의 개선 방향
  
- 눈에는 안보이는 보안 취약점 막기
- 로그인 & 회원가입 부분에 브루트포스를 막기 위해 일정 횟수가 되면 로그인 못하도록 막기

---

✍️ 본 프로젝트는 개인 학습 목적이며, 공격 기법들을 복습하기 위해 만들어졌습니다.  
