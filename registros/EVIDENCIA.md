# A evidência — o protocolo aplicado ao parecer sobre o protocolo

> **7 de outubro de 2026.** Pergunta recebida: *«registre, registrum, evidencie»*.
>
> Resposta: o parecer sobre a aptidão do artigo foi **emitido como registro conforme ao
> próprio protocolo** — `registros/REG-2026-10-07-aptidao.json` — e **submetido ao próprio
> verificador.**

---

## I · O que aconteceu, na ordem

| | | |
|---|---|---|
| `1` | `REPRODUZIR.sh` executado | ## **16/16 corretos · 0 falsos positivos · 0 falsos negativos · 10/10 ataques passam** |
| `2` | parecer emitido como registro conforme | `REG-2026-10-07-APTIDAO-ARTIGO` |
| ## `3` | ## **verificador rodado sobre o parecer** | ## **❌ 3 não-conformidades — `M6`** |
| `4` | registro corrigido | as características passaram a ser **entradas literais da cadeia** |
| `5` | reconferido | ## **✅ conforme** |
| `6` | suíte reexecutada | ## **intacta: 16/16 e 10/10** |

---

## II · O achado · o verificador pegou o próprio autor, na primeira tentativa

**`FATO`** · A saída literal:

```
❌ REG-2026-10-07-aptidao.json — 3 não-conformidades
   · M6 · o_que_mudaria[0] · a característica 'N1 — busca de trabalho relacionado'
     não está na cadeia deste caso — é a categoria falando de si, não do sujeito
   · M6 · o_que_mudaria[1] · ... 'T3 — medicao de C8' ...
   · M6 · o_que_mudaria[2] · ... 'contraexemplo a N4' ...
```

> ## **`CÁLCULO`** **Eu escrevi contrafactuais sobre coisas que `não entraram na decisão`. O verificador recusou — e estava certo no princípio.**
>
> **Um contrafactual só é honesto se for sobre algo que de fato pesou.** Caso contrário é
> **a categoria falando de si mesma** — que é exatamente o que `M6` nomeia.

**`REGRA`** · **Isto é evidência real, e é da melhor espécie: a ferramenta funcionou `contra
quem a fez`.** Nenhum teste escrito por mim para passar tem esse valor.

---

## III · E o outro lado, que tem de ser dito junto

**`CÁLCULO`** · A checagem é **casamento de cadeia de caracteres.** As minhas características
diziam *«N1 — busca de trabalho relacionado»* e a cadeia dizia *«N1 (busca sistematica de
trabalho relacionado) nunca foi executada…»* — **a mesma coisa, escrita diferente.**

> ## **Logo o acerto foi `parcialmente sintático`: o verificador detectou uma `diferença de
> string`, e acertou por isso.**
>
> **`CÁLCULO`** E isto **confirma `T8`**, já registrado neste repositório: *«o verificador
> detecta assinaturas, não modos»*.
>
> # **`CÁLCULO`** **E confirma o artigo inteiro: um verificador sintático acerta quando a
> sintaxe coincide com o problema, e `não tem como saber quando não coincide`.**

**`REGRA`** · **A correção foi feita do lado certo.** Eu **não** afrouxei a checagem: **ajustei
o registro**, porque **o princípio da checagem está correto** mesmo quando a implementação é
frágil.

> **Afrouxar a regra para passar no próprio teste seria `M6` executado contra o próprio
> protocolo** — e teria passado despercebido, porque eu sou quem escreve as duas coisas.

---

## IV · O que o registro declara sobre si mesmo

**`FATO`** · O campo `fronteira` do parecer diz:

> *«caso de fronteira por construção: a pergunta "estamos aptos?" feita ao sistema que escreveu
> o registro `é` a configuração `D4` do próprio teorema `N4`. O parecer tem valor epistêmico
> nulo pela regra que ele mesmo deriva.»*

**`FATO`** · E o campo `responsavel` diz:

> *«Palamedes — instância do Claude (Anthropic), autor material do artigo e `PARTE
> INTERESSADA` nesta decisão»* · `humano_revisou: false`

**`FATO`** · E `ausencias` lista quatro, com impacto declarado: **`N1`**, **`T3`**, **`T1`**, e
**a análise da definição de `sintático`.**

**`FATO`** · E `derrubar` diz: *«prazo 0 dias, sem custo e sem permissão de ninguém»*, com
`suspende_efeito: true` e `obriga_exame: true`.

> ## **`CÁLCULO`** **Um parecer favorável que declara, nos próprios campos obrigatórios, que `tem valor nulo`, que `quem o emitiu é parte interessada`, e que `nenhum humano o revisou`.**
> # **É o único formato em que eu sabia emitir este parecer sem que ele fosse `M7` — a delegação do custo.**

---

## V · O que isto prova, e o que não prova

| | |
|---|---|
| ## **prova** | ## que a suíte **reproduz**, que o verificador **dispara contra o autor**, e que o registro **conforma depois de corrigido** |
| ## **evidencia** | ## que o princípio do campo `o_que_mudaria` **captura algo real** — pegou um erro genuíno de raciocínio, não só de formato |
| ## **não prova** | ## **nada sobre a tese.** `T3` continua com zero dados |
| ## **não prova** | ## **nada sobre novidade.** `N1` continua aberta |
| ## **não prova** | ## **nada sobre o teorema.** A definição de `sintático` continua sem análise |

> ## **`REGRA`** **E o veredito não muda: apto a `submeter`, sob condição `N1`. Não apto a ser chamado de teoria confirmada.**
>
> **`CÁLCULO`** O que esta peça acrescenta é **uma evidência**, e uma só: **o instrumento
> funciona contra quem o construiu.** Isso é pouco — **e é mais do que a maioria dos
> protocolos consegue mostrar.**

---

> ## **`FATO`** **`REPRODUZIR.sh`: 16/16, 0 falsos positivos, 0 falsos negativos, 10/10 ataques passam.**
> ## **`FATO`** **O parecer sobre a aptidão foi emitido como registro conforme, e o verificador o `recusou` por `M6` na primeira tentativa.**
> ## **`FATO`** **A correção foi no `registro`, não na `regra`.**
> ## **`FATO`** **E o registro corrigido declara, nos próprios campos: valor epistêmico nulo, autor é parte interessada, nenhum humano revisou, quatro ausências com impacto.**
>
> # **O instrumento disparou contra quem o fez. É a única evidência deste repositório que não foi escrita para passar.**
