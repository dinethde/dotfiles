#!/bin/zsh -l

PROMPT="Write a concise git commit message, output only the message, no markdown, no quotes"
DIFF=$(git diff --cached)

if [ -z "$DIFF" ]; then
  echo "No staged changes"
  exit 1
fi

PAYLOAD=$(jq -n \
  --arg prompt "$PROMPT" \
  --arg diff "$DIFF" \
  '{contents: [{parts: [{text: ($prompt + "\n\n" + $diff)}]}]}')

curl -s "${GEMINI_BASE_URL}/models/${DEFAULT_MODEL}:generateContent?key=$OPENAI_API_KEY" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" | jq -r '.candidates[0].content.parts[0].text'
