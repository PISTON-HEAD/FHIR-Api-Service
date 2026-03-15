# The Complete AI Learning Roadmap — From Zero to AI Engineer

### For a Java/Spring Boot Developer | 1–1.5 Hours/Day | ~12-14 Months

---

## The Right Mindset Before You Begin

- You are **NOT** learning to become a data scientist or ML researcher
- Your goal: **Build AI-powered applications** using your existing Java skills
- Think of AI APIs like REST APIs — you call them, they return results
- RAG and LLM apps are software engineering with AI components — your skills transfer directly
- At 1-1.5 hrs/day, you will learn **slower but deeper** — that is an advantage, not a disadvantage
- **One topic at a time. Finish before moving on. Never skip ahead.**

---

## How AI Fits Together — The Big Picture

```
Artificial Intelligence (broadest — any smart software)
  └── Machine Learning (learns from data instead of being programmed)
       └── Deep Learning (uses neural networks with many layers)
            └── Generative AI (creates new content — text, images, code)
                 └── Large Language Models (generates text — GPT, Claude, Llama)
                      └── RAG (gives LLMs access to YOUR private data)
```

You will work mostly at the bottom three layers. You do NOT need to deeply understand everything above — just enough to know what each layer means.

---

## How to Use This Roadmap

Each month has:

- **Goal** — What you're trying to achieve
- **Weekly breakdown** — Exactly what to learn each week
- **Resources** — Exactly where to learn (in order)
- **Milestone check** — How you know you're ready to move on
- **Project** — Something to build to cement the knowledge

**Daily rhythm:** 1 hour learning + 15-30 min practicing/coding. On weekends, do the mini-projects.

---

---

# ════════════════════════════════════════════════

# PHASE 1: FOUNDATIONS (Months 1-2)

# ════════════════════════════════════════════════

---

## Month 1: AI Literacy — Understand Everything Conceptually

**Goal:** Know what every AI term means before writing a single line of AI code.

---

### Week 1: What Is AI and Machine Learning?

**What exactly to learn:**

- What AI is — software that mimics human intelligence
- What Machine Learning is — software that learns patterns from data instead of hard-coded rules
- The key difference:
  - Traditional Programming: `Input + Rules → Output`
  - Machine Learning: `Input + Output → Rules` (it figures out the rules itself)
- What supervised, unsupervised, and reinforcement learning mean (concepts only — no math)
- What a "model" is — a trained file that can make predictions
- What "training" vs "inference" means — training = teaching the model, inference = using it

**Where to learn — do these in order:**

| #   | Resource                                                                                                 | Type  | Time    |
| --- | -------------------------------------------------------------------------------------------------------- | ----- | ------- |
| 1   | [But what is a neural network? — 3Blue1Brown](https://www.youtube.com/watch?v=aircAruvnKk)               | Video | 19 min  |
| 2   | [Machine Learning explained in 5 minutes — IBM](https://www.youtube.com/watch?v=HgBpFaATdoA)             | Video | 5 min   |
| 3   | [Google's Introduction to ML](https://developers.google.com/machine-learning/intro-to-ml)                | Read  | 1-2 hrs |
| 4   | [Gradient descent, how neural networks learn — 3Blue1Brown](https://www.youtube.com/watch?v=IHZwWFHWa-w) | Video | 21 min  |

**Daily plan (Mon-Fri):**

- Day 1: Watch 3Blue1Brown neural network video. Watch it twice.
- Day 2: Watch IBM video + read Google ML Introduction, Part 1
- Day 3: Continue Google ML Introduction, Part 2
- Day 4: Watch 3Blue1Brown gradient descent video
- Day 5: Re-read any unclear sections. Write down what you learned in your own words.

**Milestone check — you should be able to say:**

> "Machine learning takes lots of examples, finds patterns, and saves those patterns in a model. When you give the model new data, it applies those patterns to make predictions. A neural network is one type of model that's inspired by how brain neurons connect."

---

### Week 2: What Is Deep Learning and Transformers?

**What exactly to learn:**

- What a neural network is — layers of connected nodes that transform input into output
- What "deep" means — many layers in the neural network
- What each layer does — detects increasingly complex patterns
- **What a Transformer is** — the architecture behind ALL modern LLMs (GPT, Claude, Llama, Gemini)
- Why Transformers changed everything — they process words in parallel and understand relationships between distant words
- What "attention" means — the mechanism that lets a model know which words in a sentence relate to each other

**Where to learn — do these in order:**

| #   | Resource                                                                                                     | Type  | Time   |
| --- | ------------------------------------------------------------------------------------------------------------ | ----- | ------ |
| 1   | [But what is a GPT? Visual intro to transformers — 3Blue1Brown](https://www.youtube.com/watch?v=wjZofJX0v4M) | Video | 27 min |
| 2   | [Attention in transformers, visually explained — 3Blue1Brown](https://www.youtube.com/watch?v=eMlx5fFNoYc)   | Video | 26 min |
| 3   | [The Illustrated Transformer — Jay Alammar](https://jalammar.github.io/illustrated-transformer/)             | Blog  | 1 hr   |
| 4   | [Andrej Karpathy — Intro to Large Language Models](https://www.youtube.com/watch?v=zjkBMFhNj_g)              | Video | 1 hr   |

**Daily plan:**

- Day 1: Watch "But what is a GPT?" — pause and rewind when confused
- Day 2: Watch "Attention in transformers"
- Day 3: Read "The Illustrated Transformer" — focus on diagrams, skip math
- Day 4-5: Watch Andrej Karpathy's Intro to LLMs (split across 2 days if needed)

**Milestone check:**

> "Deep learning uses neural networks with many layers. The 'Transformer' architecture (invented in 2017) is the breakthrough behind all modern AI chatbots. It uses 'attention' — a mechanism that lets the model understand which words relate to each other, even when far apart. GPT, Claude, Llama — all are Transformers."

---

### Week 3: What Is Generative AI and How Do LLMs Work?

**What exactly to learn:**

- What Generative AI is — AI that **creates** new content (text, images, code), not just classifies
- What a Large Language Model (LLM) is — a transformer trained on billions of text documents
- How LLMs generate text — **next token prediction** (it predicts one word/token at a time)
- What a **token** is — a word or piece of a word ("unhappiness" = ["un", "happi", "ness"])
- What a **context window** is — how much text the model can see at once (its short-term memory)
- What **temperature** is — randomness setting: 0 = deterministic, 1 = creative
- What **hallucination** is — the model confidently says something wrong because it's predicting patterns, not looking up facts
- The major LLM providers:
  - **OpenAI:** GPT-4, GPT-4o (most popular)
  - **Anthropic:** Claude 3.5, Claude 4 (excellent for coding)
  - **Google:** Gemini (integrated with Google ecosystem)
  - **Meta:** Llama 3 (open-source, free to use)
  - **Mistral:** Open-source, European

**Where to learn — do these in order:**

| #   | Resource                                                                                                         | Type        | Time   |
| --- | ---------------------------------------------------------------------------------------------------------------- | ----------- | ------ |
| 1   | [Introduction to Generative AI — Google Cloud](https://www.cloudskillsboost.google/course_templates/536)         | Course      | 45 min |
| 2   | [Introduction to Large Language Models — Google Cloud](https://www.cloudskillsboost.google/course_templates/539) | Course      | 45 min |
| 3   | [OpenAI Tokenizer](https://platform.openai.com/tokenizer)                                                        | Interactive | 15 min |
| 4   | [How ChatGPT Works — Computerphile](https://www.youtube.com/watch?v=4K0bfOfrxKA)                                 | Video       | 20 min |

**Daily plan:**

- Day 1-2: Complete Google "Intro to Generative AI" course
- Day 3-4: Complete Google "Intro to LLMs" course
- Day 5: Play with the OpenAI tokenizer — paste different texts, see how they split. Watch the Computerphile video.

**Milestone check:**

> "An LLM is a giant transformer neural network trained on most of the internet's text. It works by predicting the next word. It doesn't 'know' things — it has learned statistical patterns. Hallucinations happen because it generates plausible-sounding text even without real information. The context window limits how much text it can consider at once."

---

### Week 4: What Is Prompt Engineering, RAG, and Fine-Tuning? (Theory Only)

**What exactly to learn:**

- The three main ways to customize an LLM:
  1. **Prompt Engineering** — Craft your input carefully to get better output. Cheapest, easiest. Always do this first.
  2. **RAG (Retrieval Augmented Generation)** — Search your own documents for relevant info, then give it to the LLM alongside the question. Medium effort, most practical for business use.
  3. **Fine-Tuning** — Retrain the model on your specific data. Expensive, rarely needed. Only when you need to change the model's fundamental behavior.
- When to use each:
  - **Prompt Engineering:** Always. Every interaction with an LLM.
  - **RAG:** When the LLM needs to answer based on YOUR private data (company docs, patient records, legal contracts)
  - **Fine-Tuning:** When you need to change the model's style or teach it a new task format. Rarely needed.
- What **embeddings** are conceptually — turning text into numbers so you can compare similarity
- What a **vector database** is conceptually — a database optimized for "find things similar to X"

**Where to learn — do these in order:**

| #   | Resource                                                                                                               | Type  | Time   |
| --- | ---------------------------------------------------------------------------------------------------------------------- | ----- | ------ |
| 1   | [What is RAG? — IBM](https://www.youtube.com/watch?v=T-D1OfcDW1M)                                                      | Video | 7 min  |
| 2   | [What are Vector Databases? — IBM](https://www.youtube.com/watch?v=klTvEwg3oJ4)                                        | Video | 8 min  |
| 3   | [What are AI Embeddings? — IBM](https://www.youtube.com/watch?v=wgfSDrqYMJ4)                                           | Video | 8 min  |
| 4   | [What is RAG — AWS article](https://aws.amazon.com/what-is/retrieval-augmented-generation/)                            | Read  | 30 min |
| 5   | [RAG or Fine-Tuning? — Anthropic](https://docs.anthropic.com/en/docs/build-with-claude/retrieval-augmented-generation) | Read  | 20 min |
| 6   | [What is Generative AI — IBM article](https://www.ibm.com/think/topics/generative-ai)                                  | Read  | 30 min |

**Daily plan:**

- Day 1: Watch all 3 IBM videos (total ~23 min). Re-watch any that weren't clear.
- Day 2: Read AWS RAG article thoroughly
- Day 3: Read Anthropic RAG vs Fine-Tuning article
- Day 4: Read IBM Generative AI article
- Day 5: Review everything. Write a one-paragraph summary of RAG in your own words.

**Milestone check:**

> "RAG works like this: Before sending a question to the LLM, you first search your own documents for relevant information, then attach that information to the prompt. The LLM answers based on YOUR data instead of making things up. Embeddings convert text into numbers (vectors) so similar texts have similar numbers. A vector database stores these and quickly finds 'what in my database is most similar to this question?' This is better than fine-tuning because it's cheaper, updatable, and the LLM can cite its sources."

---

### Month 1 Weekend Project: AI Landscape Map

Create a personal document (Notion, Google Doc, or just a text file) that maps out:

1. All the AI terms you learned and their one-line definitions
2. The relationship between AI → ML → Deep Learning → GenAI → LLMs → RAG
3. The major LLM providers and their models
4. When to use Prompt Engineering vs RAG vs Fine-Tuning

This becomes your reference sheet. You'll add to it every month.

---

---

## Month 2: Python — Just Enough for AI, Nothing More

**Goal:** Read and write Python confidently for AI tasks. You do NOT need to become a Python expert.

---

### How Much Python Do You Actually Need?

As a Java developer, you need roughly **20-25% of Python**. The CONCEPTS are identical — only the SYNTAX differs.

**You MUST know:** Variables, strings, lists, dicts, functions, classes, file I/O, JSON, pip, virtual environments, list comprehensions, Jupyter notebooks.

**You do NOT need:** Django/Flask, advanced OOP, decorators (yet), system programming, testing frameworks (yet), async/await (yet).

### Java ↔ Python Quick Translation

| Java                      | Python             | Notes                       |
| ------------------------- | ------------------ | --------------------------- |
| `String name = "John";`   | `name = "John"`    | No type declarations        |
| `int[] arr = {1,2,3};`    | `arr = [1, 2, 3]`  | Lists are dynamic           |
| `HashMap<String,Integer>` | `d = {"key": 1}`   | Dictionaries                |
| `for (int i : list)`      | `for i in list:`   | Indentation replaces braces |
| `public void method()`    | `def method():`    | No access modifiers         |
| `System.out.println()`    | `print()`          |                             |
| `import java.util.List;`  | `import os`        |                             |
| `new MyClass()`           | `MyClass()`        | No `new` keyword            |
| `null`                    | `None`             |                             |
| `true / false`            | `True / False`     | Capitalized                 |
| Maven / Gradle            | pip                | Package manager             |
| `pom.xml`                 | `requirements.txt` | Dependency file             |
| `this`                    | `self`             | Reference to current object |
| `try { } catch { }`       | `try: except:`     | Error handling              |

---

### Week 1: Python Basics (Day 1-5)

**What to learn and practice:**

**Day 1: Variables, Strings, Print**

```python
# No type declarations needed
name = "John Smith"
age = 45
is_active = True

# f-strings (like String.format in Java, but better)
print(f"Patient: {name}, Age: {age}")

# String methods
parts = "John,Smith,45".split(",")       # ["John", "Smith", "45"]
joined = " ".join(parts)                  # "John Smith 45"
cleaned = "  hello  ".strip()             # "hello"
```

**Day 2: Lists and Dictionaries**

```python
# Lists (like ArrayList)
patients = ["John", "Jane", "Bob"]
patients.append("Alice")
first = patients[0]           # "John"
subset = patients[1:3]        # ["Jane", "Bob"] — slicing!

# Dictionaries (like HashMap)
patient = {
    "name": "John Smith",
    "age": 45,
    "conditions": ["hypertension", "diabetes"]
}
print(patient["name"])        # "John Smith"
print(patient.get("email", "N/A"))  # "N/A" — safe access with default
```

**Day 3: Control Flow and Loops**

```python
# if/elif/else — indentation matters!
if age > 65:
    print("Senior patient")
elif age > 18:
    print("Adult patient")
else:
    print("Minor patient")

# for loop
for name in patients:
    print(f"Patient: {name}")

# for with index
for i, name in enumerate(patients):
    print(f"{i}: {name}")

# while loop
count = 0
while count < 5:
    count += 1
```

**Day 4: Functions**

```python
# Basic function
def greet(name):
    return f"Hello, {name}"

# Default parameters
def create_patient(name, age, active=True):
    return {"name": name, "age": age, "active": active}

# *args and **kwargs — you'll SEE these in AI code constantly
def log(*args, **kwargs):
    print(args)       # tuple of positional args
    print(kwargs)     # dict of keyword args

log("hello", "world", level="info", source="api")
```

**Day 5: Practice — combine everything**

```python
# Mini exercise: patient registry
patients = []

def add_patient(name, age, condition):
    patients.append({"name": name, "age": age, "condition": condition})

def find_by_condition(condition):
    return [p for p in patients if p["condition"] == condition]

add_patient("John", 45, "hypertension")
add_patient("Jane", 32, "diabetes")
add_patient("Bob", 58, "hypertension")

print(find_by_condition("hypertension"))
# [{"name": "John", ...}, {"name": "Bob", ...}]
```

---

### Week 2: Intermediate Python (Day 6-10)

**Day 6: Classes**

```python
class Patient:
    def __init__(self, name, age):      # Constructor (__init__ = Java constructor)
        self.name = name                # self = Java's this
        self.age = age
        self.conditions = []

    def add_condition(self, condition):
        self.conditions.append(condition)

    def summary(self):
        return f"{self.name}, age {self.age}, conditions: {', '.join(self.conditions)}"

p = Patient("John Smith", 45)           # No 'new' keyword
p.add_condition("hypertension")
print(p.summary())
```

**Day 7: File I/O and JSON**

```python
import json

# Write JSON
patients = [{"name": "John", "age": 45}, {"name": "Jane", "age": 32}]
with open("patients.json", "w") as f:
    json.dump(patients, f, indent=2)

# Read JSON
with open("patients.json") as f:
    loaded = json.load(f)
    for p in loaded:
        print(f"{p['name']}: {p['age']}")

# Read plain text
with open("notes.txt") as f:
    content = f.read()          # entire file as string
    # OR
    lines = f.readlines()      # list of lines
```

**Day 8: Error Handling**

```python
# try/except (like Java try/catch)
try:
    result = 10 / 0
except ZeroDivisionError as e:
    print(f"Error: {e}")
except Exception as e:
    print(f"Unexpected: {e}")
finally:
    print("Always runs")
```

**Day 9: List Comprehensions — THE Python Superpower for AI**

```python
# Instead of this (Java-style):
results = []
for x in range(10):
    if x > 5:
        results.append(x * 2)

# Write this (Pythonic):
results = [x * 2 for x in range(10) if x > 5]

# Dictionary comprehension
word_lengths = {word: len(word) for word in ["hello", "world", "python"]}

# Very common in AI code:
embeddings = [get_embedding(doc) for doc in documents]
filtered = [doc for doc, score in results if score > 0.8]
```

**Day 10: Lambda, zip, enumerate, map**

```python
# Lambda — anonymous function
double = lambda x: x * 2
sorted_patients = sorted(patients, key=lambda p: p["age"])

# zip — combine two lists
names = ["John", "Jane"]
ages = [45, 32]
for name, age in zip(names, ages):
    print(f"{name}: {age}")

# enumerate — loop with index
for i, item in enumerate(["a", "b", "c"]):
    print(f"{i}: {item}")
```

---

### Week 3: Pip, Virtual Environments, Jupyter Notebooks

**Day 11-12: Package Management**

```bash
# Install Python 3.11+ from python.org
# Verify installation:
python --version

# Pip (like Maven but simpler)
pip install openai                  # Install a package
pip install requests numpy          # Install multiple
pip install -r requirements.txt     # Install from file
pip list                            # See installed packages
pip freeze > requirements.txt      # Save current packages to file

# Virtual Environments (like isolated Maven projects)
python -m venv ai-env               # Create environment
ai-env\Scripts\activate             # Activate on Windows
pip install openai                  # Installs ONLY in this env
deactivate                          # Leave environment
```

**Day 13-15: Jupyter Notebooks — Critical for AI**

90% of AI tutorials are Jupyter notebooks. You MUST be comfortable with them.

```bash
pip install jupyter
# Then in VS Code: Install the "Jupyter" extension
# Create a new file with .ipynb extension
# Each "cell" runs independently — perfect for experimenting
```

**Where to learn:**

1. [Real Python — Pip Guide](https://realpython.com/what-is-pip/) — 30 min
2. [Real Python — Virtual Environments](https://realpython.com/python-virtual-environments-a-primer/) — 30 min
3. [VS Code Jupyter Guide](https://code.visualstudio.com/docs/datascience/jupyter-notebooks) — Do the walkthrough

---

### Week 4: Python Practice — Build 3 Mini Projects

**Project 1: Patient JSON Processor**

```python
import json

with open("patients.json") as f:
    patients = json.load(f)

# Find patients over 50
seniors = [p for p in patients if p["age"] > 50]
print(f"Found {len(seniors)} senior patients")

for p in seniors:
    print(f"  {p['name']}, age {p['age']}")
```

**Project 2: REST API Caller (you know REST from Java!)**

```python
import requests

response = requests.get("https://jsonplaceholder.typicode.com/posts/1")
data = response.json()
print(f"Title: {data['title']}")

# POST request
new_post = {"title": "FHIR Patient", "body": "Patient data", "userId": 1}
response = requests.post("https://jsonplaceholder.typicode.com/posts", json=new_post)
print(f"Created: {response.status_code}")
```

**Project 3: Word Frequency Counter**

```python
from collections import Counter

with open("document.txt") as f:
    words = f.read().lower().split()

common = Counter(words).most_common(10)
for word, count in common:
    print(f"{word}: {count}")
```

---

### Where to Learn Python — Pick ONE Resource

| Option                     | Best For                           | Link                                                                                                                                                | Time    |
| -------------------------- | ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| **Option A (RECOMMENDED)** | Java devs wanting the fastest path | [Real Python — Python for Java Developers](https://realpython.com/java-vs-python/) + [Real Python Basics](https://realpython.com/tutorials/basics/) | ~15 hrs |
| **Option B**               | Structured, interactive learners   | [Codecademy — Learn Python 3](https://www.codecademy.com/learn/learn-python-3) (free tier)                                                          | ~25 hrs |
| **Option C**               | Video learners                     | [Corey Schafer — Python for Beginners](https://www.youtube.com/playlist?list=PL-osiE80TeTskrapNbzXhwoFUiLCjGgY7) (videos 1-20)                      | ~10 hrs |

**Milestone check — you should be able to:**

- Write a Python script that reads a JSON file, processes data, and outputs results
- Install packages with pip and use virtual environments
- Create and run Jupyter notebooks in VS Code
- Read any AI tutorial code on GitHub without confusion

---

---

# ════════════════════════════════════════════════

# PHASE 2: FIRST AI CODE (Months 3-4)

# ════════════════════════════════════════════════

---

## Month 3: Your First LLM Application — Write Code That Talks to AI

**Goal:** Call an LLM from both Python and Java. Build a working chatbot.

---

### Week 1: Setup — Get Access to an LLM

**Step 1: Install Ollama (FREE, runs on your PC — start here)**

1. Download from [ollama.com](https://ollama.com)
2. Install it
3. Open terminal: `ollama run llama3.2`
4. You now have a local LLM. Chat with it. Ask it about FHIR. Free forever.

**Step 2: Get an API key (for cloud models later)**

| Provider          | Free Tier          | Sign Up                                            |
| ----------------- | ------------------ | -------------------------------------------------- |
| **Ollama**        | Unlimited, local   | [ollama.com](https://ollama.com)                   |
| **OpenAI**        | $5 credit          | [platform.openai.com](https://platform.openai.com) |
| **Google Gemini** | Generous free tier | [aistudio.google.com](https://aistudio.google.com) |

**Step 3: Set up a Python project**

```bash
mkdir ai-learning
cd ai-learning
python -m venv venv
venv\Scripts\activate
pip install openai numpy
```

---

### Week 2: Call an LLM in Python

```python
from openai import OpenAI

# Using Ollama (free, local) — same API format as OpenAI!
client = OpenAI(
    base_url="http://localhost:11434/v1",
    api_key="not-needed"
)

response = client.chat.completions.create(
    model="llama3.2",
    messages=[
        {"role": "system", "content": "You are a helpful medical assistant."},
        {"role": "user", "content": "What is FHIR in healthcare?"}
    ]
)

print(response.choices[0].message.content)
```

**Key concepts to understand from this code:**

- `system` message — tells the LLM how to behave (its persona/instructions)
- `user` message — the actual question
- `assistant` message — the LLM's response (used in conversation history)
- `model` — which LLM to use
- The response is an object — you access `choices[0].message.content` for the text

**Where to learn:**

1. [OpenAI API Quickstart](https://platform.openai.com/docs/quickstart) — Follow step by step
2. [Ollama GitHub](https://github.com/ollama/ollama) — Setup and model list

---

### Week 3: Call an LLM in Java with Spring AI

Since you know Spring Boot, this will feel natural.

**Add to your pom.xml:**

```xml
<dependency>
    <groupId>org.springframework.ai</groupId>
    <artifactId>spring-ai-openai-spring-boot-starter</artifactId>
</dependency>
```

**Simple chat endpoint:**

```java
@RestController
public class ChatController {

    private final ChatClient chatClient;

    public ChatController(ChatClient.Builder builder) {
        this.chatClient = builder.build();
    }

    @GetMapping("/chat")
    public String chat(@RequestParam String message) {
        return chatClient.prompt()
            .system("You are a helpful medical assistant.")
            .user(message)
            .call()
            .content();
    }
}
```

**Where to learn:**

1. [Spring AI Getting Started](https://docs.spring.io/spring-ai/reference/getting-started.html) — Official quickstart
2. [Spring AI Reference Docs](https://docs.spring.io/spring-ai/reference/) — Full reference

---

### Week 4: Build a Chatbot with Conversation Memory

**The key insight:** LLMs are stateless. Each API call is independent. To have a "conversation," you must send the FULL chat history every time.

```python
from openai import OpenAI

client = OpenAI(base_url="http://localhost:11434/v1", api_key="na")

# This list IS the memory
messages = [
    {"role": "system", "content": "You are a FHIR healthcare expert. Be concise."}
]

print("FHIR Assistant (type 'quit' to exit)")
print("-" * 40)

while True:
    user_input = input("\nYou: ")
    if user_input.lower() == "quit":
        break

    # Add user message to history
    messages.append({"role": "user", "content": user_input})

    # Send FULL history to LLM
    response = client.chat.completions.create(
        model="llama3.2",
        messages=messages
    )

    # Get response and add to history
    assistant_msg = response.choices[0].message.content
    messages.append({"role": "assistant", "content": assistant_msg})

    print(f"\nAssistant: {assistant_msg}")
```

**🏗️ Month 3 Project: FHIR Chatbot**
Build a chatbot that:

1. Knows about FHIR (via system prompt)
2. Remembers conversation history
3. Can answer follow-up questions

Test it by asking: "What is a Patient resource?" then "What fields does it have?" — the second question should work because it remembers context.

**Milestone check:**

- You can call an LLM from both Python and Java
- You understand system/user/assistant message roles
- You can maintain conversation history
- You can run models locally with Ollama (free)

---

---

## Month 4: Prompt Engineering — The Most Underrated AI Skill

**Goal:** Learn to talk to LLMs effectively. Bad prompts = bad results. Good prompts = magic.

---

### Week 1: Core Techniques

**1. Zero-shot prompting** — Just ask directly

```
What is FHIR?
```

**2. Few-shot prompting** — Provide examples so the LLM understands the pattern

```
Convert patient info to FHIR JSON:

Input: John Smith, born 1990-05-15
Output: {"resourceType": "Patient", "name": [{"family": "Smith", "given": ["John"]}], "birthDate": "1990-05-15"}

Input: Jane Doe, born 1985-03-22
Output: {"resourceType": "Patient", "name": [{"family": "Doe", "given": ["Jane"]}], "birthDate": "1985-03-22"}

Input: Bob Wilson, born 1978-11-03
Output:
```

**3. Chain-of-thought** — Ask the LLM to reason step by step

```
A patient has: chest pain, shortness of breath, elevated troponin levels.

Think through this step by step:
1. What conditions could cause ALL these symptoms together?
2. Which is the most likely diagnosis?
3. What FHIR resources would you need to document this encounter?
```

**4. Role prompting** — Give the LLM a specific identity

```
You are a senior clinical informaticist with 15 years of experience
in FHIR R4 implementation at large hospital systems.

Review this FHIR Patient resource for errors, missing required fields,
and best practice violations.
```

**5. Structured output** — Force JSON or specific formats

```
Analyze this patient record and respond in EXACTLY this JSON format:
{
  "risk_level": "low|medium|high",
  "primary_conditions": ["condition1", "condition2"],
  "recommended_actions": ["action1", "action2"],
  "urgency": "routine|urgent|emergency"
}
Do not include any text outside the JSON.
```

---

### Week 2: Advanced Techniques

**What to learn:**

- System prompt vs user prompt — system sets behavior, user asks questions
- Temperature — 0 for factual accuracy, 0.7 for creative writing
- Max tokens — control response length so you don't waste money
- JSON mode — some APIs have a dedicated mode for guaranteed JSON output
- Multi-turn prompt design — building complex conversations

**Where to learn — do ALL of these:**

| #   | Resource                                                                                                                   | Type          | Time     |
| --- | -------------------------------------------------------------------------------------------------------------------------- | ------------- | -------- |
| 1   | [LearnPrompting.org — Introduction + Basics + Intermediate](https://learnprompting.org/docs/introduction)                  | Interactive   | ~4-5 hrs |
| 2   | [OpenAI Prompt Engineering Guide](https://platform.openai.com/docs/guides/prompt-engineering)                              | Official docs | ~1 hr    |
| 3   | [Anthropic Prompt Engineering Tutorials](https://docs.anthropic.com/en/docs/build-with-claude/prompt-engineering/overview) | Official docs | ~2 hrs   |

---

### Week 3-4: Practice — Build a FHIR Resource Generator

**🏗️ Month 4 Project: FHIR Resource Generator**

Build a system where:

1. User describes a patient in natural English
2. Your prompt engineering produces valid FHIR R4 JSON
3. Bonus: Your Java code validates the output against FHIR specs

```python
from openai import OpenAI

client = OpenAI(base_url="http://localhost:11434/v1", api_key="na")

system_prompt = """You are a FHIR R4 resource generator.

When given a patient description in natural language, output a valid FHIR R4
Patient resource in JSON format.

Rules:
1. Always include resourceType, name, birthDate, gender
2. Include identifiers if mentioned
3. Include telecom (phone/email) if mentioned
4. Use proper FHIR coding systems
5. Output ONLY valid JSON, no explanations

Example:
Input: "45-year-old male named John Smith, born Jan 15 1980, MRN 12345"
Output:
{
  "resourceType": "Patient",
  "identifier": [{"system": "http://hospital.example/mrn", "value": "12345"}],
  "name": [{"family": "Smith", "given": ["John"]}],
  "gender": "male",
  "birthDate": "1980-01-15"
}"""

def generate_fhir_patient(description):
    response = client.chat.completions.create(
        model="llama3.2",
        messages=[
            {"role": "system", "content": system_prompt},
            {"role": "user", "content": description}
        ],
        temperature=0  # Deterministic for structured output
    )
    return response.choices[0].message.content

# Test it
result = generate_fhir_patient(
    "32-year-old female named Jane Doe, born March 22 1993, "
    "phone 555-0123, email jane@example.com, MRN A789"
)
print(result)
```

**Milestone check:**

- You can write effective prompts using zero-shot, few-shot, chain-of-thought, and role techniques
- You know when to use low vs high temperature
- You can make an LLM output structured JSON reliably

---

---

# ════════════════════════════════════════════════

# PHASE 3: RAG — THE CORE SKILL (Months 5-7)

# ════════════════════════════════════════════════

---

## Month 5: Embeddings and Vector Databases — The Foundation of RAG

**Goal:** Deeply understand the two technologies that make RAG possible.

### This is the most critical month. Master this and RAG becomes easy.

---

### Week 1: What Are Embeddings? — Deep Understanding

**The core concept:** Embeddings convert text into a list of numbers (a "vector") such that **semantically similar texts produce similar numbers.**

```
"The patient has chest pain"              → [0.23, -0.45, 0.87, 0.12, ...]  (1536 numbers)
"The patient reports thoracic discomfort"  → [0.21, -0.43, 0.85, 0.14, ...]  (very similar!)
"The weather is sunny today"              → [-0.67, 0.92, -0.11, 0.55, ...]  (very different!)
```

**Why does this matter for RAG?**
When a user asks: "Which patients have heart problems?"

1. You convert the question into an embedding (a vector of numbers)
2. You compare it to all stored document embeddings
3. Documents about heart conditions will have similar vectors
4. You retrieve those documents and give them to the LLM

**How similarity is measured:**

- **Cosine similarity** — measures the angle between two vectors
  - 1.0 = identical meaning
  - 0.0 = completely unrelated
  - -1.0 = opposite meaning
- You don't need to understand the math — just know: **higher score = more relevant**

**How embeddings are created:**

- A special model (NOT a chat model) converts text to numbers
- OpenAI: `text-embedding-3-small` — $0.02 per million tokens (almost free)
- Free local: `all-MiniLM-L6-v2` from Sentence Transformers
- Ollama: `ollama pull nomic-embed-text` (free, local)

**Where to learn:**

| #   | Resource                                                                                                                                | Type    | Time   |
| --- | --------------------------------------------------------------------------------------------------------------------------------------- | ------- | ------ |
| 1   | [What are AI Embeddings? — IBM](https://www.youtube.com/watch?v=wgfSDrqYMJ4)                                                            | Video   | 8 min  |
| 2   | [Word Embeddings — Computerphile](https://www.youtube.com/watch?v=gQddtTdmG_8)                                                          | Video   | 15 min |
| 3   | [Understanding Embeddings — Google](https://cloud.google.com/blog/topics/developers-practitioners/meet-ais-multitool-vector-embeddings) | Article | 30 min |
| 4   | [OpenAI Embeddings Guide](https://platform.openai.com/docs/guides/embeddings)                                                           | Docs    | 30 min |

**Hands-on code — DO THIS:**

```python
from openai import OpenAI
import numpy as np

client = OpenAI()  # Or use Ollama

def get_embedding(text):
    response = client.embeddings.create(
        model="text-embedding-3-small",
        input=text
    )
    return response.data[0].embedding

def cosine_similarity(a, b):
    return np.dot(a, b) / (np.linalg.norm(a) * np.linalg.norm(b))

# Create embeddings for 3 different texts
emb1 = get_embedding("patient has chest pain")
emb2 = get_embedding("patient reports thoracic discomfort")
emb3 = get_embedding("the weather is sunny today")

# Compare similarity
print(f"chest pain vs thoracic discomfort: {cosine_similarity(emb1, emb2):.3f}")
# → ~0.89 (very similar! They mean the same thing!)

print(f"chest pain vs sunny weather: {cosine_similarity(emb1, emb3):.3f}")
# → ~0.15 (very different! Unrelated topics.)
```

**Run this code. See the numbers. This "aha moment" is when RAG clicks.**

---

### Week 2: What Are Vector Databases?

**The key difference:**

- Regular database: `SELECT * FROM patients WHERE name = 'John'` — exact match
- Vector database: "find me records that are SIMILAR to this text" — semantic search

**A vector database stores embeddings (vectors) and lets you find the nearest neighbors** — the most similar vectors to your query vector.

**The major vector databases:**

| Database     | Language           | Notes                                           | Best For         |
| ------------ | ------------------ | ----------------------------------------------- | ---------------- |
| **pgvector** | SQL (any language) | PostgreSQL extension. You already use Postgres! | Java/Spring devs |
| **Chroma**   | Python             | Easiest setup for learning                      | Python beginners |
| **Weaviate** | REST API           | Full-featured, Docker-friendly                  | Production apps  |
| **Pinecone** | Cloud API          | Managed service, free tier                      | Quick prototypes |
| **Milvus**   | Multi-language     | Open source, scalable                           | Big data         |

**For you: Start with pgvector** — it's a PostgreSQL extension, and you already have PostgreSQL in your Docker Compose.

**Where to learn:**

| #   | Resource                                                                                                                                              | Type            | Time    |
| --- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | --------------- | ------- |
| 1   | [What are Vector Databases? — IBM](https://www.youtube.com/watch?v=klTvEwg3oJ4)                                                                       | Video           | 8 min   |
| 2   | [pgvector GitHub — README](https://github.com/pgvector/pgvector)                                                                                      | Docs            | 30 min  |
| 3   | [Vector Databases: Embeddings to Applications — DeepLearning.AI](https://www.deeplearning.ai/short-courses/vector-databases-embeddings-applications/) | **FREE Course** | 1.5 hrs |

**DO the DeepLearning.AI course this week. It's the single best vector database tutorial.**

**Hands-on: Add pgvector to your existing Docker Compose:**

```yaml
services:
  postgres:
    image: pgvector/pgvector:pg16 # Changed from standard postgres image
    environment:
      POSTGRES_DB: fhirdb
      POSTGRES_USER: fhir
      POSTGRES_PASSWORD: your_password # Use a secure password
```

```sql
-- Enable the extension
CREATE EXTENSION IF NOT EXISTS vector;

-- Create a table for document embeddings
CREATE TABLE documents (
    id SERIAL PRIMARY KEY,
    content TEXT NOT NULL,
    embedding vector(1536)    -- 1536 dimensions for OpenAI embeddings
);

-- Insert a document with its embedding vector
INSERT INTO documents (content, embedding)
VALUES ('Patient has chest pain and shortness of breath', '[0.23, -0.45, ...]');

-- Find the 5 most similar documents to a query vector!
SELECT content,
       embedding <=> '[0.21, -0.43, ...]' AS distance   -- <=> is cosine distance
FROM documents
ORDER BY embedding <=> '[0.21, -0.43, ...]'
LIMIT 5;
```

---

### Week 3: Chunking — How to Prepare Documents for RAG

**The problem:** You can't embed an entire 100-page document at once.

- Embeddings work best on smaller, focused pieces of text (300-1000 tokens)
- Quality drops if you try to embed a huge document as one block
- Different parts of a document discuss different topics

**The solution: Chunking** — split documents into small, meaningful pieces. Each chunk gets its own embedding.

**Chunking strategies (from simple to advanced):**

| Strategy                | How It Works                            | Quality | When to Use      |
| ----------------------- | --------------------------------------- | ------- | ---------------- |
| **Fixed-size**          | Every N characters                      | Low     | Quick prototypes |
| **Sentence-based**      | Split on sentence boundaries            | Medium  | Short documents  |
| **Paragraph-based**     | Split on double newlines/paragraphs     | Good    | Structured docs  |
| **Recursive character** | Try paragraphs → sentences → characters | Best    | General purpose  |
| **Semantic**            | Split when the topic changes            | Best    | Advanced use     |

**Overlap is critical:** Chunks should overlap by ~10-20% so you don't lose context at boundaries.

```
Document: "...end of paragraph about symptoms. The treatment plan includes..."

Without overlap: chunk1 ends at "symptoms." | chunk2 starts at "The treatment"
  → If someone asks about treatment, chunk2 has no context about WHAT is being treated

With overlap: chunk1 ends at "...treatment plan includes..." | chunk2 starts at "...symptoms. The treatment plan..."
  → Both chunks contain the transition — better retrieval
```

**Code example — simple chunker:**

```python
def chunk_text(text, chunk_size=500, overlap=100):
    """Split text into overlapping chunks."""
    chunks = []
    start = 0
    while start < len(text):
        end = start + chunk_size
        chunk = text[start:end]
        chunks.append(chunk)
        start = end - overlap    # Step back by overlap amount
    return chunks

# Usage
document = open("patient_notes.txt").read()
chunks = chunk_text(document)

# Each chunk gets embedded separately
embeddings = [get_embedding(chunk) for chunk in chunks]
```

**LangChain's recursive splitter (most commonly used):**

```python
from langchain.text_splitter import RecursiveCharacterTextSplitter

splitter = RecursiveCharacterTextSplitter(
    chunk_size=500,
    chunk_overlap=100,
    separators=["\n\n", "\n", ". ", " ", ""]  # Try these in order
)

chunks = splitter.split_text(document)
```

---

### Week 4: Practice — Build an Embedding Search System

**🏗️ Month 5 Project: Semantic Patient Search**

```python
from openai import OpenAI
import numpy as np

client = OpenAI()

# Your "database" of patient records
patient_records = [
    "Patient John Smith, 45, diagnosed with essential hypertension. BP 160/95. Started on lisinopril 10mg daily.",
    "Patient Jane Doe, 32, type 2 diabetes mellitus. HbA1c 8.2%. Started metformin 500mg twice daily.",
    "Patient Bob Wilson, 58, coronary artery disease. History of MI in 2022. Had LAD stent placement. On aspirin and atorvastatin.",
    "Patient Alice Brown, 27, mild persistent asthma. Uses albuterol PRN. Considering step-up to ICS.",
    "Patient Charlie Davis, 70, CKD stage 3b. GFR 38 mL/min. Monitoring for progression. Low protein diet advised.",
    "Patient Diana Miller, 55, heart failure with reduced ejection fraction. EF 35%. On carvedilol, sacubitril/valsartan.",
    "Patient Edward Clark, 41, major depressive disorder. Currently on sertraline 100mg. Reporting improved mood.",
    "Patient Fiona Garcia, 63, rheumatoid arthritis. On methotrexate 15mg weekly. Joint pain improving.",
]

def get_embedding(text):
    response = client.embeddings.create(model="text-embedding-3-small", input=text)
    return response.data[0].embedding

# Create embeddings for all records
print("Creating embeddings...")
record_embeddings = [(record, get_embedding(record)) for record in patient_records]
print(f"Embedded {len(record_embeddings)} records.")

def search(query, top_k=3):
    """Find the most relevant patient records for a query."""
    query_embedding = get_embedding(query)

    scores = []
    for record, emb in record_embeddings:
        similarity = np.dot(query_embedding, emb) / (np.linalg.norm(query_embedding) * np.linalg.norm(emb))
        scores.append((similarity, record))

    scores.sort(reverse=True)
    return scores[:top_k]

# Test searches
print("\n--- Query: 'patients with heart problems' ---")
for score, record in search("patients with heart problems"):
    print(f"  [{score:.3f}] {record[:80]}...")

print("\n--- Query: 'kidney disease' ---")
for score, record in search("kidney disease"):
    print(f"  [{score:.3f}] {record[:80]}...")

print("\n--- Query: 'mental health conditions' ---")
for score, record in search("mental health conditions"):
    print(f"  [{score:.3f}] {record[:80]}...")
```

**Run this and see it find relevant records semantically — "heart problems" finds both coronary artery disease AND heart failure, even though neither contains the exact words "heart problems."**

**Milestone check:**

- You can create embeddings using an API
- You understand cosine similarity intuitively
- You can store embeddings in pgvector
- You can do semantic similarity search
- You understand chunking strategies and why overlap matters

---

---

## Month 6: Build a Complete RAG Application — Everything Comes Together

**Goal:** Build a full working RAG pipeline, first in Python, then in Java.

---

### The Complete RAG Pipeline — What Happens Step by Step

```
┌────────────────────── INGESTION (one-time setup) ───────────────────────┐
│                                                                          │
│  1. Load documents (PDFs, text files, database records)                 │
│  2. Split into chunks (500-1000 tokens each, with overlap)              │
│  3. Create embeddings for each chunk (using embedding model)            │
│  4. Store chunks + embeddings in vector database (pgvector)             │
│                                                                          │
└──────────────────────────────────────────────────────────────────────────┘

┌────────────────────── QUERY TIME (every user question) ─────────────────┐
│                                                                          │
│  1. User asks: "Which patients have heart-related conditions?"          │
│  2. Create embedding of the question                                     │
│  3. Search vector database for the 5 most similar chunks                │
│  4. Build prompt:                                                        │
│     "Based ONLY on this context: [retrieved chunks]                     │
│      Answer the question: [user question]"                              │
│  5. Send prompt to LLM                                                   │
│  6. Return LLM's answer (grounded in YOUR documents!)                   │
│                                                                          │
└──────────────────────────────────────────────────────────────────────────┘
```

**Why RAG works:**

- The LLM gets YOUR relevant data right in the prompt
- It answers based on facts from your documents, not from its training data
- Drastically reduces hallucinations because it has real source material
- Documents can be updated without retraining anything

**Why RAG beats fine-tuning for most use cases:**

- **Cost:** RAG is almost free. Fine-tuning costs hundreds/thousands of dollars.
- **Updatable:** Add new documents anytime. Fine-tuning requires retraining.
- **Citeable:** RAG can tell you WHICH documents it used. Fine-tuning can't.
- **Reversible:** Remove a document from the vector DB, and it's gone. Fine-tuning is permanent.

---

### Week 1-2: Build Complete RAG in Python

```python
from openai import OpenAI
import numpy as np

client = OpenAI()  # Or use Ollama with base_url="http://localhost:11434/v1"

# ==================== STEP 1: INGESTION ====================

# Your documents (in real apps, read from files/database/APIs)
documents = [
    "Patient John Smith, age 45, diagnosed with essential hypertension. Blood pressure consistently 160/95. "
    "Started on lisinopril 10mg daily. Follow-up in 4 weeks to assess response. Low sodium diet recommended.",

    "Patient Jane Doe, age 32, presents with type 2 diabetes. HbA1c level 8.2%, fasting glucose 185 mg/dL. "
    "Started metformin 500mg twice daily. Referred to diabetes educator. Target HbA1c below 7%.",

    "Patient Bob Wilson, age 58, history of coronary artery disease. Myocardial infarction in January 2023. "
    "Had LAD stent placement. Currently on dual antiplatelet therapy: aspirin 81mg and clopidogrel 75mg. "
    "Atorvastatin 40mg nightly. Cardiac rehab completed.",

    "Patient Alice Brown, age 27, diagnosed with mild persistent asthma. Uses albuterol inhaler as needed, "
    "approximately 3 times per week. Considering step-up to low-dose inhaled corticosteroid. PFTs show FEV1 82% predicted.",

    "Patient Charlie Davis, age 70, chronic kidney disease stage 3b. GFR 38 mL/min, creatinine 1.8. "
    "Proteinuria present. Low protein diet advised. Monitoring every 3 months. Avoid NSAIDs. "
    "Nephrology referral placed.",

    "Patient Diana Miller, age 55, heart failure with reduced ejection fraction. EF 35% on echo. "
    "NYHA Class II symptoms. On carvedilol 12.5mg BID, sacubitril/valsartan 49/51mg BID, "
    "spironolactone 25mg daily. Salt and fluid restriction. ICD evaluation pending.",
]

# Create embeddings for each document
def get_embedding(text):
    response = client.embeddings.create(model="text-embedding-3-small", input=text)
    return response.data[0].embedding

print("Ingesting documents...")
doc_embeddings = [(doc, get_embedding(doc)) for doc in documents]
print(f"Ingested {len(doc_embeddings)} documents.\n")

# ==================== STEP 2: RETRIEVAL ====================

def retrieve(question, top_k=3):
    """Find the most relevant documents for a question."""
    question_embedding = get_embedding(question)

    scored_docs = []
    for doc, emb in doc_embeddings:
        score = np.dot(question_embedding, emb) / (
            np.linalg.norm(question_embedding) * np.linalg.norm(emb)
        )
        scored_docs.append((score, doc))

    scored_docs.sort(reverse=True)
    return scored_docs[:top_k]

# ==================== STEP 3: GENERATION ====================

def ask(question):
    """Answer a question using RAG."""
    # Retrieve relevant documents
    relevant = retrieve(question)
    context = "\n\n".join([doc for _, doc in relevant])

    # Show what was retrieved (for learning/debugging)
    print(f"📋 Retrieved {len(relevant)} documents:")
    for score, doc in relevant:
        print(f"   [{score:.3f}] {doc[:60]}...")
    print()

    # Generate answer using LLM with retrieved context
    response = client.chat.completions.create(
        model="gpt-4o",  # or "llama3.2" with Ollama
        messages=[
            {
                "role": "system",
                "content": (
                    "You are a clinical assistant. Answer the question based ONLY "
                    "on the provided patient records. If the information is not in "
                    "the records, say 'This information is not available in the "
                    "current records.' Cite which patient(s) you're referring to."
                )
            },
            {
                "role": "user",
                "content": f"Patient Records:\n{context}\n\nQuestion: {question}"
            }
        ],
        temperature=0  # Factual, deterministic
    )

    return response.choices[0].message.content

# ==================== USE IT ====================

print("=" * 60)
print("Question: Which patients have cardiovascular conditions?")
print("=" * 60)
answer = ask("Which patients have cardiovascular conditions?")
print(f"\n🤖 Answer:\n{answer}")

print("\n" + "=" * 60)
print("Question: Who needs kidney function monitoring?")
print("=" * 60)
answer = ask("Who needs kidney function monitoring?")
print(f"\n🤖 Answer:\n{answer}")

print("\n" + "=" * 60)
print("Question: Which patients are on blood thinners?")
print("=" * 60)
answer = ask("Which patients are on blood thinners?")
print(f"\n🤖 Answer:\n{answer}")
```

**This is a complete RAG system in ~70 lines of Python.** Run it. See it retrieve the RIGHT documents for each question. See the LLM answer BASED ON those documents.

---

### Where to Learn RAG — FREE Courses (Do ALL of These in Month 6)

| #   | Course                                                                                                                | Platform        | Time    | Why                                |
| --- | --------------------------------------------------------------------------------------------------------------------- | --------------- | ------- | ---------------------------------- |
| 1   | [LangChain: Chat with Your Data](https://www.deeplearning.ai/short-courses/langchain-chat-with-your-data/)            | DeepLearning.AI | 2 hrs   | **THE best RAG tutorial. Period.** |
| 2   | [Building Systems with the ChatGPT API](https://www.deeplearning.ai/short-courses/building-systems-with-chatgpt-api/) | DeepLearning.AI | 1.5 hrs | Multi-step LLM systems             |
| 3   | [Building and Evaluating Advanced RAG](https://www.deeplearning.ai/short-courses/building-evaluating-advanced-rag/)   | DeepLearning.AI | 1.5 hrs | Advanced retrieval strategies      |

These courses are by Andrew Ng — the most respected AI educator in the world. All free. All hands-on with Jupyter notebooks. Do them in order.

---

### Week 3-4: Build RAG in Java with Spring AI

```java
@Configuration
public class RagConfig {

    @Bean
    public VectorStore vectorStore(EmbeddingModel embeddingModel, JdbcTemplate jdbc) {
        return new PgVectorStore(jdbc, embeddingModel);
    }
}

@Service
public class RagService {

    private final VectorStore vectorStore;
    private final ChatClient chatClient;

    public RagService(VectorStore vectorStore, ChatClient.Builder builder) {
        this.vectorStore = vectorStore;
        this.chatClient = builder.build();
    }

    // INGESTION: Add documents to the vector store
    public void ingestDocuments(List<String> documents) {
        var splitter = new TokenTextSplitter();  // Built-in chunker!
        for (String content : documents) {
            List<Document> chunks = splitter.split(List.of(new Document(content)));
            vectorStore.add(chunks);
        }
    }

    // QUERY: Ask a question with RAG
    public String ask(String question) {
        // Step 1: Retrieve relevant documents
        List<Document> relevant = vectorStore.similaritySearch(question);

        // Step 2: Build context from retrieved documents
        String context = relevant.stream()
            .map(Document::getContent)
            .collect(Collectors.joining("\n\n"));

        // Step 3: Generate answer
        return chatClient.prompt()
            .system("Answer based ONLY on this context:\n" + context)
            .user(question)
            .call()
            .content();
    }
}

@RestController
@RequestMapping("/api/rag")
public class RagController {

    private final RagService ragService;

    public RagController(RagService ragService) {
        this.ragService = ragService;
    }

    @PostMapping("/ingest")
    public String ingest(@RequestBody List<String> documents) {
        ragService.ingestDocuments(documents);
        return "Ingested " + documents.size() + " documents";
    }

    @GetMapping("/ask")
    public String ask(@RequestParam String question) {
        return ragService.ask(question);
    }
}
```

**🏗️ Month 6 Project: FHIR Knowledge Assistant**

- Load your FHIR patient records into pgvector
- Create a `/ask` endpoint that answers questions about your patients
- Test: "Which patients have elevated blood pressure?" → system finds relevant records → LLM generates clinical summary
- Run it in Docker alongside your existing FHIR application

**Milestone check:**

- You can build a complete RAG pipeline (ingest → retrieve → generate)
- You understand every step of the pipeline
- You can do it in both Python and Java
- You can explain WHY RAG reduces hallucinations

---

---

## Month 7: Advanced RAG Techniques

**Goal:** Make your RAG system actually good, not just functional.

---

### Week 1-2: Improving Retrieval Quality

**The problem:** Basic RAG doesn't always retrieve the right documents. Here's how to fix it.

**Technique 1: Hybrid Search** — Combine vector search with keyword search

- Vector search is great for meaning ("heart problems" → finds "coronary artery disease")
- Keyword search is great for exact terms ("lisinopril" → finds documents with that word)
- Hybrid combines both for better results

**Technique 2: Re-ranking** — After retrieval, re-score results with a smarter model

- Retrieve top 20 results with fast vector search
- Use a cross-encoder model to re-rank and pick the top 5
- Much more accurate than vector search alone

**Technique 3: Query Transformation** — Rewrite the question for better search

- User asks: "What's wrong with John?"
- System rewrites to: "medical conditions diagnoses symptoms for patient John Smith"
- Better query → better retrieval

**Technique 4: Metadata Filtering** — Filter before searching

- Add metadata: date, patient_id, department, document_type
- Search: "cardiac issues" BUT only from "cardiology" department and after "2024-01-01"

**Technique 5: Parent Document Retrieval**

- Embed small chunks (100 words) for precise matching
- But return the larger parent chunk (500 words) for better LLM context

---

### Week 3-4: Evaluating RAG Quality

**How do you know if your RAG is working well?**

Three things to measure:

1. **Retrieval quality** — Did it find the RIGHT documents? (precision & recall)
2. **Answer faithfulness** — Is the answer actually based on the retrieved docs? (not hallucinated)
3. **Answer relevance** — Does the answer address the question?

**Tools for RAG evaluation:**

- **RAGAS** (Python library) — automated RAG evaluation
- **LangSmith** — trace every LLM call, see what was retrieved
- **LangFuse** — open-source observability for LLM apps

**Where to learn:**

1. [Building and Evaluating Advanced RAG — DeepLearning.AI](https://www.deeplearning.ai/short-courses/building-evaluating-advanced-rag/) — FREE, 1.5 hrs
2. [LangChain RAG techniques](https://python.langchain.com/docs/tutorials/rag/) — Concepts apply to Java too

---

---

# ════════════════════════════════════════════════

# PHASE 4: FRAMEWORKS & ADVANCED (Months 8-10)

# ════════════════════════════════════════════════

---

## Month 8-9: LangChain4j — The Java AI Framework

**Goal:** Master the most complete Java framework for AI applications.

### What is LangChain4j?

Think of it as **Spring for AI** — it provides:

- Unified interface to 20+ LLM providers (OpenAI, Ollama, Anthropic, etc.)
- Built-in RAG pipeline
- Conversation memory
- **AI Services** — annotate a Java interface, LangChain4j implements it with AI
- Tool/function calling — LLM can call your Java methods

```java
// The magic of AI Services — define an interface, AI implements it
interface PatientAssistant {

    @SystemMessage("You are a clinical assistant. Answer based on FHIR data only.")
    String chat(@MemoryId String patientId, @UserMessage String question);
}

// Wire it up
@Bean
PatientAssistant patientAssistant(ChatLanguageModel model,
                                   EmbeddingStore embeddingStore,
                                   EmbeddingModel embeddingModel) {
    ContentRetriever retriever = EmbeddingStoreContentRetriever.builder()
        .embeddingStore(embeddingStore)
        .embeddingModel(embeddingModel)
        .maxResults(5)
        .build();

    return AiServices.builder(PatientAssistant.class)
        .chatLanguageModel(model)
        .contentRetriever(retriever)
        .chatMemoryProvider(memoryId -> MessageWindowChatMemory.withMaxMessages(20))
        .build();
}

// Use it like any Java interface
String answer = patientAssistant.chat("patient-123", "What medications is this patient on?");
```

**Where to learn:**

| #   | Resource                                                                                              | Notes                                  |
| --- | ----------------------------------------------------------------------------------------------------- | -------------------------------------- |
| 1   | [LangChain4j Documentation](https://docs.langchain4j.dev)                                             | Read Tutorials section start to finish |
| 2   | [LangChain4j GitHub Examples](https://github.com/langchain4j/langchain4j-examples)                    | Clone, run each example                |
| 3   | [LangChain4j Spring Boot Integration](https://docs.langchain4j.dev/tutorials/spring-boot-integration) | How to use with Spring Boot            |

---

## Month 10: AI Agents and Tool Calling

**Goal:** Build LLMs that can take actions — not just answer questions.

### What Are Agents?

An agent is an LLM that can:

1. Decide what action to take based on the user's question
2. Call functions/APIs (your Spring Boot endpoints!)
3. Use the result to decide the next step
4. Loop until it has a complete answer

**Example:** User asks: "What's the current blood pressure for patient John Smith and is it concerning?"

The agent:

1. Decides to call `getPatient("John Smith")` to get data
2. Sees the blood pressure is 160/95
3. Decides to call `evaluateVitals(bp=160/95)` for clinical assessment
4. Combines everything into a response

**Your existing REST APIs become "tools":**

```java
@Tool("Get patient information by their ID")
PatientResponse getPatient(@P("The patient ID to look up") Long patientId) {
    return patientService.getPatient(patientId);
}

@Tool("Search patients by condition")
List<PatientResponse> searchByCondition(@P("The medical condition to search for") String condition) {
    return patientService.findByCondition(condition);
}

// The LLM automatically decides WHEN to call these based on the user's question!
```

**Where to learn:**

| #   | Resource                                                                                              | Notes                                   |
| --- | ----------------------------------------------------------------------------------------------------- | --------------------------------------- |
| 1   | [LangChain4j Tools Tutorial](https://docs.langchain4j.dev/tutorials/tools)                            | Java implementation                     |
| 2   | [Building Effective Agents — Anthropic](https://www.anthropic.com/research/building-effective-agents) | Best conceptual guide (read this first) |
| 3   | [AI Agents in LangGraph — DeepLearning.AI](https://www.deeplearning.ai/short-courses/)                | FREE course, Python                     |

---

---

# ════════════════════════════════════════════════

# PHASE 5: PRODUCTION & PORTFOLIO (Months 11-14)

# ════════════════════════════════════════════════

---

## Month 11-12: Production Concerns

**What to learn:**

- **Observability** — LangFuse (open-source), LangSmith — trace every LLM call, see latency, cost, errors
- **Cost management** — log token usage, cache frequent queries, use smaller models where possible
- **Guardrails** — prevent prompt injection attacks (users trying to manipulate your LLM)
- **Caching** — don't call the LLM twice for the same question (semantic caching with embeddings!)
- **Rate limiting** — protect against abuse
- **Evaluation** — automated testing for RAG quality

---

## Month 13-14: Capstone Project — Your Portfolio Piece

### 🏗️ Final Project: AI-Powered FHIR Clinical Assistant

Extend your existing FHIR application with:

1. **RAG-Powered Clinical Q&A**
   - Load patient records into pgvector
   - `/ask` endpoint answers questions about patients using RAG
   - Sources cited in responses

2. **AI-Generated Patient Summaries**
   - Select a patient → AI generates a clinical summary
   - Uses prompt engineering for structured output

3. **Semantic Patient Search**
   - Search patients by meaning, not just exact text
   - "patients with breathing problems" finds asthma, COPD, pneumonia

4. **Clinical Agent**
   - An AI agent that can call your FHIR REST APIs
   - "Compare the medication lists of Patient A and Patient B"
   - Agent calls `getPatient(A)`, `getPatient(B)`, then generates comparison

5. **Running in Docker Compose**
   - PostgreSQL with pgvector
   - Your Spring Boot app with AI capabilities
   - Ollama for local LLM (or OpenAI API)

**This project demonstrates:** Spring Boot, REST APIs, Docker, PostgreSQL, pgvector, embeddings, RAG, prompt engineering, AI agents, tool calling. That's a complete AI engineer's portfolio in one project.

---

---

# ════════════════════════════════════════════════

# REFERENCE SECTION

# ════════════════════════════════════════════════

---

## Master Timeline

| Month | Phase      | Topic                    | Hours/Week | Primary Resource                |
| ----- | ---------- | ------------------------ | ---------- | ------------------------------- |
| 1     | Foundation | AI Literacy              | 5-7 hrs    | 3Blue1Brown + Google + Karpathy |
| 2     | Foundation | Python Basics            | 5-7 hrs    | Real Python or Codecademy       |
| 3     | First Code | First LLM App            | 5-7 hrs    | Ollama + Spring AI Docs         |
| 4     | First Code | Prompt Engineering       | 5-7 hrs    | LearnPrompting.org              |
| 5     | RAG        | Embeddings + Vectors     | 5-7 hrs    | DeepLearning.AI + pgvector      |
| 6     | RAG        | Complete RAG App         | 5-7 hrs    | DeepLearning.AI courses         |
| 7     | RAG        | Advanced RAG             | 5-7 hrs    | DeepLearning.AI Advanced RAG    |
| 8-9   | Frameworks | LangChain4j              | 5-7 hrs    | Official docs + examples        |
| 10    | Advanced   | AI Agents                | 5-7 hrs    | LangChain4j + Anthropic         |
| 11-12 | Production | Observability + Security | 5-7 hrs    | LangFuse + practice             |
| 13-14 | Capstone   | Portfolio Project        | 5-7 hrs    | Build!                          |

---

## All Free Courses — In Learning Order

| #   | Course                                | Platform        | Time    | When to Do      |
| --- | ------------------------------------- | --------------- | ------- | --------------- |
| 1   | Introduction to Generative AI         | Google Cloud    | 45 min  | Month 1, Week 3 |
| 2   | Introduction to Large Language Models | Google Cloud    | 45 min  | Month 1, Week 3 |
| 3   | Vector Databases: Embeddings to Apps  | DeepLearning.AI | 1.5 hrs | Month 5, Week 2 |
| 4   | LangChain: Chat with Your Data        | DeepLearning.AI | 2 hrs   | Month 6, Week 1 |
| 5   | Building Systems with ChatGPT API     | DeepLearning.AI | 1.5 hrs | Month 6, Week 2 |
| 6   | Building & Evaluating Advanced RAG    | DeepLearning.AI | 1.5 hrs | Month 7, Week 3 |
| 7   | AI Agents in LangGraph                | DeepLearning.AI | 1 hr    | Month 10        |

---

## YouTube Channels to Subscribe To

| Channel             | What They Cover                            | Best For                      |
| ------------------- | ------------------------------------------ | ----------------------------- |
| **Andrej Karpathy** | Deep conceptual AI explanations            | Understanding how LLMs work   |
| **3Blue1Brown**     | Visual math/ML explanations                | Neural networks, transformers |
| **IBM Technology**  | Short explainer videos on every AI concept | Quick concept overviews       |
| **Fireship**        | Fast-paced tech overviews                  | Staying current               |
| **James Briggs**    | RAG and LangChain tutorials                | Practical RAG building        |
| **Sam Witteveen**   | Advanced RAG and LLM techniques            | Advanced topics               |
| **Corey Schafer**   | Python fundamentals                        | Learning Python               |

---

## Documentation to Bookmark

| Resource           | URL                                 | When You'll Need It     |
| ------------------ | ----------------------------------- | ----------------------- |
| Spring AI          | docs.spring.io/spring-ai/reference/ | Month 3+                |
| LangChain4j        | docs.langchain4j.dev                | Month 8+                |
| OpenAI API         | platform.openai.com/docs            | Month 3+                |
| pgvector           | github.com/pgvector/pgvector        | Month 5+                |
| LearnPrompting     | learnprompting.org                  | Month 4                 |
| LangChain (Python) | python.langchain.com/docs           | Month 6+ (for concepts) |

---

## Books (Optional)

| Book                                          | Author            | Best For                            |
| --------------------------------------------- | ----------------- | ----------------------------------- |
| "Build a Large Language Model (From Scratch)" | Sebastian Raschka | Deep understanding of LLM internals |
| "AI Engineering"                              | Chip Huyen        | Production AI systems               |

---

## Tools to Install

| When    | Tool                      | Purpose                   | Link                         |
| ------- | ------------------------- | ------------------------- | ---------------------------- |
| Month 1 | Nothing needed            | Just watch and read       | —                            |
| Month 2 | Python 3.11+              | Programming language      | python.org                   |
| Month 2 | VS Code Python extension  | Code editing              | VS Code marketplace          |
| Month 2 | VS Code Jupyter extension | Running notebooks         | VS Code marketplace          |
| Month 3 | Ollama                    | Run LLMs locally for free | ollama.com                   |
| Month 5 | pgvector (Docker)         | Vector database           | github.com/pgvector/pgvector |

---

## Your Day 1 Homework — Start Right Now

1. Watch [Andrej Karpathy — Intro to LLMs](https://www.youtube.com/watch?v=zjkBMFhNj_g) (1 hour)
2. Sign up for [DeepLearning.AI](https://www.deeplearning.ai) (free account — you'll use it in Month 5-6)
3. Install [Ollama](https://ollama.com) and run `ollama run llama3.2`
4. Chat with your local LLM for 15 minutes. Ask it about FHIR.

**That's it. Day one done. Tomorrow, start Week 1.**
