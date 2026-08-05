# Computing Learning Templates

Shared learning templates, workflows, and conventions for repositories in the `computing-learning` GitHub organization.

---

# Purpose

This repository standardizes how technical knowledge is:

* Explored
* Documented
* Reviewed
* Practiced
* Applied
* Maintained

The goal is to build a consistent learning system that scales across every technical subject, from programming languages to distributed systems, databases, operating systems, networking, cloud infrastructure, and AI.

---

# Repository Structure

```text
templates/
├── topic/              Topic documentation templates
├── review/             Spaced repetition templates
├── lab/                Practical lab templates
├── case-study/         System and architecture case studies
├── cheatsheet/         Quick-reference templates
├── roadmap/            Learning roadmap templates
└── repository/         New repository bootstrap templates

playbook/               Standard learning workflows
conventions/            Naming and documentation conventions
scripts/                Repository initialization scripts
examples/               Example repositories
```

---

# Core Learning Flow

```text
Overview
   ↓
Extract keywords
   ↓
Add keywords to backlog
   ↓
Study selected keywords
   ↓
Write concise notes
   ↓
Practice with labs
   ↓
Explain from memory
   ↓
Review using spaced repetition
   ↓
Apply to a real project
```

The workflow is intentionally simple.

Every repository in the organization should follow the same learning process.

---

# Learning Philosophy

The repository follows several principles.

## Learn breadth before depth

Begin with an overview.

Understand how concepts connect before studying implementation details.

---

## Break knowledge into small pieces

Each topic should answer a single question.

Avoid large documents covering unrelated concepts.

---

## Learn by building

Reading is only the first step.

Every important concept should eventually become:

* a lab
* a small implementation
* a real-world application

---

## Active recall over rereading

Avoid repeatedly reading the same notes.

Instead:

* explain concepts from memory
* solve exercises
* rebuild examples
* compare with original notes

---

## Spaced repetition

Important concepts should be reviewed multiple times.

Suggested schedule:

```text
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
Every 90 days
```

---

## Connect everything

Every new topic should answer at least one of these questions:

* What problem does it solve?
* What does it depend on?
* What depends on it?
* Where is it used in production?
* When should it not be used?

---

# Learning Artifacts

Each repository may contain:

```text
Overview

Roadmap

Topic Notes

Labs

Case Studies

Cheat Sheets

Interview Notes

Architecture Reviews

References
```

---

# Repository Lifecycle

```text
Create repository
        ↓
Generate repository template
        ↓
Read overview
        ↓
Extract concepts
        ↓
Study concepts
        ↓
Implement labs
        ↓
Write cheat sheet
        ↓
Review periodically
        ↓
Apply in production
```

---

# Documentation Standards

Every document should:

* Focus on one topic.
* Use clear headings.
* Prefer diagrams over long paragraphs.
* Include practical examples.
* Include references.
* Be easy to review later.

---

# Repository Naming

Repositories should use lowercase with hyphens.

Examples:

```text
distributed-systems
networking
operating-systems
postgresql
kubernetes
docker
golang
typescript
nodejs
laravel
system-design
machine-learning
computer-architecture
```

---

# Learning Output

A topic is considered complete only when all of the following exist:

* Overview
* Detailed notes
* Practical lab
* Cheat sheet
* Self-explanation
* Review schedule
* Real-world example

---

# Long-term Goal

The `computing-learning` organization should become a personal knowledge base where every repository shares the same structure, learning workflow, and documentation standards.

As new technologies emerge, they can be added without changing the overall learning process.
