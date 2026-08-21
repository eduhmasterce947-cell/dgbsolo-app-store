#!/bin/sh
if [ -z "$1" ]; then
  echo "Uso: ./replace-user.sh SEU_USUARIO_GITHUB"
  exit 1
fi
grep -rl "SEU_USUARIO" . --exclude="replace-user.sh" | while read f; do
  sed -i "s/SEU_USUARIO/$1/g" "$f"
done
echo "Substituído por: $1"
