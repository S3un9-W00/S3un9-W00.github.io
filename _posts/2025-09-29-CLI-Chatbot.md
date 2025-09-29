---
layout: post
title:  "CLI Chatbot: LangChain & OpenAI 기반 대화형 챗봇(개인)"
summary: "Conversational chatbot with memory, built using LangChain and OpenAI API(Personal)"
author: 안승우
date: '2025-09-29'
category: ['python','portfolio','ai','langchain','openai', 'solo_project']
thumbnail: /assets/img/CLI_Chatbot.png
usemathjax: true
permalink: /blog/projectCLIChatbot/
---

📝 **프로젝트 개요**

LangChain과 OpenAI API를 활용하여 **CLI(Chatbot Interface)** 환경에서 동작하는 대화형 챗봇을 제작하였습니다.  
단순한 입력-출력 구조를 넘어서, **대화 맥락 유지(memory)** 를 지원하도록 설계하여  
사용자가 질문을 이어가도 일관된 응답을 받을 수 있도록 구현했습니다.  

---

📂 **코드 구조**
```py
from langchain_openai import ChatOpenAI
from langchain.memory import ConversationSummaryBufferMemory
from langchain.chains import LLMChain
from langchain.prompts import ChatPromptTemplate, MessagesPlaceholder

# LLM 설정
llm = ChatOpenAI(
    model="gpt-4o-mini",
    temperature=0.1,
)

# 대화 요약 메모리
momory = ConversationSummaryBufferMemory(
    llm=llm,
    max_token_limit=120,
    memory_key="chat_history",
    return_messages=True
)

# 프롬프트 템플릿
prompt = ChatPromptTemplate.from_messages([
    ("system", "You are a helpful assistant in a cli chatbot."),
    MessagesPlaceholder(variable_name="chat_history"),
    ("human", "{question}")
])

# LLMChain 구성
chain = LLMChain(
    llm=llm,
    prompt=prompt,
    memory=momory
)

# CLI 환경에서 챗봇 실행
print("CLI CHATBOT (If you want exit, type 'exit')")
while True:
    question = input("You: ")
    if question.lower() == "exit":
        print("Exiting the chatbot. Goodbye!")
        break
    answer = chain.invoke({"question": question})
    print(f"Bot: {answer['text']}")
```

---

⚙️ **주요 기능**

- **대화 맥락 유지**: `ConversationSummaryBufferMemory` 활용  
- **프롬프트 엔지니어링**: `ChatPromptTemplate` 기반 사용자 입력 처리  
- **LLMChain 구성**: 모델, 프롬프트, 메모리를 하나의 체인으로 통합  
- **CLI 기반 인터페이스**: 터미널에서 간단하게 챗봇 사용 가능  

---

🛠️ **내 역할**

- **메모리 관리**: LangChain의 `ConversationSummaryBufferMemory`를 적용하여 대화 요약 및 맥락 유지  
- **Chain 설계**: `LLMChain`을 구성하여 모델, 프롬프트, 메모리를 유기적으로 연결  
- **프롬프트 최적화**: 챗봇이 CLI 환경에서 자연스럽게 응답하도록 시스템 메시지 작성  

---

🧩 **개발 과정 및 문제 해결**

- **대화 길이 제한 문제:** `max_token_limit`을 설정하여 메모리가 과도하게 쌓이지 않도록 제어  
- **응답 형식 문제:** OpenAI API 응답을 텍스트만 추출하여 CLI 출력에 적합하게 가공  
- **프로세스 종료 제어:** `exit` 키워드 입력 시 안전하게 루프를 종료하도록 구현  

---

🚀 **실행 예시**

```bash
CLI CHATBOT (If you want exit, type 'exit')
You: 안녕?
Bot: 안녕하세요! 무엇을 도와드릴까요?
You: 내가 방금 뭐라고 했는지 기억해?
Bot: 네, 방금 "안녕?"이라고 인사하셨습니다.
You: exit
Exiting the chatbot. Goodbye!
```

---

💡 **배운 점**

 - LangChain의 Memory 모듈 구조 및 동작 방식 이해

 - Prompt Engineering의 중요성과 모델 응답 제어 방법 학습

 - 단순한 챗봇에서도 맥락 유지 기능이 사용자 경험을 크게 개선한다는 점 체득

---

📌 **향후 개선 방향**

 - 멀티턴 대화에 적합한 Vector Store Memory 적용

 - OpenAI API 외에 로컬 LLM(HuggingFace 모델) 연동 실험

 - CLI 기반에서 웹 UI(Flask, Streamlit)로 확장

 - 대화 로그 저장 및 분석 기능 추가