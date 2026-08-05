#!/usr/bin/env bash

set -Eeuo pipefail

readonly SCRIPT_NAME="$(basename "$0")"
readonly SCRIPT_DIRECTORY="$(
  cd "$(dirname "${BASH_SOURCE[0]}")"
  pwd
)"
readonly REPOSITORY_ROOT="$(
  cd "${SCRIPT_DIRECTORY}/.."
  pwd
)"
readonly LEARNING_TEMPLATES="${REPOSITORY_ROOT}/templates/learning"

usage() {
  cat <<USAGE
Usage:
  ${SCRIPT_NAME} <skill-slug> [target-directory]

Examples:
  ${SCRIPT_NAME} distributed-systems
  ${SCRIPT_NAME} distributed-systems ~/projects/computing-learning/distributed-systems/learning
USAGE
}

fail() {
  printf 'Error: %s\n' "$1" >&2
  exit 1
}

validate_slug() {
  local slug="$1"

  if [[ ! "$slug" =~ ^[a-z0-9]+([a-z0-9-]*[a-z0-9])?$ ]]; then
    fail "Invalid skill slug: ${slug}"
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

copy_template() {
  local source="$1"
  local destination="$2"
  local skill_title="$3"
  local skill_slug="$4"

  mkdir -p "$(dirname "$destination")"

  sed \
    -e "s/{{SKILL_TITLE}}/${skill_title}/g" \
    -e "s/{{SKILL_SLUG}}/${skill_slug}/g" \
    "$source" > "$destination"
}

create_structure() {
  local target="$1"

  mkdir -p \
    "${target}/topics" \
    "${target}/plans" \
    "${target}/reviews" \
    "${target}/labs" \
    "${target}/case-studies" \
    "${target}/cheatsheets" \
    "${target}/applications" \
    "${target}/assets"
}

create_index() {
  local target="$1"
  local skill_title="$2"

  cat > "${target}/README.md" <<EOF_README
# ${skill_title} Learning Workspace

This directory tracks the complete learning process for ${skill_title}.

## Workflow

1. Define the learning contract.
2. Read and write the overview.
3. Extract keywords.
4. Prioritize the keyword backlog.
5. Create the study plan.
6. Write topic notes.
7. Complete active recall.
8. Review with spaced repetition.
9. Apply knowledge to a project.
10. Write the final summary.
11. Complete the retrospective.

## Files

- [Learning contract](00-learning-contract.md)
- [Overview](01-overview.md)
- [Keyword backlog](02-keyword-backlog.md)
- [Study plan](03-study-plan.md)
- [Active recall](07-active-recall.md)
- [Project application](09-project-application.md)
- [Final summary](10-final-summary.md)
- [Retrospective](11-retrospective.md)

## Directories

\`\`\`text
topics/          Detailed topic notes
plans/           Daily and weekly learning plans
reviews/         Spaced-repetition reviews
labs/            Practical experiments
case-studies/    Real-world system analysis
cheatsheets/     Quick references
applications/    Project applications
assets/          Images and diagrams
\`\`\`
EOF_README
}

create_gitkeep_files() {
  local target="$1"

  find \
    "${target}/topics" \
    "${target}/plans" \
    "${target}/reviews" \
    "${target}/labs" \
    "${target}/case-studies" \
    "${target}/cheatsheets" \
    "${target}/applications" \
    "${target}/assets" \
    -type d \
    -empty \
    -exec touch {}/.gitkeep \;
}

main() {
  if [[ $# -lt 1 || $# -gt 2 ]]; then
    usage
    exit 1
  fi

  local skill_slug="$1"
  local target="${2:-$PWD/learning}"
  local skill_title

  validate_slug "$skill_slug"

  [[ -d "$LEARNING_TEMPLATES" ]] \
    || fail "Learning templates not found: ${LEARNING_TEMPLATES}"

  if [[ -e "$target" ]] && [[ -n "$(find "$target" -mindepth 1 -maxdepth 1 2>/dev/null)" ]]; then
    fail "Target directory is not empty: ${target}"
  fi

  skill_title="$(title_from_slug "$skill_slug")"

  create_structure "$target"

  copy_template \
    "${LEARNING_TEMPLATES}/00-learning-contract.md" \
    "${target}/00-learning-contract.md" \
    "$skill_title" \
    "$skill_slug"

  copy_template \
    "${LEARNING_TEMPLATES}/01-overview.md" \
    "${target}/01-overview.md" \
    "$skill_title" \
    "$skill_slug"

  copy_template \
    "${LEARNING_TEMPLATES}/02-keyword-backlog.md" \
    "${target}/02-keyword-backlog.md" \
    "$skill_title" \
    "$skill_slug"

  copy_template \
    "${LEARNING_TEMPLATES}/03-study-plan.md" \
    "${target}/03-study-plan.md" \
    "$skill_title" \
    "$skill_slug"

  copy_template \
    "${LEARNING_TEMPLATES}/07-active-recall.md" \
    "${target}/07-active-recall.md" \
    "$skill_title" \
    "$skill_slug"

  copy_template \
    "${LEARNING_TEMPLATES}/09-project-application.md" \
    "${target}/09-project-application.md" \
    "$skill_title" \
    "$skill_slug"

  copy_template \
    "${LEARNING_TEMPLATES}/10-final-summary.md" \
    "${target}/10-final-summary.md" \
    "$skill_title" \
    "$skill_slug"

  copy_template \
    "${LEARNING_TEMPLATES}/11-retrospective.md" \
    "${target}/11-retrospective.md" \
    "$skill_title" \
    "$skill_slug"

  cp \
    "${LEARNING_TEMPLATES}/topics/topic-note.md" \
    "${target}/topics/TEMPLATE.md"

  cp \
    "${LEARNING_TEMPLATES}/plans/daily-plan.md" \
    "${target}/plans/TEMPLATE.md"

  cp \
    "${LEARNING_TEMPLATES}/reviews/review.md" \
    "${target}/reviews/TEMPLATE.md"

  create_index "$target" "$skill_title"
  create_gitkeep_files "$target"

  printf 'Learning workspace created successfully.\n'
  printf 'Skill: %s\n' "$skill_title"
  printf 'Target: %s\n' "$target"
}

main "$@"
