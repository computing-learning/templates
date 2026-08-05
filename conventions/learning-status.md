# Learning Status Convention

## Goal

Define consistent status values for curriculum content, learning roadmaps, metadata, and learner progress across the `computing-learning` organization.

---

# Topic Status

Topic status describes the state of the curriculum itself.

Allowed values:

```text id="x2r8nm"
draft
ready
deprecated
archived
```

## Meaning

### draft

The topic is incomplete or currently under review.

Content may change significantly before it becomes part of the official curriculum.

---

### ready

The topic is complete and suitable for learners.

All required documentation, references, and review material should be available.

---

### deprecated

The topic is outdated or has been replaced by a newer version.

It remains available temporarily for backward compatibility.

---

### archived

The topic is no longer actively maintained.

It is retained for historical reference only.

---

# Learner Status

Learner progress must be stored **outside** the curriculum repository.

Allowed values:

```text id="esjlwm"
not-started
overview
learning
practicing
reviewing
applied
completed
paused
```

## Meaning

### not-started

The learner has not begun studying the topic.

---

### overview

The learner has completed an introductory overview and understands the high-level concepts.

---

### learning

The learner is actively studying concepts, terminology, and supporting material.

---

### practicing

The learner is completing labs, exercises, or implementation tasks.

---

### reviewing

The learner is revisiting the topic using spaced repetition.

---

### applied

The learner has successfully used the topic in:

* A lab
* A design exercise
* A real project
* A production incident analysis

---

### completed

The learner has met the defined completion criteria.

---

### paused

Learning has been intentionally suspended and may resume later.

---

# Roadmap Symbols

Markdown roadmaps may use visual symbols:

| Symbol | Status      |
| ------ | ----------- |
| ⬜      | Not started |
| 👀     | Overview    |
| 📖     | Learning    |
| 🧪     | Practicing  |
| 🔁     | Reviewing   |
| 🛠     | Applied     |
| ✅      | Completed   |
| ⏸      | Paused      |

For machine-readable data, always use the textual status values instead of emoji.

---

# Completion Criteria

A learner should **not** mark a topic as completed simply because it has been read.

Recommended completion requirements:

* Explain the topic without notes.
* Answer core recall questions.
* Describe the major trade-offs.
* Complete at least one practical exercise.
* Identify common failure scenarios.
* Apply the topic in a design exercise or a real project.

---

# Status Flow

```text id="pjlwm6"
not-started
        ↓
overview
        ↓
learning
        ↓
practicing
        ↓
reviewing
        ↓
applied
        ↓
completed
```

The learner may transition to **paused** from any active stage and later resume from the same point.

---

# Design Principles

The curriculum and learner progress are intentionally separated.

* **Curriculum repositories** describe what should be learned.
* **Learner tools** track individual progress.

This separation allows a single curriculum repository to be shared by many learners while each learner maintains their own independent progress history.
