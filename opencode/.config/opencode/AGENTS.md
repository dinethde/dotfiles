# Commit Message Rules (Mandatory)

When writing git commit messages, ALWAYS follow these rules. They are not optional.

## Format

Every commit MUST use this structure:

```
<type>: <heading>

<body (optional)>
```

## Type prefix (ALWAYS required)

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

## Heading

- Keep the heading under 50 characters total (including prefix)
- Imperative mood: "Add", "Fix", "Update" — not "Added" or "Adds"
- No period at the end

## Body (only when necessary)

- Include a body ONLY when the change needs explanation beyond the heading
- If the heading fully explains the change, omit the body entirely
- When a body is included, add a blank line after the heading
- Explain the "why" not the "what" — cover the problem being solved, reasoning, and tradeoffs
- Wrap at ~72 characters per line

## Additional rules

- Never create a commit that mixes unrelated changes
- Stage only related changes; split unrelated changes into separate commits
- Never commit secrets or keys
- Note any breaking changes or side effects explicitly in the body
- Proofread before committing — it becomes permanent project history
