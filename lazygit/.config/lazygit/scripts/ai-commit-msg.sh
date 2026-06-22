#!/bin/zsh -l

PROMPT="Write a concise git commit message, output only the message, no markdown, no quotes"

git diff --cached | sgpt "$PROMPT"
