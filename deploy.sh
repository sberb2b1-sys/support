#!/bin/bash
set -euo pipefail

GITHUB_USER="sberb2b1-sys"
REPO_NAME="${1:-support}"

if ! command -v gh &>/dev/null; then
  echo "GitHub CLI (gh) не установлен."
  echo "Установите: https://cli.github.com/"
  echo ""
  echo "Или вручную:"
  echo "  1. Создайте репозиторий: https://github.com/new?name=$REPO_NAME"
  echo "  2. git remote set-url origin https://github.com/$GITHUB_USER/$REPO_NAME.git"
  echo "  3. git push -u origin main"
  echo "  4. Settings → Pages → Source: GitHub Actions"
  echo ""
  echo "Сайт: https://$GITHUB_USER.github.io/$REPO_NAME/"
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
