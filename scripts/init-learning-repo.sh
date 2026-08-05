#!/usr/bin/env bash

set -Eeuo pipefail

readonly SCRIPT_NAME="$(basename "$0")"

usage() {
  cat <<USAGE
Usage:
  ${SCRIPT_NAME} <repository-name> [target-directory]

Examples:
  ${SCRIPT_NAME} distributed-systems
  ${SCRIPT_NAME} database-systems ~/projects/computing-learning/database-systems

Repository name rules:
  - lowercase letters
  - numbers are allowed
  - words separated by hyphens
  - must start and end with a letter or number
USAGE
}

fail() {
  printf 'Error: %s\n' "$1" >&2
  exit 1
}

validate_repository_name() {
  local repository_name="$1"

  if [[ ! "$repository_name" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    fail "Invalid repository name: ${repository_name}"
  fi
}

title_from_slug() {
  local slug="$1"

  printf '%s' "$slug" \
    | tr '-' ' ' \
    | awk '{
        for (i = 1; i <= NF; i++) {
          $i = toupper(substr($i, 1, 1)) substr($i, 2)
        }

        print
      }'
}

create_directory_structure() {
  local target_directory="$1"

  mkdir -p \
    "${target_directory}/.github/ISSUE_TEMPLATE" \
    "${target_directory}/docs/fundamentals" \
    "${target_directory}/labs" \
    "${target_directory}/diagrams" \
    "${target_directory}/cheatsheets" \
    "${target_directory}/quizzes" \
    "${target_directory}/case-studies" \
    "${target_directory}/references" \
    "${target_directory}/assets" \
    "${target_directory}/metadata/topics" \
    "${target_directory}/metadata/paths" \
    "${target_directory}/metadata/schema" \
    "${target_directory}/scripts"
}

create_readme() {
  local target_directory="$1"
  local repository_title="$2"
  local repository_name="$3"

  cat > "${target_directory}/README.md" <<EOF_README
# ${repository_title}

A practical learning repository for studying ${repository_title}.

## Purpose

This repository provides structured learning materials, active-recall questions,
labs, case studies, diagrams, and references.

## Target learners

This repository is intended for software engineers who want to understand both
the theory and practical application of ${repository_title}.

## Learning flow

\`\`\`text
Overview
   ↓
Extract keywords
   ↓
Study core concepts
   ↓
Write concise notes
   ↓
Answer active-recall questions
   ↓
Build labs
   ↓
Review using spaced repetition
   ↓
Apply to a real system
\`\`\`

## Repository structure

\`\`\`text
${repository_name}/
├── docs/             Learning materials
├── labs/             Reproducible experiments
├── diagrams/         Architecture and flow diagrams
├── cheatsheets/      Quick-reference notes
├── quizzes/          Active-recall questions
├── case-studies/     Real-world system analysis
├── references/       Curated learning resources
├── metadata/         Machine-readable curriculum metadata
└── assets/           Images and supporting files
\`\`\`

## Roadmap

See [ROADMAP.md](ROADMAP.md).

## Table of contents

See [SUMMARY.md](SUMMARY.md).

## Learning conventions

This repository follows the shared standards defined by the
\`computing-learning/templates\` repository.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).
EOF_README
}

create_roadmap() {
  local target_directory="$1"
  local repository_title="$2"

  cat > "${target_directory}/ROADMAP.md" <<EOF_ROADMAP
# ${repository_title} Roadmap

## Progress symbols

- ⬜ Not started
- 👀 Overview
- 📖 Learning
- 🧪 Practicing
- 🔁 Reviewing
- 🛠 Applied
- ✅ Completed
- ⏸ Paused

## Learning path

### 1. Fundamentals

- [ ] Understand the domain overview
- [ ] Identify core terminology
- [ ] Understand the main problems this domain solves
- [ ] Complete the fundamentals quiz
- [ ] Complete one introductory lab

### 2. Core concepts

- [ ] Define the core topic list
- [ ] Complete topic notes
- [ ] Create active-recall questions
- [ ] Create cheatsheets
- [ ] Complete practical labs

### 3. Advanced concepts

- [ ] Study major architectural patterns
- [ ] Analyze trade-offs
- [ ] Study failure scenarios
- [ ] Complete advanced labs
- [ ] Review real-world systems

### 4. Application

- [ ] Complete a system design exercise
- [ ] Complete a case study
- [ ] Apply concepts to a real project
- [ ] Explain the domain without notes
EOF_ROADMAP
}

create_summary() {
  local target_directory="$1"
  local repository_title="$2"

  cat > "${target_directory}/SUMMARY.md" <<EOF_SUMMARY
# ${repository_title} Summary

## Fundamentals

- [Domain overview](docs/fundamentals/overview.md)
- [Glossary](docs/fundamentals/glossary.md)
- [Learning questions](quizzes/fundamentals.md)

## Labs

Labs will be added as topics are developed.

## Cheatsheets

Cheatsheets will be added after the corresponding topics are understood.

## Case studies

Case studies will be added after the core concepts are established.

## References

- [Books](references/books.md)
- [Papers](references/papers.md)
- [Official documentation](references/documentation.md)
- [Articles](references/articles.md)
- [Videos](references/videos.md)
EOF_SUMMARY
}

create_contributing() {
  local target_directory="$1"

  cat > "${target_directory}/CONTRIBUTING.md" <<'EOF_CONTRIBUTING'
# Contributing

## Purpose

Contributions should improve correctness, clarity, practical usefulness, or
learning effectiveness.

## Contribution types

Contributions may include:

- correcting inaccurate explanations
- improving diagrams
- adding active-recall questions
- adding reproducible labs
- adding failure scenarios
- adding primary references
- improving metadata
- fixing broken links

## Branch naming

Use:

```text
docs/<topic>
lab/<topic>
fix/<description>
chore/<description>
```

## Commit messages

Use Conventional Commits.

Examples:

```text
docs: add replication overview
feat: add leader election lab
fix: correct quorum explanation
chore: update topic metadata
```

## Documentation rules

Content should:

- use clear and direct language
- explain why a concept exists
- include trade-offs
- include practical examples
- include failure scenarios when relevant
- prefer primary references
- avoid copying complete external documentation

## Pull requests

A pull request should explain:

- what changed
- why it changed
- how it was validated
- which topic or lab it affects
EOF_CONTRIBUTING
}

create_gitignore() {
  local target_directory="$1"

  cat > "${target_directory}/.gitignore" <<'EOF_GITIGNORE'
.DS_Store
Thumbs.db

.idea/
.vscode/

node_modules/
dist/
coverage/

.env
.env.*
!.env.example

*.log
*.tmp
*.swp
EOF_GITIGNORE
}

create_editorconfig() {
  local target_directory="$1"

  cat > "${target_directory}/.editorconfig" <<'EOF_EDITORCONFIG'
root = true

[*]
charset = utf-8
end_of_line = lf
insert_final_newline = true
indent_style = space
indent_size = 2
trim_trailing_whitespace = true

[*.md]
trim_trailing_whitespace = false

[Makefile]
indent_style = tab
EOF_EDITORCONFIG
}

create_fundamentals() {
  local target_directory="$1"
  local repository_title="$2"

  cat > "${target_directory}/docs/fundamentals/overview.md" <<EOF_OVERVIEW
# ${repository_title} overview

## Overview

Describe what ${repository_title} is.

## Why it exists

Explain the problems that created the need for this domain.

## Problems it solves

List the major problems addressed by this domain.

## Core concepts

List the important concepts learners should understand.

## How it fits into a larger system

Explain where this domain appears in real software systems.

## When to use it

Describe appropriate use cases.

## When not to use it

Describe unsuitable use cases and unnecessary complexity.

## Trade-offs

Explain the main technical and operational trade-offs.

## Real-world examples

Add practical systems or production examples.

## Related topics

Link to related learning domains.

## Active-recall questions

- What is ${repository_title}?
- Why does this domain exist?
- What problems does it solve?
- What are its main trade-offs?
- Where would it appear in a production system?

## References

Add primary sources used to create this overview.
EOF_OVERVIEW

  cat > "${target_directory}/docs/fundamentals/glossary.md" <<EOF_GLOSSARY
# ${repository_title} glossary

## Purpose

This glossary contains important terms used throughout the repository.

## Terms

### Example term

Definition written in clear and practical language.

Related topics:

Add related topics here.
EOF_GLOSSARY
}

create_quiz() {
  local target_directory="$1"
  local repository_title="$2"

  cat > "${target_directory}/quizzes/fundamentals.md" <<EOF_QUIZ
# ${repository_title} fundamentals quiz

## Basic

1. What is ${repository_title}?
2. Why does this domain exist?
3. What are its primary responsibilities?
4. What are common examples?

## Intermediate

1. What are the major design trade-offs?
2. What assumptions does this domain usually make?
3. What are common implementation mistakes?
4. How does this domain interact with other system components?

## Advanced

1. What fails when the system is under heavy load?
2. Which guarantees are difficult to provide?
3. How would you validate the architecture?
4. How would you observe failures in production?

## Design exercise

Design a small system that demonstrates the main concepts of
${repository_title}.

Include:

- requirements
- architecture
- data flow
- failure scenarios
- trade-offs
- observability
EOF_QUIZ
}

create_references() {
  local target_directory="$1"

  cat > "${target_directory}/references/books.md" <<'EOF_BOOKS'
# Books

Add books that provide substantial value for this learning domain.

For each book, include:

- title
- author
- relevant chapters
- difficulty
- why it is useful
EOF_BOOKS

  cat > "${target_directory}/references/papers.md" <<'EOF_PAPERS'
# Papers

Prefer foundational or primary research papers.

For each paper, include:

- title
- authors
- publication year
- problem
- main contribution
- practical relevance
EOF_PAPERS

  cat > "${target_directory}/references/documentation.md" <<'EOF_DOCUMENTATION'
# Official documentation

List official documentation, standards, and specifications.

For each source, include:

- title
- organization
- relevant section
- purpose
EOF_DOCUMENTATION

  cat > "${target_directory}/references/articles.md" <<'EOF_ARTICLES'
# Articles

List high-quality technical articles.

Prefer:

- original engineering blogs
- detailed implementation reports
- production incident reports
- architecture deep dives
EOF_ARTICLES

  cat > "${target_directory}/references/videos.md" <<'EOF_VIDEOS'
# Videos

List technical talks, lectures, and conference presentations.

For each video, include:

- title
- speaker
- event or publisher
- topic
- why it is useful
EOF_VIDEOS
}

create_metadata_schema() {
  local target_directory="$1"

  cat > "${target_directory}/metadata/schema/topic.schema.yaml" <<'EOF_TOPIC_SCHEMA'
required:
  - id
  - title
  - domain
  - category
  - status
  - difficulty
  - estimated_minutes
  - prerequisites
  - related_topics
  - tags
  - resources

allowed_statuses:
  - draft
  - ready
  - deprecated
  - archived

allowed_difficulties:
  - beginner
  - intermediate
  - advanced
  - expert
EOF_TOPIC_SCHEMA

  cat > "${target_directory}/metadata/topics/fundamentals.yaml" <<'EOF_TOPIC'
id: REPOSITORY_SLUG-fundamentals
title: Fundamentals
domain: REPOSITORY_SLUG
category: fundamentals
status: draft
difficulty: beginner
estimated_minutes: 180

prerequisites: []

related_topics: []

tags:
  - fundamentals

resources:
  topic: docs/fundamentals/overview.md
  glossary: docs/fundamentals/glossary.md
  quiz: quizzes/fundamentals.md
  labs: []
EOF_TOPIC
}

replace_metadata_placeholders() {
  local target_directory="$1"
  local repository_name="$2"

  sed -i \
    "s/REPOSITORY_SLUG/${repository_name}/g" \
    "${target_directory}/metadata/topics/fundamentals.yaml"
}

create_issue_templates() {
  local target_directory="$1"

  cat > "${target_directory}/.github/ISSUE_TEMPLATE/content-error.md" <<'EOF_CONTENT_ERROR'
---
name: Content error
about: Report inaccurate or unclear learning content
title: "docs: "
labels: documentation
assignees: ""
---

## Location

Provide the file path and section.

## Current content

Describe the current explanation.

## Problem

Explain what is inaccurate, unclear, or incomplete.

## Suggested correction

Provide a correction or supporting source.

## References

Prefer primary sources.
EOF_CONTENT_ERROR

  cat > "${target_directory}/.github/ISSUE_TEMPLATE/lab-proposal.md" <<'EOF_LAB_PROPOSAL'
---
name: Lab proposal
about: Propose a practical learning lab
title: "lab: "
labels: lab
assignees: ""
---

## Topic

Which concept should the lab demonstrate?

## Goal

What should the learner understand after completing it?

## Proposed architecture

Describe the components and data flow.

## Experiments

List the behaviors and failures the learner should observe.

## Validation

Explain how the learner confirms the expected behavior.
EOF_LAB_PROPOSAL
}

create_pull_request_template() {
  local target_directory="$1"

  cat > "${target_directory}/.github/pull_request_template.md" <<'EOF_PULL_REQUEST'
# Summary

Describe the change.

## Purpose

Explain why this change is needed.

## Validation

Describe how the content, links, metadata, or lab was validated.

## Checklist

- [ ] Content is written clearly.
- [ ] Important claims use reliable references.
- [ ] Trade-offs are included.
- [ ] Failure scenarios are included where relevant.
- [ ] Links have been checked.
- [ ] Metadata has been updated where required.
EOF_PULL_REQUEST
}

create_validation_script() {
  local target_directory="$1"

  cat > "${target_directory}/scripts/validate-structure.sh" <<'EOF_VALIDATE'
#!/usr/bin/env bash

set -Eeuo pipefail

readonly REQUIRED_FILES=(
  "README.md"
  "ROADMAP.md"
  "SUMMARY.md"
  "CONTRIBUTING.md"
  ".gitignore"
  ".editorconfig"
  "docs/fundamentals/overview.md"
  "docs/fundamentals/glossary.md"
  "quizzes/fundamentals.md"
  "metadata/topics/fundamentals.yaml"
  "metadata/schema/topic.schema.yaml"
)

readonly REQUIRED_DIRECTORIES=(
  "docs"
  "labs"
  "diagrams"
  "cheatsheets"
  "quizzes"
  "case-studies"
  "references"
  "assets"
  "metadata"
)

has_errors=false

for path in "${REQUIRED_FILES[@]}"; do
  if [[ ! -f "$path" ]]; then
    printf 'Missing required file: %s\n' "$path" >&2
    has_errors=true
  fi
done

for path in "${REQUIRED_DIRECTORIES[@]}"; do
  if [[ ! -d "$path" ]]; then
    printf 'Missing required directory: %s\n' "$path" >&2
    has_errors=true
  fi
done

if [[ "$has_errors" == true ]]; then
  exit 1
fi

printf 'Repository structure is valid.\n'
EOF_VALIDATE

  chmod +x "${target_directory}/scripts/validate-structure.sh"
}

create_gitkeep_files() {
  local target_directory="$1"

  find \
    "${target_directory}/labs" \
    "${target_directory}/diagrams" \
    "${target_directory}/cheatsheets" \
    "${target_directory}/case-studies" \
    "${target_directory}/assets" \
    "${target_directory}/metadata/paths" \
    -type d \
    -empty \
    -exec touch {}/.gitkeep \;
}

initialize_git_repository() {
  local target_directory="$1"

  if [[ ! -d "${target_directory}/.git" ]]; then
    git -C "$target_directory" init
  fi

  git -C "$target_directory" branch -M main
}

main() {
  if [[ $# -lt 1 || $# -gt 2 ]]; then
    usage
    exit 1
  fi

  local repository_name="$1"
  local target_directory="${2:-$PWD/$repository_name}"
  local repository_title

  validate_repository_name "$repository_name"

  repository_title="$(title_from_slug "$repository_name")"

  if [[ -e "$target_directory" ]] &&
    [[ -n "$(find "$target_directory" -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
    fail "Target directory is not empty: ${target_directory}"
  fi

  printf 'Creating learning repository: %s\n' "$repository_name"
  printf 'Target directory: %s\n' "$target_directory"

  create_directory_structure "$target_directory"
  create_readme "$target_directory" "$repository_title" "$repository_name"
  create_roadmap "$target_directory" "$repository_title"
  create_summary "$target_directory" "$repository_title"
  create_contributing "$target_directory"
  create_gitignore "$target_directory"
  create_editorconfig "$target_directory"
  create_fundamentals "$target_directory" "$repository_title"
  create_quiz "$target_directory" "$repository_title"
  create_references "$target_directory"
  create_metadata_schema "$target_directory"
  replace_metadata_placeholders "$target_directory" "$repository_name"
  create_issue_templates "$target_directory"
  create_pull_request_template "$target_directory"
  create_validation_script "$target_directory"
  create_gitkeep_files "$target_directory"
  initialize_git_repository "$target_directory"

  printf '\nRepository created successfully.\n\n'
  printf 'Next commands:\n'
  printf ' cd %q\n' "$target_directory"
  printf ' ./scripts/validate-structure.sh\n'
  printf ' git add .\n'
  printf ' git commit -m "chore: initialize %s learning repository"\n' "$repository_name"
}

main "$@"