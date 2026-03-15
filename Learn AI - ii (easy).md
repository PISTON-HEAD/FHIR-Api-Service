# Complete AI Learning Journey — 1-2 Hours/Day Plan

At 1-2 hours/day, you're looking at roughly **8-12 months** to go from zero to confident AI developer. Here's the full roadmap, broken into months.

---

## Before You Start — The Right Mindset

- You are NOT learning to become a data scientist or ML researcher
- Your goal: **Build AI-powered applications** using your existing Java skills
- Think of AI APIs like you think of REST APIs — you call them, they return results
- RAG and LLM apps are just software engineering with AI components

---

## Month 1: AI Literacy — Understand the Landscape

**Goal:** Know what everything means before writing a single line of AI code.

### What to Learn
- What is AI vs ML vs Deep Learning vs Generative AI (they are nested concepts)
- What is an LLM — how it was trained, what tokens are, what a context window is
- What is a prompt — why prompt engineering matters
- What are embeddings and vectors conceptually
- What is RAG and why it exists (LLMs don't have your private data)
- Key players: OpenAI, Anthropic, Google, Meta (Llama), Mistral

### Where to Learn

| Resource | What you get | Time |
|----------|-------------|------|
| [Andrej Karpathy - Intro to LLMs](https://www.youtube.com/watch?v=zjkBMFhNj_g) | Best 1-hour conceptual overview ever made | 1 hour |
| [Google - Generative AI for Everyone](https://www.cloudskillsboost.google/paths/118) | Free, structured, no math | ~5 hours total |
| [IBM - What is Generative AI](https://www.ibm.com/think/topics/generative-ai) | Quick articles | 30 min |
| [3Blue1Brown - Neural Networks playlist](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi) | Visual, intuitive, builds real understanding | ~3 hours |

### By End of Month 1 You Should Be Able To
- Explain to someone what an LLM is
- Know the difference between fine-tuning and RAG
- Understand why a vector database exists
- Know what "hallucination" means and why it happens

---

## Month 2: Python — Just Enough, Nothing More

**Goal:** Read and write Python confidently for AI tasks. You do NOT need to become a Python expert.

### How Much Python Do You Actually Need?

As a Java dev, you need roughly **20-25% of Python** to be productive in AI. Specifically:

**You MUST know:**
- Variables, strings, lists, dictionaries (1 day — you already know these concepts)
- Functions and classes (1 day)
- `pip` and virtual environments (like Maven but simpler)
- Reading/writing files
- `import` statements and how packages work
- List comprehensions (very common in AI code)
- Working with JSON
- `async`/`await` basics (optional but helpful)

**You do NOT need:**
- Django/Flask web frameworks
- Advanced OOP, decorators (not yet)
- System programming
- Testing frameworks (not yet)

### Where to Learn Python

**Primary Resource — Use only one, finish it:**

**[Python.org official tutorial](https://docs.python.org/3/tutorial/)** — Do chapters 1-9 only. Skip the rest. Free.

OR

**[Codecademy - Learn Python 3](https://www.codecademy.com/learn/learn-python-3)** — More interactive, beginner friendly. Free tier is enough. ~25 hours total, do it at 1 hour/day over the month.

OR (best for Java devs)

**[Python for Java Developers - YouTube](https://www.youtube.com/results?search_query=python+for+java+developers)** — Search this on YouTube, several good 2-3 hour crash courses exist specifically for people who already know Java.

### Month 2 Daily Plan (1-2 hrs/day)

| Week | Focus |
|------|-------|
| Week 1 | Variables, types, lists, dicts, loops, functions — you'll fly through this |
| Week 2 | Classes, file I/O, JSON, pip, virtual environments |
| Week 3 | Build something small: a script that reads a file and prints summaries |
| Week 4 | Jupyter notebooks — this is how 90% of AI tutorials are written |

**Install these:**
```
Python 3.11+
VS Code with Python extension (you already have VS Code)
Jupyter extension in VS Code
```

### By End of Month 2 You Should Be Able To
- Write a Python script that reads a text file, processes it, calls an API, prints results
- Run Jupyter notebooks
- Install packages with pip
- Read any AI tutorial code on GitHub without being confused

---

## Month 3: Your First LLM App — Call an API, See Magic

**Goal:** Build a real working app that uses an LLM. No theory, just building.

### What to Build
A simple command-line chatbot that:
1. Takes user input
2. Sends it to an LLM API
3. Returns a response

**In Java first** (because you already know Spring Boot):

```xml
<!-- Spring AI in pom.xml -->
<dependency>
    <groupId>org.springframework.ai</groupId>
    <artifactId>spring-ai-openai-spring-boot-starter</artifactId>
    <version>1.0.0</version>
</dependency>
```

```java
// This is all it takes to call an LLM with Spring AI
@RestController
public class ChatController {
    
    @Autowired
    private ChatClient chatClient;
    
    @GetMapping("/chat")
    public String chat(@RequestParam String message) {
        return chatClient.prompt()
            .user(message)
            .call()
            .content();
    }
}
```

**Then the same in Python** (using the OpenAI library):

```python
from openai import OpenAI

client = OpenAI(api_key="your-key")

response = client.chat.completions.create(
    model="gpt-4o",
    messages=[{"role": "user", "content": "Hello, what is FHIR?"}]
)

print(response.choices[0].message.content)
```

### Where to Learn

| Resource | Link | Notes |
|----------|------|-------|
| Spring AI Docs | [docs.spring.io/spring-ai](https://docs.spring.io/spring-ai/reference/) | Official, excellent, Java |
| OpenAI Cookbook | [cookbook.openai.com](https://cookbook.openai.com) | Python examples, copy-paste friendly |
| LangChain4j | [docs.langchain4j.dev](https://docs.langchain4j.dev) | Java-native AI framework, growing fast |

### Setup Required
- OpenAI API account — $5 credit lasts months for learning (or use free alternatives)
- **Ollama** (run LLMs locally, completely free): [ollama.com](https://ollama.com)
  - `ollama run llama3.2` — you now have a local LLM, no API costs

### By End of Month 3 You Should Be Able To
- Call an LLM from both Java and Python
- Understand what a "system prompt" is and how to use it
- Use Ollama to run models locally — free for experiments

---

## Month 4: Prompt Engineering — The Most Underrated Skill

**Goal:** Learn to talk to LLMs properly. Bad prompts = bad results.

### What to Learn
- System prompts vs user prompts
- Few-shot prompting (give examples in the prompt)
- Chain of thought prompting
- Structured output (make LLM return JSON)
- Temperature, max tokens, top_p — what these settings do
- How to avoid hallucinations

### Where to Learn

| Resource | What it covers |
|----------|---------------|
| [LearnPrompting.org](https://learnprompting.org) | Free, comprehensive, structured |
| [OpenAI Prompt Engineering Guide](https://platform.openai.com/docs/guides/prompt-engineering) | Official best practices |
| [Anthropic Prompt Engineering Docs](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview) | Claude-specific but concepts apply everywhere |

### Mini Project This Month
Take your FHIR application. Create a prompt that:
- Takes a patient's data as input
- Returns a structured clinical summary
- Returns it as JSON so your Java code can parse it

This is exactly what AI engineers do in real jobs.

---

## Month 5: Embeddings and Vector Databases — The Heart of RAG

**Goal:** Understand the core technology that makes RAG work.

### What to Learn

**Embeddings:**
- Text is converted to a list of numbers (a vector) — example: `"Hello" → [0.23, -0.87, 0.12, ...]`
- Similar text = similar vectors = can find related documents by math
- You use a model to create embeddings (OpenAI has one, or use a free local model)

**Vector Databases:**
- Store these vectors in a special database optimized for similarity search
- `pgvector` — a PostgreSQL extension (you already use Postgres in your Docker setup!)
- Others: Chroma (Python, local), Weaviate, Pinecone (cloud)

### Where to Learn

| Resource | Notes |
|----------|-------|
| [pgvector GitHub](https://github.com/pgvector/pgvector) | You already use Postgres — just add the extension |
| [Spring AI Vector Store docs](https://docs.spring.io/spring-ai/reference/api/vectordbs.html) | Java integration |
| [Chroma Getting Started](https://docs.trychroma.com/getting-started) | Python, easiest to set up locally |

### Hands-On Exercise This Month
```sql
-- Add to your existing PostgreSQL in Docker
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE patient_embeddings (
    id BIGSERIAL PRIMARY KEY,
    patient_id BIGINT,
    content TEXT,
    embedding vector(1536)  -- OpenAI embedding size
);
```

Store some FHIR patient notes as embeddings. Query for "patients with chest pain". See it return semantically similar records — that is RAG working.

---

## Month 6: Build a Complete RAG Application

**Goal:** Build a full RAG pipeline from scratch, in Java using Spring AI.

### What RAG Looks Like in Code

```
Step 1: Ingest documents
  → Read PDF/text → Split into chunks → Create embeddings → Store in pgvector

Step 2: Query time
  → User asks question → Create embedding of question 
  → Search pgvector for similar chunks → Get top 5 chunks
  → Build prompt: "Using this context: [chunks], answer: [question]"
  → Send to LLM → Return answer
```

### Project to Build
A "FHIR Knowledge Assistant":
- Load your FHIR patient records into pgvector
- User asks: "Which patients had elevated blood pressure in the last 6 months?"
- System finds relevant records via vector search
- LLM generates a clinical summary

### Where to Learn

| Resource | Notes |
|----------|-------|
| [Spring AI RAG example](https://docs.spring.io/spring-ai/reference/api/retrieval-augmented-generation.html) | Official Spring AI RAG docs |
| [LangChain RAG tutorial (Python)](https://python.langchain.com/docs/tutorials/rag/) | Best conceptual walkthrough, even if you'll implement in Java |
| [DeepLearning.AI - Building RAG](https://www.deeplearning.ai/short-courses/) | Free short courses, highly practical |

### DeepLearning.AI Short Courses — Do These This Month
[deeplearning.ai/short-courses](https://www.deeplearning.ai/short-courses/) — ALL FREE. Most are 1-2 hours.

Specifically:
- **"Building Systems with the ChatGPT API"** — foundational
- **"LangChain: Chat with Your Data"** — directly teaches RAG
- **"Vector Databases: from Embeddings to Applications"**

These are made by Andrew Ng (the most respected AI educator in the world) — they are exceptional quality, free, and short.

---

## Month 7-8: LangChain4j — Java AI Framework Deep Dive

**Goal:** Master the Java-native AI framework built for Spring Boot developers.

### What is LangChain4j
Think of it as Spring AI's more mature cousin. It provides:
- Unified interface to 20+ LLM providers
- Built-in RAG pipeline
- Memory for conversations
- AI Services (annotate an interface, LangChain4j implements it with AI)
- Tool/function calling

```java
// This is LangChain4j's magic — an AI Service
interface PatientAssistant {
    
    @SystemMessage("You are a clinical assistant. Answer based on FHIR data only.")
    String chat(@MemoryId String patientId, @UserMessage String question);
}

// Spring Bean
@Bean
PatientAssistant patientAssistant(ChatLanguageModel model, 
                                   ChatMemoryStore memoryStore,
                                   EmbeddingStoreContentRetriever retriever) {
    return AiServices.builder(PatientAssistant.class)
        .chatLanguageModel(model)
        .chatMemory(memoryStore)
        .contentRetriever(retriever)
        .build();
}
```

### Where to Learn

| Resource | Link |
|----------|------|
| LangChain4j Docs | [docs.langchain4j.dev](https://docs.langchain4j.dev) |
| LangChain4j GitHub Examples | [github.com/langchain4j/langchain4j-examples](https://github.com/langchain4j/langchain4j-examples) |
| Quarkus + LangChain4j | If you ever use Quarkus, excellent integration |

---

## Month 9-10: AI Agents and Tool Calling

**Goal:** Build LLMs that can take actions, not just answer questions.

### What Are Agents
An agent is an LLM that can:
1. Decide what tools to use
2. Call functions/APIs
3. Use the result to decide the next step
4. Loop until it has an answer

Your Spring Boot REST APIs become "tools" that an AI agent can call automatically.

```java
// LangChain4j tool definition
@Tool("Get patient information by ID")
PatientResponse getPatient(@P("The patient ID") Long patientId) {
    return patientService.getPatient(patientId);
}

// The LLM will call this automatically when a user asks about a patient
```

### Where to Learn
- [LangChain4j Tools docs](https://docs.langchain4j.dev/tutorials/tools)
- DeepLearning.AI: **"AI Agents in LangGraph"** — free short course
- [Anthropic - Building Effective Agents](https://www.anthropic.com/research/building-effective-agents) — excellent conceptual article

---

## Month 11-12: Production, Evaluation, and Real Projects

**Goal:** Build something real. Learn how to evaluate AI quality.

### What to Learn
- How to evaluate RAG quality (is it giving correct answers?)
- Observability — LangSmith, LangFuse (trace what your LLM is doing)
- Cost management (logging token usage)
- Caching (don't call the LLM twice for the same thing)
- Guardrails — preventing prompt injection attacks

### Your Capstone Project
Extend your existing FHIR application with:
1. A RAG-powered clinical Q&A assistant
2. AI-generated patient summaries
3. Semantic patient search using vector embeddings
4. All running in your Docker Compose setup

---

## Summary Table — Full Roadmap

| Month | Topic | Primary Resource | Cost |
|-------|-------|-----------------|------|
| 1 | AI Literacy | Karpathy YouTube + Google AI Path | Free |
| 2 | Python Basics | Codecademy or Python.org tutorial | Free |
| 3 | First LLM App | Spring AI Docs + OpenAI Cookbook | ~$5 API credit |
| 4 | Prompt Engineering | learnprompting.org | Free |
| 5 | Embeddings + Vector DB | pgvector + Spring AI docs | Free |
| 6 | RAG Application | DeepLearning.AI short courses | Free |
| 7-8 | LangChain4j | Official docs + GitHub examples | Free |
| 9-10 | AI Agents | LangChain4j Tools + DeepLearning.AI | Free |
| 11-12 | Production AI | LangFuse + real project | Free |

---

## The Three Platforms You'll Use Most

1. **[deeplearning.ai](https://deeplearning.ai)** — Andrew Ng's platform. All short courses are free. Best structured AI education available. Start here for concepts.

2. **[docs.spring.io/spring-ai](https://docs.spring.io/spring-ai/reference/)** — Your practical Java implementation reference.

3. **[docs.langchain4j.dev](https://docs.langchain4j.dev)** — Your other Java framework. Read docs, copy examples, build on them.

---

## One Last Honest Thing

At **1-2 hours/day**, you are not slow — you are sustainable. The people who burn out in AI learning try to do everything at once. Pick the next thing on this list, ignore everything else, and finish it before moving on. In 12 months at this pace, you will be genuinely employable as an AI engineer — not because you memorized theory, but because you will have **built real things**.
