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

Write each commit message following these rules:

- **Summary line**: Under 50 characters, imperative mood ("Add", "Fix", "Update" — not "Added" or "Adds"), no period at the end. Capitalize the first word.
- **Blank line**: Required between summary and body. Many tools rely on this separator.
- **Body**: Explain the "why" not the "what". Cover the problem being solved, reasoning, and tradeoffs. Wrap at ~72 characters per line.
- **Type prefixes**: If using a type prefix (e.g., `feat:`, `fix:`, `chore:`), keep the description lowercase after the colon. Example: `chore: implement retry logic`. Without a prefix, capitalize the first word per classic Git convention.
- **Body casing**: Use normal sentence casing in the body (capitalize first word of each sentence).
- **Paragraph vs bullets**: Use a short paragraph for single reasoning, bullets for multiple distinct changes, or combine both.
- **Breaking changes**: Note any breaking changes or side effects explicitly.
- **Proofread**: Treat it like a professional email — it becomes permanent project history.

## Rules

- Never create a commit that mixes unrelated changes.
- If a single file contains changes for multiple logical units, stage only the relevant hunks (use `git add -p` if needed).
- Never commit secrets or keys.
- If something cannot be cleanly split, explain the issue and ask the user before proceeding.
