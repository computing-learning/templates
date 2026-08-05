# Documentation Style Convention

## Goal

Keep learning content clear, practical, searchable, and useful for both beginners and experienced engineers.

---

# Language

Use one consistent language throughout each repository.

Do **not** mix languages within the same explanation unless translating a specific technical term.

Technical terminology may remain in English when it is the commonly accepted form.

Examples:

* Load Balancer
* Leader Election
* Eventual Consistency
* Outbox Pattern

Consistency is more important than translating every technical term.

---

# Writing Style

Prefer:

* Direct explanations.
* Short paragraphs.
* Concrete examples.
* Diagrams.
* Comparisons.
* Failure scenarios.
* Trade-offs.
* Active recall questions.

Avoid:

* Unnecessary introductions.
* Marketing language.
* Unexplained jargon.
* Copied documentation.
* Long historical sections without practical value.

Every paragraph should help the learner understand or apply the topic.

---

# Topic Opening

Every topic should answer these questions within the first few paragraphs:

1. What is it?
2. Why does it exist?
3. What problem does it solve?
4. Where does it fit in a system?
5. When should it be used?
6. When should it not be used?

Readers should understand the purpose of the topic before studying implementation details.

---

# Headings

Use sentence-style headings.

Good:

```text id="u4jlwm"
## How leader election works
```

Avoid:

```text id="sqjlwm"
## How Leader Election Works
```

Sentence-style headings improve consistency across repositories.

---

# Code Blocks

Always specify the language whenever possible.

Example:

````markdown
```typescript
function main() {}
```
````

Commands should be complete and copy-pasteable.

Avoid incomplete snippets that require the reader to guess missing steps.

---

# Examples

Every example should provide enough context to explain:

* Input
* Behavior
* Expected output
* Failure behavior

Examples should demonstrate practical usage rather than isolated syntax.

---

# Diagrams

Every complex topic should include at least one meaningful diagram.

Suitable formats include:

* Draw.io
* Mermaid
* PlantUML

Each diagram should have a nearby explanation describing what it illustrates.

Diagrams should support the explanation rather than replace it.

---

# Links

Use relative links for content within the repository.

Example:

```markdown id="7jlwmm"
[Leader election](../consensus/leader-election.md)
```

Verify all internal links before merging changes.

---

# References

Prefer primary sources whenever possible.

Examples:

* Official documentation
* Standards
* Technical papers
* Original engineering blogs

Only include references that were actually used while preparing the content.

Avoid adding unrelated or unverified references.

---

# Active Recall Questions

Every topic should include questions that test understanding.

Weak question:

```text id="sljlwm"
What is Kafka?
```

Better question:

```text id="agjlwm"
Why might Kafka be a poor choice for low-volume task dispatch?
```

Good questions require reasoning rather than simple definition recall.

---

# Trade-offs

Every architectural topic should discuss trade-offs.

Compare alternatives objectively.

Examples:

* Strong consistency vs. eventual consistency
* Simplicity vs. flexibility
* Latency vs. durability
* Throughput vs. ordering guarantees

Avoid describing any technology as universally good or bad.

Every design decision should explain both its benefits and its limitations.

---

# Failure Scenarios

Distributed systems topics should explicitly discuss failure handling.

At minimum, consider:

* Timeouts
* Retries
* Duplicate execution
* Partial failures
* Process crashes
* Dependency outages
* Network partitions
* Stale data

Learners should understand how systems behave when things go wrong, not only when everything works correctly.

---

# Documentation Principles

Good documentation should be:

* Easy to skim.
* Easy to search.
* Easy to maintain.
* Easy to review.
* Easy to apply.

The objective is not to write the longest explanation.

The objective is to produce documentation that helps learners understand, remember, and apply technical concepts effectively.
