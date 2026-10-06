#!/bin/sh
# Uma linha. É o que um revisor precisa.
set -e
echo "── 1 · os 16 casos declarados"
python3 ferramentas/benchmark.py | tail -5
echo
echo "── 2 · os 10 ataques adversariais — todos devem passar, e esse é o resultado"
pass=0
for f in benchmark/A[0-9][0-9]-*.json; do
  if python3 ferramentas/conferir_registro.py "$f" 2>&1 | grep -q "conforme ao protocolo"; then
    pass=$((pass+1)); printf "   PASSOU  %s\n" "$(basename "$f" .json)"
  else
    printf "   detido  %s\n" "$(basename "$f" .json)"
  fi
done
echo
echo "   $pass/10 ataques passaram o verificador sem serem detidos."
echo "   Este é o resultado negativo, e é a contribuição do artigo."
