# How to Learn a New Technical Skill

## Goal

Learn a new technical skill quickly enough to understand it, explain it, practice it, and apply it confidently in real-world systems.

---

# Learning Flow

```text
Define the skill
        ↓
Read the overview
        ↓
Extract keywords
        ↓
Build the learning backlog
        ↓
Study a few keywords each day
        ↓
Write concise notes
        ↓
Build a small lab
        ↓
Explain from memory
        ↓
Review using spaced repetition
        ↓
Apply to a real project
```

---

# Step 1 — Define the Skill

Before studying, answer the following questions:

* What is the skill?
* Why do I need it?
* What problem does it solve?
* Where does it fit in the larger system?
* What outcome do I expect after learning it?

The objective is to establish context before reading technical details.

---

# Step 2 — Read the Overview

Do **not** study implementation details yet.

Focus only on understanding the big picture.

Questions to answer:

* What is it?
* Why does it exist?
* When is it used?
* When should it not be used?
* What are its major components?

Recommended time:

```text id="g2gcvz"
30–60 minutes
```

The goal is familiarity, not mastery.

---

# Step 3 — Extract Keywords

While reading, collect important or unfamiliar terms.

Example:

```text id="jtvzj8"
Load Balancer
├── Layer 4
├── Layer 7
├── Health Check
├── Sticky Session
├── Round Robin
├── Least Connections
├── Reverse Proxy
└── Anycast
```

Do **not** interrupt the overview to deeply study every keyword.

Simply collect them.

---

# Step 4 — Build the Learning Backlog

Convert every keyword into a backlog item.

Recommended daily workload:

```text id="w62l9j"
3–5 keywords
15–30 minutes per keyword
```

A small daily backlog is more sustainable than trying to learn everything at once.

---

# Step 5 — Take Notes

Use the shared Topic Template.

Write everything in your own words.

Avoid:

* Copying documentation.
* Saving long quotations.
* Recording details you do not understand.

Prefer:

* Short explanations.
* Diagrams.
* Trade-offs.
* Real examples.
* Questions.
* Related concepts.

Your notes should become easier to understand than the original documentation.

---

# Step 6 — Practice

Build the smallest useful experiment.

Examples:

* Start a RabbitMQ producer and consumer.
* Configure an Nginx load balancer.
* Simulate retry and timeout behavior.
* Create a PostgreSQL transaction.
* Implement an Outbox Publisher.

Every lab should answer:

* What did I expect?
* What happened?
* Why did it happen?
* What failed?
* How did I validate it?

A concept is easier to remember after observing it in practice.

---

# Step 7 — Explain from Memory

Close the documentation.

Teach the topic as if explaining it to a beginner.

Answer these questions:

* What is it?
* Why is it needed?
* How does it work?
* What are the trade-offs?
* When would I use it?
* When would I avoid it?

Every point you cannot explain clearly becomes a new learning task.

---

# Step 8 — Review

Review by recalling from memory before reading your notes.

Default review schedule:

```text id="t9uklq"
Day 1
↓
Day 3
↓
Day 7
↓
Day 14
↓
Day 30
↓
Day 90
```

The objective is retrieval practice rather than rereading.

---

# Step 9 — Apply

Use the skill in one or more of the following:

* A lab
* A design exercise
* An architecture review
* A real project
* A production incident analysis

A skill is not considered learned until it has been applied.

---

# Completion Criteria

A topic can be marked as learned only when you can:

* Explain it without notes.
* Identify when to use it.
* Identify when not to use it.
* Describe its trade-offs.
* Complete a small lab.
* Answer a topic quiz.
* Apply it in a system design discussion.
