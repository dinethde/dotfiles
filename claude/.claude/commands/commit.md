---
description: Review the diff, then write and create a commit following house style
allowed-tools: Bash(git:*)
---

Do the following:

1. Run `git status` and `git diff` (and `git diff --staged` if anything is already staged) to see all pending changes.
2. If there are unrelated changes mixed together, point that out and suggest splitting them into separate commits rather than committing everything at once.
3. Stage the relevant files.
4. Write a commit message following the house style rules in `../` (summary line under 50 chars, imperative mood, lowercase after a type prefix like `feat:`/`fix:`/`chore:`, blank line before the body, body explains "why" not "what", wrapped at ~72 chars, paragraph or bullets as appropriate).
5. Run `git commit` with that message.
6. Show me the final commit (`git log -1`) so I can confirm it looks right.
