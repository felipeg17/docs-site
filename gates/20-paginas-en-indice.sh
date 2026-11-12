#!/usr/bin/env bash
# gates/20-paginas-en-indice.sh — cada página nueva de docs/ tiene título "# ..." y está linkeada desde docs/index.md.
# "Nueva" = está en FACTORY_CHANGED, existe ahora y no existía en FACTORY_BASE.
index="docs/index.md"
bad=""
while IFS= read -r f; do
  case "$f" in docs/*.md) ;; *) continue ;; esac
  [ "$f" = "$index" ] && continue
  [ -f "$f" ] || continue                                  # borrada: no aplica
  git cat-file -e "${FACTORY_BASE:-HEAD}:$f" 2>/dev/null && continue  # ya existía: no es nueva
  name="${f#docs/}"
  first="$(grep -m1 -v '^[[:space:]]*$' "$f")"
  case "$first" in "# "?*) ;; *) bad="$bad  $f: la primera línea no es un título \"# ...\""$'\n' ;; esac
  grep -qE "\]\(${name//./\\.}(#[^)]*)?\)" "$index" 2>/dev/null \
    || bad="$bad  $f: no está linkeada desde $index"$'\n'
done <<<"${FACTORY_CHANGED:-}"
if [ -n "$bad" ]; then
  echo "Páginas nuevas sin título o sin link desde el índice:"
  printf '%s' "$bad"
  exit 1
fi
echo "Páginas nuevas con título y en el índice."
