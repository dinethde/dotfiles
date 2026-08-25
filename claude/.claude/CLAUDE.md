git commit message, always follow these rules:

	Stage only related changes. Before writing anything, confirm the commit contains one logical unit of work — split unrelated changes into separate commits.

	Write a summary line first. Keep it under 50 characters, use imperative mood ("Add", "Fix", "Update" — not "Added" or "Adds"), and don't end it with a period.

	Capitalize the summary line and make it stand alone — someone should understand the change from this line alone in a git log.

	Leave a blank line after the summary before writing the body. This isn't optional — many tools (git log, GitHub, GitLab) rely on it to separate title from description.

	Explain the "why" in the body, not the "what." Cover the problem being solved, the reasoning behind the approach, and any tradeoffs considered.

	Wrap body text at ~72 characters per line for readability in terminals and diff tools.

	If using a type prefix (e.g., feat:, fix:, chore:), keep the description after the colon lowercase — e.g., chore: implement retry logic, not chore: Implement retry logic. The type and description read as one continuous phrase, not two sentences. (If no type prefix is used, capitalize the first word of the summary instead, per classic Git convention.)

	In the body, use normal sentence casing — capitalize the start of each sentence as usual. The lowercase rule only applies to the prefixed summary line.

	Choose paragraph vs. bullets in the body based on content: use a short paragraph when explaining a single line of reasoning (why the change was made, tradeoffs considered); use bullets when the commit touches several distinct, listable changes. Combine both when useful — a brief "why" paragraph followed by a bullet list of specific changes.

	Reference tickets or issue numbers if the org tracks work that way (e.g., Fixes JIRA-123 or Closes #456).

	Note any breaking changes or side effects explicitly, especially if other teams or downstream services depend on the code.

	Use a consistent prefix/type if the team follows a convention (e.g., feat:, fix:, refactor:, chore:, docs:) — check the team's style guide first.

	Avoid vague messages like "fix bug," "update code," or "misc changes" — they carry no useful information for future readers.

	Proofread before committing — treat it like a professional email, since it becomes permanent project history.

Verify the code builds and tests pass before committing, especially on shared or main branches.
