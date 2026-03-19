# Complete AI Engineering Roadmap — Revised & Improved
### 1–2 Hours/Day | 12–14 Months | Java + Python

> **Target:** Become a hireable AI Engineer who can build production-grade AI applications, RAG pipelines, agents, and MCP-powered tools.

---

## What Was Wrong With The Original Roadmap (Honest Breakdown)

| Issue | Problem | Fix Applied |
|-------|---------|-------------|
| MCP completely missing | You explicitly said you want to learn MCP — it wasn't mentioned once | Added in Month 10 |
| Every project was FHIR-only | Narrow portfolio = narrow job opportunities | Diverse project themes added |
| No GitHub discipline | Your GitHub IS your portfolio for AI jobs | Explicit from Month 3 onwards |
| Context management underdeveloped | Mentioned once in Month 1, never again | Covered in Month 4 & 6 |
| Evaluation pushed to the end | You can't improve what you can't measure | Introduced in Month 6 |
| Projects too few and too late | You need hands-on practice to retain theory | Projects added every month from Month 3 |

---

## Month 1: AI Literacy — Understand the Landscape

**Goal:** Know what everything means before writing a single line of code. Build mental models, not memorized definitions.

### What to Learn
- What is AI vs ML vs Deep Learning vs Generative AI (they are nested, not separate fields)
- What is an LLM — how it was trained, what tokens are, what a context window is
- What is a prompt and why prompt engineering is a real skill
- What are embeddings and vectors (conceptually — no math yet)
- What is RAG and why it exists (LLMs don't know your private data)
- What is fine-tuning vs RAG — understand the difference early
- Key players: OpenAI, Anthropic, Google (Gemini), Meta (Llama), Mistral
- What is an AI agent and what is MCP (just awareness for now)

### Where to Learn

| Resource | What You Get | Time |
|----------|-------------|------|
| [Andrej Karpathy - Intro to LLMs](https://www.youtube.com/watch?v=zjkBMFhNj_g) | Best 1-hour conceptual LLM overview ever made | 1 hour |
| [3Blue1Brown - Neural Networks playlist](https://www.youtube.com/playlist?list=PLZHQObOWTQDNU6R1_67000Dx_ZCJB-3pi) | Visual, intuitive, builds real understanding | ~3 hours |
| [Google - Generative AI Learning Path](https://www.cloudskillsboost.google/paths/118) | Free, structured, beginner-friendly, no math | ~5 hours |
| [Anthropic - What is MCP?](https://www.anthropic.com/news/model-context-protocol) | Read this to understand MCP exists and why it matters | 30 min |

### ✅ By End of Month 1 You Can
- Explain to someone what an LLM is and how it works conceptually
- Explain the difference between fine-tuning and RAG
- Explain why vector databases exist
- Explain what "hallucination" means and why it happens
- Know what MCP is at a high level

---

## Month 2: Python — Just Enough, Nothing More

**Goal:** Read and write Python confidently for AI tasks. You are a Java developer — Python will feel like a toy language. That's fine. You just need enough to not be blocked.

### How Much Python Do You Need?

As a Java dev, you need roughly **25% of Python** to be productive in AI.

**Must Know:**
- Variables, strings, lists, dictionaries (1 day — you already know these as concepts)
- Functions and classes (1 day — simpler than Java)
- `pip` and virtual environments (like Maven but simpler)
- Reading/writing files, working with JSON
- `import` statements and how packages work
- List comprehensions (very common in AI code)
- `async`/`await` basics
- How to run `.py` files and Jupyter notebooks

**Do NOT waste time on:**
- Django/Flask web frameworks
- Advanced decorators, metaclasses
- Testing frameworks (not yet)
- Data science libraries (numpy, pandas) — only learn when needed

### Where to Learn

**Pick one, finish it completely:**

- **[Python for Java Developers - YouTube search](https://www.youtube.com/results?search_query=python+for+java+developers)** — Best for you. Several 2–3 hour crash courses exist specifically for people who already know Java. Start here.
- **[Python.org official tutorial](https://docs.python.org/3/tutorial/)** — Do chapters 1–9 only. Free.
- **[Codecademy - Learn Python 3](https://www.codecademy.com/learn/learn-python-3)** — More interactive. Free tier is sufficient.

### Monthly Plan

| Week | Focus |
|------|-------|
| Week 1 | Variables, types, lists, dicts, loops, functions — you'll fly through this |
| Week 2 | Classes, file I/O, JSON, pip, virtual environments |
| Week 3 | Jupyter notebooks — how 90% of AI tutorials are written |
| Week 4 | Mini project: script that reads a text file, calls OpenAI API, prints output |

### ✅ By End of Month 2 You Can
- Write a Python script that reads a file, calls an API, prints results
- Run Jupyter notebooks
- Install packages with pip
- Read any AI tutorial on GitHub without being confused

---

## Month 3: Your First LLM App — See It Work

**Goal:** Build real working apps that use an LLM. No theory, just building. Get the dopamine hit early.

### What You'll Build

**Project 1: Basic Chat CLI** *(GitHub: `ai-chat-cli`)*
- A command-line chatbot that takes user input, sends it to an LLM, returns a response
- Build it in Python first, then replicate in Java with Spring AI
- This project teaches you: API calls, system prompts, conversation turns

**Python version:**
```python
from openai import OpenAI

client = OpenAI(api_key="your-key")

def chat(user_message):
    response = client.chat.completions.create(
        model="gpt-4o-mini",  # cheapest model, great for learning
        messages=[
            {"role": "system", "content": "You are a helpful assistant."},
            {"role": "user", "content": user_message}
        ]
    )
    return response.choices[0].message.content

while True:
    user_input = input("You: ")
    print(f"AI: {chat(user_input)}")
```

**Java version with Spring AI:**
```xml
<dependency>
    <groupId>org.springframework.ai</groupId>
    <artifactId>spring-ai-openai-spring-boot-starter</artifactId>
    <version>1.0.0</version>
</dependency>
```

```java
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

### Where to Learn

| Resource | Notes |
|----------|-------|
| [Spring AI Docs](https://docs.spring.io/spring-ai/reference/) | Official, excellent — your Java implementation reference |
| [OpenAI Cookbook](https://cookbook.openai.com) | Python examples, copy-paste friendly |
| [Ollama](https://ollama.com) | Run LLMs locally for FREE — `ollama run llama3.2` |

> **Use Ollama** to run a local model (Llama3.2, Mistral) while learning. It's free, fast, and you won't burn API credits on experiments.

### ✅ By End of Month 3 You Can
- Call an LLM from both Python and Java
- Understand system prompts vs user prompts
- Use Ollama locally for free experimentation
- Have your first GitHub project committed and public

---

## Month 4: Prompt Engineering + Context Management

**Goal:** Learn to talk to LLMs properly. This is a real engineering skill, not a soft skill.

### What to Learn

**Prompt Engineering:**
- System prompts vs user prompts — how each affects behavior
- Few-shot prompting (give examples inside the prompt)
- Chain-of-thought prompting (make the model reason step by step)
- Structured output — make the LLM return JSON you can parse
- Temperature, max_tokens, top_p — what these parameters actually do
- How to reduce hallucinations through prompt design

**Context Management (critical, often ignored):**
- What a context window is and why it has a hard limit
- What happens when you exceed the context window
- Strategies: summarization, sliding window, trimming old messages
- Why context management is a real production engineering problem

### Where to Learn

| Resource | What It Covers |
|----------|---------------|
| [LearnPrompting.org](https://learnprompting.org) | Free, comprehensive, structured |
| [OpenAI Prompt Engineering Guide](https://platform.openai.com/docs/guides/prompt-engineering) | Official best practices |
| [Anthropic Prompt Engineering Docs](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview) | Concepts apply to all models |

### Project 2: Smart Document Summarizer *(GitHub: `doc-summarizer`)*
- Takes a long text document (could be long, exceeds context window)
- Splits it into chunks, summarizes each chunk
- Combines chunk summaries into a final summary
- **Why this project:** Forces you to solve context window limits — a real production problem
- **Stack:** Python + OpenAI or Ollama

### ✅ By End of Month 4 You Can
- Write prompts that produce structured JSON output
- Handle conversations that exceed context window limits
- Tune model parameters for different use cases
- Have Project 2 on GitHub

---

## Month 5: Embeddings and Vector Databases — The Engine of RAG

**Goal:** Understand the core technology that makes RAG possible.

### What to Learn

**Embeddings:**
- Text is converted to a list of numbers (a vector): `"Hello" → [0.23, -0.87, 0.12, ...]`
- Similar text = similar vectors = you can find related content through math
- You use a model to create embeddings (OpenAI has one; or use a free local model via Ollama)

**Vector Databases:**
- Store vectors in a database optimized for similarity search
- `pgvector` — PostgreSQL extension (use what you already know!)
- Others: Chroma (Python, local), Weaviate, Pinecone (cloud)

### Where to Learn

| Resource | Notes |
|----------|-------|
| [pgvector GitHub](https://github.com/pgvector/pgvector) | Add vector search to PostgreSQL — zero new infra |
| [Spring AI Vector Store docs](https://docs.spring.io/spring-ai/reference/api/vectordbs.html) | Java integration |
| [Chroma Getting Started](https://docs.trychroma.com/getting-started) | Python, easiest local setup |
| [DeepLearning.AI - Vector Databases](https://www.deeplearning.ai/short-courses/) | Free short course, highly practical |

### Project 3: Semantic Search Engine *(GitHub: `semantic-search`)*
- Take a set of documents (any topic — tech articles, product descriptions, recipes)
- Embed all documents and store in pgvector or Chroma
- Build a search endpoint: user types a natural language query, returns semantically similar documents
- **Why this project:** Semantic search is NOT keyword search — you'll feel the difference immediately
- **Stack:** Python + Chroma + Ollama embeddings (all free) OR Spring AI + pgvector (Java)

```sql
-- Add to your PostgreSQL
CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE document_embeddings (
    id BIGSERIAL PRIMARY KEY,
    content TEXT,
    source TEXT,
    embedding vector(768)  -- adjust to your embedding model's dimension
);
```

### ✅ By End of Month 5 You Can
- Create embeddings from text using an embedding model
- Store and query vectors in pgvector and Chroma
- Build a working semantic search system
- Explain the math behind cosine similarity (conceptually)

---

## Month 6: Build a Complete RAG Application

**Goal:** Build a full RAG pipeline from scratch. This is the most important month.

### What RAG Looks Like in Code

```
Ingestion Pipeline (runs once or periodically):
  → Load documents (PDF, text, web) 
  → Split into chunks (chunk size matters!)
  → Create embedding for each chunk
  → Store chunks + embeddings in vector DB

Query Pipeline (runs on every user question):
  → User asks a question
  → Create embedding of the question
  → Search vector DB for top-k most similar chunks
  → Build prompt: "Using this context: [chunks], answer: [question]"
  → Send to LLM
  → Return answer to user
```

### What to Learn This Month
- Document loaders (PDF, plain text, web pages)
- Chunking strategies — chunk size and overlap matter more than you think
- Retrieval strategies — top-k, similarity threshold, hybrid search
- How to evaluate RAG quality: is it actually retrieving the right chunks?
- Metrics: context precision, context recall, answer relevance

### Where to Learn

| Resource | Notes |
|----------|-------|
| [Spring AI RAG docs](https://docs.spring.io/spring-ai/reference/api/retrieval-augmented-generation.html) | Your Java implementation guide |
| [LangChain RAG tutorial (Python)](https://python.langchain.com/docs/tutorials/rag/) | Best conceptual walkthrough |
| [DeepLearning.AI - "LangChain: Chat with Your Data"](https://www.deeplearning.ai/short-courses/) | Free, directly teaches RAG |
| [DeepLearning.AI - "Building RAG Agents"](https://www.deeplearning.ai/short-courses/) | Free, builds on the basics |

### Project 4: Personal Knowledge Base Chatbot *(GitHub: `knowledge-base-rag`)*
- Load a set of your own documents (your notes, any PDFs you have, tech documentation)
- Build a RAG pipeline that lets you chat with your documents
- Add source citations — the answer should tell you which document it came from
- **Why this project:** You'll personally use this tool, which forces you to care about quality
- **Stack:** Python + LangChain + Chroma + Ollama (all free) OR Spring AI + pgvector

### Evaluation — Start Now, Not Month 12

Use [RAGAS](https://docs.ragas.io) (free, Python) to measure:
- Context Precision: are the retrieved chunks actually relevant?
- Answer Relevance: does the answer actually answer the question?
- Faithfulness: is the answer grounded in the retrieved chunks, or is it hallucinating?

> Don't skip this. You cannot improve a RAG system you cannot measure.

### ✅ By End of Month 6 You Can
- Build a complete RAG pipeline end-to-end
- Tune chunking strategies
- Evaluate RAG quality with real metrics
- Explain why RAG beats fine-tuning for most production use cases

---

## Month 7–8: LangChain4j — Java AI Framework Deep Dive

**Goal:** Master the Java-native AI framework. Stop reinventing the wheel.

### What is LangChain4j?

Think of it as a production-grade toolkit for Java AI apps. It provides:
- Unified interface to 20+ LLM providers
- Built-in RAG pipeline with document loaders, splitters, and retrievers
- Conversation memory management
- AI Services — annotate a Java interface, LangChain4j implements it with AI
- Tool/function calling

```java
// LangChain4j AI Service — clean, declarative AI integration
interface DocumentAssistant {
    @SystemMessage("You are a document assistant. Answer based on provided context only. If you don't know, say so.")
    String answer(@MemoryId String sessionId, @UserMessage String question);
}

@Bean
DocumentAssistant documentAssistant(ChatLanguageModel model,
                                     ChatMemoryStore memoryStore,
                                     EmbeddingStoreContentRetriever retriever) {
    return AiServices.builder(DocumentAssistant.class)
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
| Spring AI Docs | [docs.spring.io/spring-ai](https://docs.spring.io/spring-ai/reference/) |

### Project 5: Spring Boot RAG API *(GitHub: `springboot-rag-api`)*
- Rebuild your Month 6 RAG project as a proper Spring Boot REST API
- Endpoints: `POST /documents/upload`, `POST /chat`, `GET /chat/history`
- Persistent conversation memory (store in DB, not just in memory)
- Multi-tenant: different users have different document collections
- **Why this project:** This is production-grade architecture — exactly what you'd build in a real job
- **Stack:** Spring Boot + LangChain4j + pgvector + PostgreSQL

### ✅ By End of Month 7–8 You Can
- Build production-quality AI APIs in Spring Boot
- Manage conversation memory correctly
- Use LangChain4j's AI Services pattern
- Have a solid Java AI project in your portfolio

---

## Month 9–10: AI Agents, Tool Calling, and MCP

**Goal:** Build LLMs that take actions, not just answer questions. Learn MCP properly.

### Part 1: Agents and Tool Calling

An agent is an LLM that can:
1. Decide which tool to use from a set of available tools
2. Call that tool (an API, a function, a database query)
3. Use the result to decide the next step
4. Loop until it has a final answer

Your Spring Boot REST APIs become "tools" an AI agent can call automatically.

```java
// LangChain4j — define a tool the LLM can call
public class WeatherTool {
    @Tool("Get the current weather for a given city")
    public String getWeather(@P("The city name") String city) {
        // call a real weather API
        return weatherApiService.getCurrentWeather(city);
    }
}

// The LLM decides when and how to call this — you don't hardcode when
```

### Part 2: MCP — Model Context Protocol

MCP is how you give AI agents structured, safe access to external tools and data sources. Built by Anthropic, now an industry standard.

**What MCP solves:** Instead of every AI framework inventing its own way to connect tools, MCP is a universal protocol — like USB for AI integrations.

**What to Learn:**
- What MCP is and the client-server architecture
- How to build an MCP server that exposes tools
- How to connect an MCP client (Claude, any agent) to your MCP server
- How MCP compares to raw function/tool calling

### Where to Learn

| Resource | Notes |
|----------|-------|
| [Anthropic MCP Docs](https://modelcontextprotocol.io) | Official spec and tutorials — start here |
| [MCP Python SDK](https://github.com/modelcontextprotocol/python-sdk) | Build MCP servers in Python |
| [MCP Java SDK](https://github.com/modelcontextprotocol/java-sdk) | Build MCP servers in Java |
| [DeepLearning.AI - "AI Agents in LangGraph"](https://www.deeplearning.ai/short-courses/) | Free, teaches agent loop patterns |
| [Anthropic - Building Effective Agents](https://www.anthropic.com/research/building-effective-agents) | Essential reading — written by Anthropic |

### Project 6: AI Agent with Tool Calling *(GitHub: `ai-agent-tools`)*
- Build an agent that can: search the web, check the weather, read/write files
- The LLM decides which tools to call and in what order
- Implement with LangChain4j tools in Java
- **Stack:** Spring Boot + LangChain4j + any free public APIs

### Project 7: MCP Server *(GitHub: `mcp-server`)*
- Build a custom MCP server in Python (Python SDK is more mature)
- Expose 2–3 tools: e.g., "search documents", "summarize text", "query database"
- Connect it to Claude Desktop and test it works
- **Why this project:** MCP servers are increasingly in demand — this is forward-looking portfolio work

### ✅ By End of Month 9–10 You Can
- Build AI agents that call real APIs and tools
- Understand the agent reasoning loop (ReAct pattern)
- Build and deploy an MCP server
- Connect external AI clients to your MCP server

---

## Month 11–12: Production, Observability, Evaluation

**Goal:** Learn to run AI systems reliably in production. Theory is useless if your system breaks.

### What to Learn
- **Observability:** Trace what your LLM is actually doing — LangFuse, LangSmith
- **Cost management:** Log token usage, estimate costs, add caching
- **Caching:** Don't call the LLM twice for the same query — semantic caching
- **Guardrails:** Detect and prevent prompt injection attacks
- **RAG evaluation at scale:** Automate quality checks with RAGAS
- **Streaming responses:** Return LLM output token by token (better UX)

### Where to Learn

| Resource | Notes |
|----------|-------|
| [LangFuse](https://langfuse.com) | Open-source LLM observability — free self-hosted |
| [LangSmith](https://smith.langchain.com) | LangChain's observability platform |
| [RAGAS](https://docs.ragas.io) | Automated RAG evaluation framework |

### Project 8: Production-Grade AI Application *(GitHub: `ai-production-app`)*

Build a complete, deployable AI application with:

1. **Core:** RAG-powered Q&A over a meaningful document set (pick something you care about)
2. **Memory:** Multi-turn conversation with persistent history
3. **Agents:** At least one agent that calls external tools
4. **MCP:** Expose app capabilities as an MCP server
5. **Observability:** LangFuse tracing — every LLM call logged
6. **Evaluation:** RAGAS metrics running on a test set
7. **Deployment:** Docker Compose setup with Postgres + pgvector + your app

**Stack:** Spring Boot + LangChain4j + pgvector + LangFuse + optional MCP server

> This is your capstone project. It should take the whole month. Polish it. Write a good README. This is what you show in interviews.

### ✅ By End of Month 11–12 You Can
- Deploy a production AI application
- Trace and debug LLM behavior in production
- Measure and improve RAG quality over time
- Show a real, complete project in interviews

---

## Summary Table — Full Revised Roadmap

| Month | Topic | Key Deliverable | Stack |
|-------|-------|----------------|-------|
| 1 | AI Literacy | Conceptual understanding of LLMs, RAG, MCP | Reading/watching |
| 2 | Python Basics | Can read/write Python for AI tasks | Python |
| 3 | First LLM App | Project 1: Chat CLI | Python + Java/Spring AI |
| 4 | Prompt Eng + Context | Project 2: Doc Summarizer | Python + OpenAI/Ollama |
| 5 | Embeddings + Vector DB | Project 3: Semantic Search | Python + Chroma / Spring AI + pgvector |
| 6 | RAG Application | Project 4: Knowledge Base Chatbot | Python + LangChain / Spring AI |
| 7–8 | LangChain4j | Project 5: Spring Boot RAG API | Spring Boot + LangChain4j |
| 9–10 | Agents + MCP | Projects 6 & 7: Agent + MCP Server | Spring Boot + Python MCP SDK |
| 11–12 | Production AI | Project 8: Capstone App | Spring Boot + full stack |

---

## Your GitHub Portfolio After 12 Months

By the end you will have **8 public projects**:

1. `ai-chat-cli` — First LLM app (Python + Java)
2. `doc-summarizer` — Context window handling
3. `semantic-search` — Embeddings + vector search
4. `knowledge-base-rag` — Full RAG pipeline
5. `springboot-rag-api` — Production Java AI API
6. `ai-agent-tools` — Tool-calling agent
7. `mcp-server` — Custom MCP server
8. `ai-production-app` — Capstone with full production stack

This portfolio demonstrates progression. A recruiter can see you went from zero to building production AI systems.

---

## The Three Platforms You'll Use Most

1. **[deeplearning.ai](https://deeplearning.ai)** — Andrew Ng's platform. All short courses are free. Best structured AI education available. Use this for concepts and theory throughout.

2. **[docs.langchain4j.dev](https://docs.langchain4j.dev)** — Your primary Java AI framework. Read docs, copy examples, build on them.

3. **[modelcontextprotocol.io](https://modelcontextprotocol.io)** — The official MCP documentation. Required reading by Month 9.

---

## One Hard Truth

**8–12 months at 1–2 hours/day is the timeline if you are consistent.** Most people are not consistent. They study hard for 2 weeks, miss a week, lose momentum, restart from the beginning, and never finish. The biggest risk to this roadmap is not the difficulty — it's your consistency.

Build every project. Commit every project to GitHub. Do this even when the project feels small or unimpressive. The compounding effect of 8 completed projects is what makes you hireable — not knowing the theory.

> **Rule:** You do not move to the next month until the current month's project is on GitHub. No exceptions.
