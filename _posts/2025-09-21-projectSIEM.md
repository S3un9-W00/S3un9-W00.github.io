---
layout: post
title:  "간단한 보안관제 SIEM 시스템(개인)"
summary: "Simple Seculity Control SIEM System(Personal)"
author: 안승우
date: '2025-09-21'
category: ['security_control','solo_project', 'portfolio']
thumbnail: /assets/img/projectSIEM.png
usemathjax: true
permalink: /blog/projectSIEM/
---

## 프로젝트 개요

이 프로젝트는 개인 학습 및 실습을 목적으로 제작한 **보안관제 SIEM(Security Information and Event Management) 시스템**입니다.  
다양한 서버 로그를 수집하고 분석하여 **로그인 시도, 실패 기록, 등록 이벤트** 등을 직관적으로 확인할 수 있도록 구현하였습니다.  

---

## 주요 기능

- 🔎 **로그 수집 및 정규화**  
  서버에서 발생하는 `로그인 시도`, `회원가입 시도` 등을 수집하여 통합된 형태로 관리  

- ⚠️ **위험 이벤트 탐지**  
  - 로그인 실패, 비정상 시도 시 `주의` 표시  
  - 정상 이벤트는 `✅ 정상`으로 구분  

- 📊 **시각화 대시보드**  
  - 표 형태로 분석 결과 제공  
  - 시간(TimeStamp)별 이벤트 추적 가능  

---

## 예시 화면

위 사진은 실제 로그 분석 결과의 일부 예시입니다:


표를 통해 정상 로그인과 실패 로그인을 한눈에 파악할 수 있으며, 공격 시도 여부도 빠르게 식별할 수 있습니다.  

또 시간별 그래프도 확인할 수 있습니다.
![시간 별 그래프](/assets/img/projectSIEM_2.png)

---

## 사용 기술 스택
   
FLASK, SQLITE3, MATPLOTLIB, PANDAS, REQUESTS   

---

## 프로젝트 의의

이 프로젝트는 단순히 이벤트를 수집하는 것을 넘어서, **보안 로그를 분석하고 시각적으로 표현하는 과정**을 직접 경험하기 위한 목적이 있었습니다.  
또한 SIEM의 기본 원리를 학습하고, 추후 **실제 관제 시스템** 또는 **머신러닝 기반 이상탐지 모델**로 확장할 수 있는 가능성을 확인했습니다.  

---

## 앞으로의 개선 방향
  
- 자동 경보 시스템
- 글씨 깨진거 고치기

---

✍️ 본 프로젝트는 개인 학습 목적이며, 실제 보안관제 환경을 모방하여 제작되었습니다.  