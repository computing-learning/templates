# How to Write Technical Notes

## Goal

Create technical notes that are concise, searchable, reusable, and easy to review over time.

---

# Principles

* Write in your own words.
* Prefer understanding over completeness.
* Prefer diagrams over long descriptions.
* Prefer trade-offs over feature lists.
* Prefer questions over passive summaries.

The objective is to create notes that help you think, not simply archive documentation.

---

# Recommended Structure

Use the shared Topic Template.

```text id="k4l7te"
Overview
Why It Exists
Problem It Solves
Core Concepts
How It Works
Architecture
Advantages
Disadvantages
Trade-offs
Real-world Examples
Common Mistakes
Interview Questions
Related Topics
Further Reading
```

Each section should answer one clear question.

---

# Writing Rules

When writing notes:

* Keep paragraphs short.
* Use concrete examples.
* Include failure cases.
* Link related topics.
* Record trade-offs.
* Explain why something exists.

Avoid:

* Copying documentation verbatim.
* Writing long feature lists.
* Recording implementation details without understanding them.
* Mixing multiple unrelated topics into one note.

---

# Good Note

```text id="9lprme"
A Layer 4 load balancer routes connections using transport-level data,
usually source IP, destination IP, source port, destination port, and protocol.

It is useful when high throughput and protocol independence are more important
than HTTP-aware routing.
```

The note explains:

* What it is.
* How it works.
* When it is useful.

---

# Weak Note

```text id="pqf4xy"
Layer 4 is a layer in the OSI model and load balancing is used by many
companies around the world for scalable applications.
```

The note does not explain:

* How it works.
* Why it exists.
* When to use it.
* What trade-offs it introduces.

---

# Characteristics of a Good Technical Note

A good note should allow you to answer:

* What problem does this solve?
* Why was it created?
* How does it work?
* What assumptions does it make?
* What can fail?
* When should I use it?
* When should I avoid it?
* What alternatives exist?

If the note cannot answer these questions, it is probably incomplete.
