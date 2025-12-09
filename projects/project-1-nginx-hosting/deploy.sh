#!/bin/bash
# deploy.sh — portable deploy script for nginx-hosting project
# Place this file inside projects/project-1-nginx-hosting/

set -euo pipefail

echo "🚀 Starting deployment..."

# Resolve script directory (works on WSL or normal Linux)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$SCRIPT_DIR/site"
DEST="/var/www/html"

if [ ! -d "$SRC" ]; then
  echo "❌ Source folder not found: $SRC"
  exit 1
fi

echo "📁 Copying files from: $SRC to: $DEST"
# copy with sudo (preserve existing files)
sudo cp -r "$SRC"/* "$DEST"/

echo "🔐 Setting correct ownership and permissions..."
sudo chown -R www-data:www-data "$DEST"
sudo chmod -R 755 "$DEST"

echo "🔄 Restarting NGINX..."
sudo systemctl restart nginx

echo "✅ Deployment complete!"
echo "🌍 Open this in your browser: http://localhost"
