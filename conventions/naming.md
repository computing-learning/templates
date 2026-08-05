# Naming Conventions

## Goal

Keep repositories, folders, files, topic IDs, labs, diagrams, reviews, branches, and commits consistent across the `computing-learning` organization.

---

# General Rules

Use:

* Lowercase letters
* English names
* Kebab-case
* Clear and descriptive names
* Stable names that rarely need to change

Avoid:

* Spaces
* Underscores
* Uppercase file names
* Unclear abbreviations
* Version numbers in permanent topic names

---

# Repository Names

Use domain-based names.

Good:

```text id="ttmwwz"
distributed-systems
computer-networking
database-systems
system-design
software-architecture
data-engineering
machine-learning
```

Avoid:

```text id="twixiw"
distributedSystems
distributed_systems
Distributed-Systems
ds
my-learning-notes
```

---

# Folder Names

Use lowercase kebab-case.

Good:

```text id="c59fwc"
fault-tolerance
case-studies
message-brokers
load-balancing
```

Avoid:

```text id="9r9nlf"
FaultTolerance
fault_tolerance
caseStudies
```

---

# Markdown File Names

Use lowercase kebab-case.

Good:

```text id="zwkhnc"
load-balancer.md
leader-election.md
transactional-outbox.md
eventual-consistency.md
```

Avoid:

```text id="p4wdob"
LoadBalancer.md
load_balancer.md
loadbalancer.md
topic-01.md
```

---

# Topic IDs

Topic IDs should be globally understandable and stable.

Format:

```text id="cgrmqe"
<domain>-<topic>
```

Examples:

```text id="5vr5ng"
ds-cap-theorem
ds-leader-election
networking-load-balancer
database-b-tree-index
messaging-rabbitmq-routing
```

Do not include:

* Learner names
* Dates
* Temporary status
* File extensions

---

# Lab Names

Format:

```text id="m1vlpk"
<topic>-lab
```

Examples:

```text id="i2jwyj"
load-balancer-lab
rabbitmq-retry-lab
transactional-outbox-lab
leader-election-lab
```

For multiple labs:

```text id="itwfc7"
load-balancer-basic-lab
load-balancer-failure-lab
load-balancer-observability-lab
```

---

# Case Study Names

Format:

```text id="8o3rvy"
<system>-case-study.md
```

Examples:

```text id="o98wx9"
iprice-case-study.md
betprophet-case-study.md
vnstock-case-study.md
discord-case-study.md
```

---

# Diagram Names

Name diagrams after the behavior or architecture they illustrate.

Examples:

```text id="s2ljx6"
request-flow.drawio
leader-election-sequence.drawio
outbox-publishing-flow.drawio
replication-topology.drawio
```

Generated exports should reuse the same base name:

```text id="jlwmw7"
request-flow.drawio
request-flow.png
request-flow.svg
```

---

# Review File Names

For manual reviews, use:

```text id="m5bnmo"
YYYY-MM-DD-<topic-id>.md
```

Example:

```text id="f7jlwm"
2026-08-08-ds-cap-theorem.md
```

Review metadata should eventually be stored separately from curriculum content.

---

# Branch Names

Use the following prefixes:

```text id="chzdxm"
docs/<topic>
lab/<topic>
fix/<description>
chore/<description>
```

Examples:

```text id="vdqwp6"
docs/load-balancer
lab/rabbitmq-retry
fix/broken-reference
chore/update-topic-template
```

---

# Commit Messages

Follow the Conventional Commits specification.

Examples:

```text id="c0twmg"
docs: add CAP theorem overview
feat: add RabbitMQ retry lab
fix: correct quorum explanation
refactor: reorganize consistency topics
chore: update repository templates
```

---

# Naming Principles

Before creating a new name, ask:

* Is it descriptive?
* Is it stable?
* Is it searchable?
* Is it consistent with the rest of the organization?
* Would another learner understand it immediately?

A consistent naming convention improves navigation, searchability, automation, and long-term maintainability across every repository in the `computing-learning` organization.
