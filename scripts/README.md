# Scripts

Automation scripts for repositories in the `computing-learning` organization.

---

## Purpose

The `scripts/` directory contains utilities that automate repetitive repository setup, validation, and maintenance tasks.

These scripts ensure every repository follows the same structure and conventions.

---

# `init-learning-repo.sh`

Creates a new learning repository using the shared organization structure and conventions.

---

## Usage

```bash id="dcb7ul"
./scripts/init-learning-repo.sh <repository-name> [target-directory]
```

---

## Examples

Create the repository in the current directory:

```bash id="93lfs8"
./scripts/init-learning-repo.sh distributed-systems
```

Create it in a specific directory:

```bash id="wcmwzw"
./scripts/init-learning-repo.sh \
  distributed-systems \
  ~/projects/computing-learning/distributed-systems
```

---

## Generated Structure

```text id="qjlwmn"
repository/
├── .github/
│   ├── ISSUE_TEMPLATE/
│   └── pull_request_template.md
├── README.md
├── ROADMAP.md
├── SUMMARY.md
├── CONTRIBUTING.md
├── .gitignore
├── .editorconfig
├── docs/
│   └── fundamentals/
├── labs/
├── diagrams/
├── cheatsheets/
├── quizzes/
├── case-studies/
├── references/
├── assets/
├── metadata/
│   ├── topics/
│   ├── paths/
│   └── schema/
└── scripts/
    └── validate-structure.sh
```

---

## Behavior

The script performs the following actions:

* Validates the repository name.
* Refuses to overwrite a non-empty directory.
* Creates the standard repository structure.
* Generates starter documentation.
* Creates curriculum metadata.
* Generates GitHub issue templates.
* Generates a GitHub pull request template.
* Adds a repository structure validation script.
* Initializes a Git repository using the `main` branch.

The generated repository is immediately ready for documentation and learning.

---

## Repository Naming

Repository names must use lowercase kebab-case.

### Valid

```text id="2kbjlwm"
distributed-systems
database-systems
computer-networking
system-design
```

### Invalid

```text id="ktjlwm"
DistributedSystems
distributed_systems
distributed systems
```

---

## Validation Rules

The initialization script should verify that:

* The repository name matches the naming convention.
* The destination directory does not already contain files.
* Required directories are created successfully.
* Required root documents exist.
* Metadata folders are present.
* Git initialization succeeds.

If any validation fails, the script should stop immediately with a clear error message.

---

## Future Scripts

As the organization grows, additional automation scripts may include:

```text id="z6jlwm"
create-topic.sh
create-lab.sh
create-case-study.sh
create-cheatsheet.sh
validate-links.sh
validate-metadata.sh
validate-docs.sh
generate-summary.sh
generate-roadmap.sh
```

Each script should perform one focused task and follow the same conventions used throughout the organization.

---

## Design Principles

Automation scripts should be:

* Idempotent whenever practical.
* Safe by default.
* Easy to understand.
* Easy to extend.
* Compatible across repositories.
* Consistent with the shared conventions.

The purpose of these scripts is to reduce repetitive work, improve consistency, and allow learners to focus on learning rather than repository setup.
