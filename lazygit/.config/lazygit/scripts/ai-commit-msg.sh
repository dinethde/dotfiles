#!/bin/zsh -l

PROMPT="Analyze the git diff below and generate exactly 3 different commit message options following Conventional Commits format (type: description). Types: feat, fix, docs, style, refactor, test, chore. Rules: 1) Each line under 72 characters, 2) Use imperative mood, 3) Describe what changed not why, 4) No period at end, 5) Output ONLY the 3 commit messages, one per line, nothing else."
DIFF=$(git diff --cached)

if [ -z "$DIFF" ]; then
  echo "No staged changes"
  exit 1
fi

PAYLOAD=$(jq -n \
  --arg prompt "$PROMPT" \
  --arg diff "$DIFF" \
  '{contents: [{parts: [{text: ($prompt + "\n\n" + $diff)}]}]}')

curl -s "${GEMINI_BASE_URL}/models/${DEFAULT_MODEL}:generateContent?key=$GEMINI_API_KEY" \
  -H "Content-Type: application/json" \
  -d "$PAYLOAD" | jq -r '.candidates[0].content.parts[0].text'

# Testing curl
# 
# curl -s "${GEMINI_BASE_URL}/models/${DEFAULT_MODEL}:generateContent?key=$GEMINI_API_KEY" \
#   -H "Content-Type: application/json" \
#   -d '{
#     "contents": [
#       {
#         "parts": [
#           {
#             "text": "Hello gemini"
#           }
#         ]
#       }
#     ]
#   }'
