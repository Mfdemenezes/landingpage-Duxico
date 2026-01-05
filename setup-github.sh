#!/bin/bash
# Execute este script após criar o repositório no GitHub

# Substitua 'seu-usuario' e 'nome-do-repo' pelos valores corretos
GITHUB_USER="seu-usuario"
REPO_NAME="website"

echo "Configurando repositório remoto..."
git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git
git branch -M main
git push -u origin main

echo "Repositório configurado! Acesse:"
echo "https://github.com/$GITHUB_USER/$REPO_NAME"
echo "Para ativar GitHub Pages: Settings > Pages > Source: Deploy from branch > main"