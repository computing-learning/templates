# Metadata Convention

## Goal

Define machine-readable metadata that can be consumed by future CLI, web, and mobile learning tools while remaining independent of learner-specific progress.

---

# Curriculum Metadata

Curriculum metadata describes shared learning content.

It must **not** contain personal learner information.

Example:

```yaml id="4n1r6m"
id: ds-load-balancer
title: Load Balancer
domain: distributed-systems
category: networking
status: ready
difficulty: intermediate
estimated_minutes: 180

prerequisites:
  - networking-tcp
  - networking-http

related_topics:
  - networking-reverse-proxy
  - ds-health-check
  - ds-service-discovery

tags:
  - scalability
  - availability
  - networking

resources:
  topic: docs/networking/load-balancer.md
  cheatsheet: cheatsheets/load-balancer.md
  quiz: quizzes/load-balancer.md
  labs:
    - labs/load-balancer-basic-lab
```

---

# Required Fields

Every topic must include the following fields:

```text id="9b2jlwm"
id
title
domain
category
status
difficulty
estimated_minutes
prerequisites
related_topics
tags
resources
```

These fields form the minimum metadata contract for every learning topic.

---

# Difficulty Values

Allowed values:

```text id="6eh5yx"
beginner
intermediate
advanced
expert
```

Difficulty reflects the conceptual and practical complexity of the topic.

It does **not** indicate how important the topic is.

---

# Estimated Time

Use the field:

```text id="y3f1vr"
estimated_minutes
```

This estimate includes:

* Overview reading
* Focused study
* Note writing
* Quiz completion
* Basic practical exercises

It does **not** include long-term spaced repetition or real project application.

---

# Learner Metadata

Learner metadata is stored separately from curriculum metadata.

Example:

```yaml id="vfjlwm"
topic_id: ds-load-balancer
learner_status: reviewing
started_at: 2026-08-05
last_reviewed_at: 2026-08-08
next_review_at: 2026-08-12
review_count: 2
difficulty_rating: hard

completed:
  overview: true
  notes: true
  quiz: false
  lab: false
  applied: false
```

This information belongs to learner tools rather than shared curriculum repositories.

---

# Spaced Repetition Rating

Allowed values:

```text id="wsbtsp"
again
hard
good
easy
```

These values describe the learner's confidence during review and determine the next review interval.

---

# Dates

Use ISO 8601 formatting.

Date only:

```text id="dyjlwm"
2026-08-05
```

Date and time:

```text id="x62rr2"
2026-08-05T13:30:00+07:00
```

Using a standard format ensures compatibility across different tools and platforms.

---

# Boolean Values

Use native YAML boolean values.

Correct:

```yaml id="rujlwm"
completed: true
```

Avoid:

```yaml id="7yjlwm"
completed: "yes"
```

---

# Lists

Always use YAML arrays, even when they are empty.

Example:

```yaml id="0jlwmr"
prerequisites: []
related_topics: []
tags: []
```

This keeps the schema consistent and simplifies automated processing.

---

# Stability Rule

Topic IDs must remain stable after publication.

Renaming a file or moving documentation within the repository must **not** automatically change the topic ID.

The topic ID is the permanent identifier used by:

* Curriculum metadata
* Learner progress
* Review history
* Cross-topic references
* External learning tools

---

# Design Principles

Metadata should be:

* Human-readable.
* Machine-readable.
* Stable over time.
* Independent of repository layout.
* Free of learner-specific information.

Separating curriculum metadata from learner metadata allows the same content repository to be shared by many learners while each learner maintains independent progress and review history.
