#!/bin/bash
set -euo pipefail

REPO_NAME="${1:-ios-support}"

if ! command -v gh &>/dev/null; then
  echo "GitHub CLI (gh) не установлен."
  echo "Установите: https://cli.github.com/"
  echo ""
  echo "Или вручную:"
  echo "  1. Создайте репозиторий на https://github.com/new"
  echo "  2. git remote add origin https://github.com/YOUR_USER/$REPO_NAME.git"
  echo "  3. git push -u origin main"
  echo "  4. Settings → Pages → Source: GitHub Actions"
  exit 1
fi

gh auth status || gh auth login

gh repo create "$REPO_NAME" --public --source=. --remote=origin --push

gh api "repos/{owner}/$REPO_NAME/pages" -X POST \
  -f build_type=workflow \
  -f source[branch]=main \
  -f source[path]=/ 2>/dev/null || true

echo ""
echo "Деплой запущен. Сайт будет доступен через 1–2 минуты:"
gh api "repos/{owner}/$REPO_NAME/pages" --jq '.html_url' 2>/dev/null || \
  echo "https://$(gh api user --jq .login).github.io/$REPO_NAME/"
