# Repository Structure Convention

## Goal

Every knowledge repository should feel familiar, predictable, and easy to navigate regardless of the technical subject.

A consistent structure improves discoverability, reduces cognitive load, and enables reusable tooling across the entire `computing-learning` organization.

---

# Standard Structure

```text id="9vwk0z"
repository/
├── README.md
├── ROADMAP.md
├── SUMMARY.md
├── CONTRIBUTING.md
├── docs/
├── labs/
├── diagrams/
├── cheatsheets/
├── quizzes/
├── case-studies/
├── references/
├── assets/
└── metadata/
```

Not every repository must include every directory immediately.

Create a directory only when it has a real purpose.

---

# Root Files

## README.md

The repository landing page.

It should explain:

* Purpose
* Scope
* Target learners
* Prerequisites
* Learning flow
* Repository structure
* Current progress

---

## ROADMAP.md

Defines:

* Recommended learning order
* Learning milestones
* Completion status

---

## SUMMARY.md

Acts as the repository table of contents.

It should link directly to:

* Topics
* Labs
* Cheat sheets
* Quizzes
* Case studies
* References

---

## CONTRIBUTING.md

Explains how contributors can:

* Report errors
* Improve explanations
* Add labs
* Add references
* Submit pull requests

---

# docs/

Contains the primary curriculum.

Recommended structure:

```text id="e1tdzj"
docs/
├── fundamentals/
├── networking/
├── replication/
├── consistency/
├── consensus/
└── transactions/
```

Each topic should have one primary Markdown file.

---

# labs/

Contains executable and reproducible experiments.

Each lab should be independent whenever practical.

Example:

```text id="mwpf2h"
labs/
└── load-balancer-lab/
    ├── README.md
    ├── compose.yaml
    ├── src/
    └── scripts/
```

---

# diagrams/

Contains editable architecture diagrams.

Preferred formats:

* Draw.io
* Mermaid
* PlantUML

Always keep editable source files together with exported images whenever possible.

---

# cheatsheets/

Contains concise review material.

Cheat sheets summarize important concepts.

They are **not** replacements for complete topic notes.

---

# quizzes/

Contains active-recall questions.

Recommended structure:

```text id="5ymx7e"
quizzes/
├── fundamentals.md
├── consistency.md
└── consensus.md
```

---

# case-studies/

Contains analyses of real-world systems.

Each case study should discuss:

* Requirements
* Scale
* Architecture
* Critical flows
* Failure scenarios
* Trade-offs
* Lessons learned

---

# references/

Contains curated external resources.

Recommended files:

```text id="vj9gtj"
references/
├── books.md
├── papers.md
├── documentation.md
├── articles.md
└── videos.md
```

---

# assets/

Contains repository assets that support the documentation.

Examples:

* Images
* Logos
* Screenshots
* Icons
* Sample datasets

Avoid storing generated artifacts that can be recreated automatically.

---

# metadata/

Contains machine-readable curriculum metadata.

Example:

```text id="w6zg3u"
metadata/
├── topics/
├── paths/
└── schema/
```

Personal learner progress must **not** be stored in curriculum repositories.

---

# Optional Directories

Repositories may also include:

```text id="ljjlwm"
scripts/
examples/
exercises/
solutions/
```

Create these directories only when they provide clear value.

---

# Separation Rule

Curriculum repositories contain shared learning content.

Learner-specific repositories or tools should contain:

* Personal notes
* Review history
* Quiz scores
* Learning progress
* Mistakes
* Next review dates

Keeping curriculum separate from learner progress allows the same repository to be reused by many learners.

---

# Repository Principles

Every repository should be:

* Easy to navigate.
* Consistent with other repositories.
* Focused on one technical domain.
* Practical rather than encyclopedic.
* Easy to automate.
* Friendly to future contributors.

A learner opening any repository in the `computing-learning` organization should immediately recognize the structure and know where to find every type of content.
