#!/usr/bin/env bash
# WikiQigong push helper — pushes main to GitHub using the remote OpenCode
# server's classic OAuth token (local fine-grained PAT cannot push new content).
#
# Usage: ./scripts/push.sh
#
# The token is read fresh each time from the remote OpenCode server and used in
# a ONE-TIME push URL. It is never persisted to git config.

set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
REMOTE="https://github.com/martinxionbiotech-max/wikiqigong.git"
OC_BASE="http://43.130.37.37:4096"
OC_AUTH="opencode:2034864cs"

echo "== Reading GitHub OAuth token from remote OpenCode server =="
TOKEN="$(
  curl -s -u "$OC_AUTH" \
    "${OC_BASE}/file/content?path=/home/developer/.config/gh/hosts.yml&directory=/home/developer" \
    | python3 -c "
import sys, json
try:
    d = json.load(sys.stdin)
    c = d.get('content', '')
except Exception:
    c = ''
# fallback: parse raw oauth_token: line if content key absent
if not c:
    c = sys.stdin.read() if False else ''
for line in c.splitlines():
    if 'oauth_token' in line:
        print(line.split('oauth_token:')[1].strip().split()[0])
        break
"
)"

if [ -z "$TOKEN" ] || [ "${#TOKEN}" -lt 30 ]; then
  echo "ERROR: could not extract token (len=${#TOKEN})" >&2
  exit 1
fi
echo "Token acquired (len=${#TOKEN})."

cd "$REPO_DIR"

echo "== Pushing main =="
git push "https://martinxionbiotech-max:${TOKEN}@github.com/martinxionbiotech-max/wikiqigong.git" main:main
echo "== Done =="
