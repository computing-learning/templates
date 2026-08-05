# How to Read Source Code

## Goal

Understand a system's behavior and architecture without reading every file.

---

# Step 1 — Find the Entry Point

Start where execution begins.

Typical entry points include:

* Application bootstrap
* `main()` function
* HTTP server startup
* Worker startup
* CLI command
* Dependency composition root

Understanding the entry point provides the overall structure before diving into implementation details.

---

# Step 2 — Follow One Flow

Choose a single behavior and trace it from start to finish.

Examples:

* HTTP request
* Database write
* Message consumption
* Retry workflow
* Shutdown sequence

Avoid jumping between unrelated features.

Complete one execution path before moving to another.

---

# Step 3 — Identify Boundaries

Locate the major architectural layers.

Typical boundaries include:

* Domain
* Application
* Infrastructure
* Transport
* Persistence
* External integrations

Understanding these boundaries makes the codebase much easier to navigate.

---

# Step 4 — Read Tests

Tests often explain the intended behavior more clearly than implementation.

Look for:

* Expected behavior
* Edge cases
* Failure conditions
* Public contracts

Tests are usually the fastest way to understand what the code is supposed to do.

---

# Step 5 — Run and Modify

Reading alone is not enough.

Run the application and experiment.

Suggested activities:

* Add logging.
* Add breakpoints.
* Change one input.
* Trigger one failure.
* Observe the result.

Small experiments build understanding much faster than passive reading.

---

# Output

After studying the codebase, produce:

* Request or event flow
* Component map
* Key abstractions
* Assumptions
* Failure behavior
* Open questions

These artifacts make future reviews much easier and reduce the need to reread the entire codebase.
