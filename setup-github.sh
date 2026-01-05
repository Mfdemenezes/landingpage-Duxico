#!/bin/bash
# 1. Crie repositório no GitHub (público) chamado 'duxico'
# 2. Execute este script

GITHUB_USER="seu-usuario"
REPO_NAME="duxico"

git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git
git branch -M main
git push -u origin main

echo "✅ Push concluído!"
echo "📍 Ative GitHub Pages em: Settings > Pages > Source: main / (root)"
echo "🌐 Site estará em: https://$GITHUB_USER.github.io/$REPO_NAME"
