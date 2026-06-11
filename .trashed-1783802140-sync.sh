#!/data/data/com.termux/files/usr/bin/bash

echo "📦 Sincronizando Obsidian → Termux..."

rsync -av /storage/emulated/0/Obsidian/JuSosaC/ ~/TERMUX/JuSosaC/

echo "📁 Entrando al repo..."
cd ~/TERMUX/JuSosaC || exit

echo "📌 Añadiendo cambios..."
git add .

echo "💾 Commit..."
git commit -m "sync $(date)" || echo "No changes to commit"

echo "🚀 Push a GitHub..."
git push

echo "✅ Sync completo"
