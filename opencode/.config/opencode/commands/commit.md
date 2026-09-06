---
description: Review the diff and create atomic commits following house style
allowed-tools: Bash(git:*)
agent: build
model: opencode/big-pickle
---

Create atomic commits from all pending changes. Each commit must be one logical unit of work.

## Process

1. Run `git status` and `git diff` (and `git diff --staged` if anything is already staged) to see all pending changes.
2. Analyze the changes and group them into logical, atomic units. Each group should be one coherent change that makes sense on its own.
3. For each group:
   a. Stage only the files in that group using `git add`.
   b. Write a commit message following the rules below.
   c. Run `git commit` with that message.
4. After all commits are created, run `git log --oneline` to show the final result.

## Commit Message Rules

**Always** follow these rules for every commit. These are mandatory, not optional:

### Format

Every commit MUST use this structure:

```
<type>: <heading>

<body (optional)>
```

### Type prefix (ALWAYS required)

Every commit summary line MUST start with a lowercase type prefix followed by a colon and a space:

- `feat:` — new feature or functionality
- `fix:` — bug fix
- `refactor:` — code restructuring without behavior change
- `docs:` — documentation changes
- `chore:` — maintenance, tooling, config, dependencies
- `perf:` — performance improvement
- `test:` — adding or updating tests
- `style:` — formatting, whitespace, linting (no behavior change)
- `build:` — build system or external dependency changes
- `ci:` — CI configuration changes

After the prefix, the description stays lowercase (e.g., `feat: add user dashboard`, NOT `feat: Add user dashboard`).

### Heading

- Keep the heading under 50 characters total (including prefix)
- Imperative mood: "Add", "Fix", "Update" — not "Added" or "Adds"
- No period at the end

### Body (only when necessary)

- Include a body ONLY when the change needs explanation beyond the heading
- If the heading fully explains the change, omit the body entirely
- When a body is included, add a blank line after the heading
- Explain the "why" not the "what" — cover the problem being solved, reasoning, and tradeoffs
- Wrap at ~72 characters per line
- Use normal sentence casing in the body

## Rules

- Never create a commit that mixes unrelated changes.
- Always add a prefix and keep the header bellow 50 characters
- If a single file contains changes for multiple logical units, stage only the relevant hunks (use `git add -p` if needed).
- Never commit secrets or keys.
- If something cannot be cleanly split, explain the issue and ask the user before proceeding.
