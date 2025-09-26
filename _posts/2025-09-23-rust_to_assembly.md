---
layout: post
title:  "간단한 Rust 코드를 Stack VM 코드로 변환해주는 컴파일러(팀 프로젝트)"
summary: "Simple Ryst to Stack VM compiler(Team project)"
author: 안승우
date: '2025-09-23'
category: ['rust','team_project', 'portfolio', 'compiler']
thumbnail: /assets/img/projectCOMPILER_V2.png
usemathjax: true
permalink: /blog/projectCOMPILER_V2/
---

📝 **프로젝트 개요**

Rust를 활용하여 간단한 프로그래밍 언어를 스택 기반 가상 머신용 바이트코드로 변환하는 컴파일러를 제작하였습니다.  
입력 코드를 **토큰화 → AST 변환 → 스택 머신 명령어 생성**까지 전체 파이프라인을 구현했습니다.  

---

⚙️ **주요 기능**

- 변수 선언(`let`), 수식 표현, 조건문(`if-else`), 반복문(`while`) 지원  
- 스택 기반 연산 명령어 생성: `PUSH`, `POP`, `ADD`, `SUB`, `GT`, `LT`, `EQ`  
- 조건 분기 및 루프 구현을 위한 레이블(Label) 자동 생성  
- 최종 코드를 VM에서 바로 실행 가능한 형태로 출력  

---

🛠️ **팀 내 역할**

- **Lexer 구현:** 입력 문자열을 토큰(`Token`)으로 변환  
- **Parser 구현:** 토큰을 AST(`Stmt`, `Expr`)로 변환  

---

🧩 **개발 과정 및 문제 해결**

- **토큰화 문제:** `=`와 `==` 구분, 연속된 기호 처리 → `peek_char()` 활용  
- **AST 설계:** if-else, while, 이항 연산 표현식을 모두 재귀 구조로 처리   

---

🚀 **성과**

**MiniLang 예제 코드:**

```rust
let x = 10 + 20;
if x > 15 {
    x = x - 5;
} else {
    x = x + 5;
}
while x < 30 {
    x = x + 1;
}
생성된 스택 머신 명령어 예시:

python-repl
코드 복사
PUSH 10
PUSH 20
ADD
STORE x
LOAD x
PUSH 15
GT
JZ Lelse_0
...
LABEL Lend_3
HALT
AST → 스택 명령어로 변환 완료, VM에서 바로 실행 가능

---

💡 **배운 점**

Rust의 모듈 시스템(mod, crate)과 Enum 활용 능력 향상

스택 기반 가상 머신 아키텍처 이해

직접 Lexer, Parser, CodeGen 설계 경험을 통해 컴파일러 제작 과정 심화 학습

---

📌 **향후 개선 방향**

함수/스코프 지원으로 프로그램 구조 확장

추가 연산자 및 내장 함수 구현

실제 VM 인터프리터와 통합하여 실행 환경 확장