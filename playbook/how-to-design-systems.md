# How to Practice System Design

## Goal

Design systems by starting from requirements, reasoning through trade-offs, and validating operational behavior rather than beginning with specific technologies.

---

# Step 1 — Clarify Requirements

Identify the system requirements before choosing any architecture.

Capture:

* Functional requirements
* Expected traffic
* Latency requirements
* Availability targets
* Consistency requirements
* Durability requirements
* Security requirements
* Cost constraints

A good design begins with understanding the problem rather than selecting tools.

---

# Step 2 — Estimate Scale

Estimate the expected scale of the system.

Consider:

* Requests per second (RPS)
* Data volume
* Read/write ratio
* Storage growth
* Network bandwidth
* Concurrent users or workers

These estimates guide architectural decisions and capacity planning.

---

# Step 3 — Define Core Flows

Describe the major system flows.

Include:

* Write flow
* Read flow
* Asynchronous flow
* Failure flow
* Recovery flow

Each flow should be traceable from the initial request to the final outcome.

---

# Step 4 — Design the Data Model

Define the core data model before discussing infrastructure.

Include:

* Entities
* Ownership
* Primary and foreign keys
* Indexes
* Consistency boundaries
* Data retention

The data model establishes the foundation for system behavior.

---

# Step 5 — Choose Components

Select system components based on the requirements.

Examples include:

* Database
* Cache
* Message broker
* Object storage
* Search engine
* Load balancer

Avoid choosing technologies simply because they are familiar or popular.

---

# Step 6 — Analyze Trade-offs

Discuss the major architectural trade-offs.

Compare:

* Consistency vs. availability
* Latency vs. durability
* Simplicity vs. flexibility
* Cost vs. reliability
* Synchronous vs. asynchronous processing

Every design decision should explain what is gained and what is sacrificed.

---

# Step 7 — Design for Failure

Assume failures will occur.

Consider how the system behaves during:

* Timeouts
* Retries
* Duplicate execution
* Partial failures
* Dependency outages
* Process crashes
* Network partitions
* Data corruption
* Recovery

A production-ready design must define failure handling, not only the happy path.

---

# Step 8 — Validate Operations

Operational readiness is part of the design.

Include:

* Metrics
* Logs
* Distributed tracing
* Alerts
* Deployment strategy
* Rollback strategy
* Runbooks

If a system cannot be monitored, operated, and recovered, the design is incomplete.

---

# System Design Workflow

```text id="2pc4zw"
Clarify Requirements
        ↓
Estimate Scale
        ↓
Define Core Flows
        ↓
Design Data Model
        ↓
Choose Components
        ↓
Analyze Trade-offs
        ↓
Design for Failure
        ↓
Validate Operations
```

---

# Completion Criteria

A system design exercise is complete when you can:

* Explain the requirements.
* Justify capacity estimates.
* Describe every major request flow.
* Explain the data model.
* Defend component choices.
* Discuss architectural trade-offs.
* Describe failure handling.
* Explain operational monitoring and recovery.
