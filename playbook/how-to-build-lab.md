# How to Build a Learning Lab

## Goal

Turn theoretical knowledge into observable and reproducible behavior.

---

# Scope

A lab should test **one main idea**.

Avoid building a complete production system when a smaller experiment can demonstrate the concept.

The purpose of a lab is to answer:

> Does the concept behave the way I think it does?

---

# Required Sections

Every lab should contain:

```text
Goal
Prerequisites
Architecture
Setup
Steps
Validation
Experiments
Failure Scenarios
Cleanup
Lessons Learned
```

---

# Lab Rules

A lab must be reproducible.

When practical:

* Use explicit software versions.
* Provide copy-pasteable commands.
* Include expected output.
* Include at least one failure scenario.
* Include validation steps.
* Include cleanup instructions.

Another learner should not need additional instructions to reproduce the experiment.

---

# Example Experiments

## Load Balancer

Possible experiments:

* Stop one backend.
* Observe health checks.
* Enable sticky sessions.
* Compare Round Robin and Least Connections.
* Introduce slow backend responses.

---

## Message Broker

Possible experiments:

* Restart the consumer.
* Reject a message.
* Retry message processing.
* Route messages to a Dead Letter Queue.
* Publish duplicate messages.

---

# Completion Criteria

A lab is complete when another learner can:

* Clone it.
* Run it.
* Observe the expected behavior.
* Reproduce at least one failure.
* Validate the result.
* Clean up the environment.
