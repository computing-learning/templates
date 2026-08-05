# Spaced Repetition Convention

## Goal

Provide a consistent spaced repetition model while keeping learner history separate from curriculum repositories.

---

# Default Review Sequence

The initial review schedule is:

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
Day 90
```

These intervals are recommended defaults rather than fixed requirements.

Learners may shorten or extend intervals based on topic difficulty and confidence.

---

# Review Method

Every review should begin with **active recall**.

The learner should attempt to answer questions before reopening any notes.

Recommended review sequence:

```text
Explain the topic from memory
        ↓
Answer recall questions
        ↓
Draw the main flow or architecture
        ↓
Describe the trade-offs
        ↓
Describe at least one failure scenario
        ↓
Check the original material
        ↓
Record forgotten or incorrect points
        ↓
Rate the review
```

The emphasis is on retrieval rather than rereading.

---

# Ratings

Allowed values:

```text
again
hard
good
easy
```

## again

The learner could not recall the core concept.

Suggested next review:

```text
1 day
```

---

## hard

The learner recalled part of the topic but missed important details.

Suggested next review:

```text
2–3 days
```

---

## good

The learner recalled the topic with only minor gaps.

Continue with the normal review schedule.

---

## easy

The learner recalled and explained the topic confidently.

Increase the next review interval.

---

# Review Data

Learner review history may contain:

```yaml
topic_id: ds-load-balancer
reviewed_at: 2026-08-05T13:30:00+07:00
rating: good
next_review_at: 2026-08-12

remembered:
  - L4 and L7 differences

forgotten:
  - Direct Server Return

new_questions:
  - How does ECMP interact with Layer 4 load balancing?
```

This information belongs to learner tools, not curriculum repositories.

---

# Review Limits

A daily review session should remain manageable.

Recommended starting limits:

| Activity      | Recommended Amount |
| ------------- | -----------------: |
| New topics    |                3–5 |
| Review topics |              10–20 |

Adjust these limits according to:

* Topic difficulty
* Available study time
* Personal learning pace

Consistency is more valuable than reviewing a large number of topics in one session.

---

# Curriculum Separation

Curriculum repositories may provide:

* Recall questions
* Quizzes
* Topic IDs
* Suggested review prompts

Curriculum repositories must **not** contain:

* Learner ratings
* Learner schedules
* Learner progress
* Personal notes

This separation allows one curriculum to support many learners while each learner maintains an independent review history.

---

# Review Workflow

```text
Review Queue
        ↓
Active Recall
        ↓
Compare with Notes
        ↓
Identify Knowledge Gaps
        ↓
Rate the Review
        ↓
Schedule the Next Review
```

---

# Design Principles

A good spaced repetition system should be:

* Based on recall rather than rereading.
* Easy to automate.
* Independent of curriculum content.
* Flexible enough for different learning speeds.
* Focused on long-term retention instead of short-term memorization.

The purpose of spaced repetition is not simply to repeat information, but to strengthen durable understanding through repeated retrieval over time.
