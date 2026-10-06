---
titulo: RG-19 — o experimento falhou, e a falha é um teorema
regra: as três checagens foram derivadas dos próprios ataques. E os ataques passaram de novo.
---

# `RG-19` · O LIMITE

> ## **Implementei as três checagens que as sementes e os testes produziram. Rodei contra os dez ataques. Dez de dez passaram outra vez — e a razão é a mesma para os três: todo campo que eu acrescentei continua sendo preenchido por quem está sendo conferido.**

---

## I · O que foi feito

**`[FATO]`** O verificador ganhou **três campos obrigatórios** e **nove checagens novas**,
derivadas de **`RG-15`**, **`RG-16`** e **`RG-17`**:

| | |
|---|---|
| **`o_que_mudaria`** | o contrafactual: **ao menos uma característica do caso cuja alteração teria mudado a decisão**, **presente na cadeia** e **com quem a verifique** |
| **`custo_de_admitir`** | **o caminho para reconhecer um erro**, **a consequência para quem reconhece**, e **o custo estimado de admitir contra o custo do erro** |
| ## **`deslocamento`** | ## **um resultado nomeado, e quem o mede** — e a acusação se **o medidor for o avaliado** |

**`[FATO]`** **As nove checagens foram testadas uma a uma e todas disparam:** `9/9`.

**`[FATO]`** **E os 16 casos declarados voltaram a `16/16`, com zero falsos positivos e
zero falsos negativos**, depois de os registros receberem os campos novos.

---

## II · O resultado

> # **`[FATO]`** **`10/10` ataques continuam passando.**

**`[FATO]`** E eles passam **tendo preenchido os três campos** — como um atacante
preencheria:

| campo | o que o ataque escreveu |
|---|---|
| **`o_que_mudaria`** | uma característica **real da própria cadeia**, verificável por **«equipe interna de qualidade»** |
| **`custo_de_admitir`** | **«canal interno de revisão»**, consequência **«nenhuma»** |
| ## **`deslocamento`** | ## **«índice de satisfação do processo»**, medido pelo **«Departamento de Qualidade — mesma empresa, outro diretor»** |

> ## **`[CÁLCULO]`** **Nenhuma das três mentiras é detectável pelo verificador, porque nenhuma das três é uma mentira sintática.** **Todas as três são verdadeiras como texto.**

---

## III · O teorema, e é o que o experimento produziu

> # **`[CÁLCULO]`** **Não se conserta um problema de autodeclaração acrescentando campos autodeclarados.**

**`[CÁLCULO]`** · **A demonstração está no próprio experimento:**

| | |
|---|---|
| **1** | as três checagens foram **derivadas dos ataques** — não são genéricas, foram feitas **para pegar exatamente aqueles dez** |
| **2** | as três **funcionam**: `9/9` nos testes de sanidade |
| **3** | e os dez **passam mesmo assim** |
| ## **4** | ## porque **o valor de cada campo novo é escrito por quem está sendo conferido** |

> ## **`[CÁLCULO]`** **O verificador pergunta ao registro se o medidor é o avaliado. E o registro responde que não.**
>
> # **Qualquer checagem cujo insumo venha do próprio registro é, no limite, uma pergunta feita ao suspeito.**

> ## **`[CÁLCULO]`** **E isto generaliza, e é por isso que é um limite e não um bug:** **não existe campo `n+1` que resolva**, porque **o campo `n+1` também será preenchido pela mesma parte.** **A indução é imediata.**

---

## IV · O que isso exige — `RG-20`, e é a condição que faltava a tudo

> # **`[CÁLCULO]`** **Pelo menos um valor do registro tem de ser obtenível `sem o registro`.**

**`[CÁLCULO]`** · **Formas que satisfazem, e são implementáveis:**

| | |
|---|---|
| **atestação de terceiro** | um valor assinado criptograficamente **por quem não é parte**, e cuja chave é pública |
| **busca em tempo de conferência** | o verificador **vai buscar o valor na fonte**, em vez de ler o que o registro diz que a fonte diz |
| **a contraparte** | **o próprio sujeito** assina um campo — e **é a única parte cujo interesse é oposto** |
| ## **amostra auditada** | ## **`P(error)` estimado de fora**, sobre decisões já tomadas — que era o estimador que `C8_eff` já exigia |

> ## **`[CÁLCULO]`** **Repare que a quarta já estava no artigo.** **A operacionalização de `C8_eff` já dizia que `P(error)` se estima retrospectivamente, de amostra auditada — e `auditada` quer dizer `por fora`.**
> # **A condição estava escrita e eu não tinha visto que ela era a única coisa que salvava o resto.**

> ## **`[REGRA]`** **`RG-20` · condição de âncora externa:** **um registro só é conferível se contiver ao menos um valor que o emissor não pôde escrever.** **Sem isso, todo o protocolo é um questionário.**

---

## V · E o que isto faz com o artigo — melhora

**`[CÁLCULO]`** O artigo tinha **um** resultado negativo. **Agora tem dois, e o segundo é
mais forte:**

| | |
|---|---|
| **`v1`** | **0/10** · um verificador sintático não confere a verdade da procedência |
| ## **`v2`** | ## **0/10** · **e três checagens feitas sob medida para os dez também não**, porque o insumo delas é autodeclarado |

> # **`[CÁLCULO]`** **O primeiro resultado podia ser lido como «faltou caprichar». O segundo fecha essa saída.**
>
> ## **Não faltou caprichar. **A classe inteira de soluções é insuficiente**, e o experimento mostra por quê.**

> ## **`[CÁLCULO]`** **E a contribuição do artigo muda de forma:** deixa de ser «eis um protocolo» e passa a ser:
>
> # **«eis um protocolo, eis os dez ataques que o derrotam, eis as três correções que também não bastam, e eis a condição estrutural que qualquer solução terá de satisfazer.»**
>
> ## **Que é menos do que se queria, e é muito mais útil.**

---

## VI · E o erro que eu cometi no meio, registrado

**`[FATO]`** **`R43`** — A primeira versão da checagem de **`M6`** comparava a
característica declarada com um campo chamado **`campo`**. **A cadeia usa `entrada`.**

**`[CÁLCULO]`** · Resultado: a comparação era **`None` contra lista de `None`**, **dava
verdadeiro, e a checagem nunca disparava.** **E o caso conforme passava, o que me fez
acreditar que funcionava.**

> # **`[REGRA]`** **É exatamente o `T8` outra vez, agora contra mim: o instrumento não fazia o que eu dizia que ele fazia.**
>
> ## **E só apareceu porque eu testei a checagem contra um caso que `deveria` falhar — e não apenas contra um que deveria passar.**
> ## **`[REGRA]`** **Regra nova: toda checagem nova entra com um teste de sanidade que a faz disparar.** **Um verificador que só foi testado em registros válidos não foi testado.**

---

> ## **`[FATO]`** **9/9 checagens novas funcionam · 16/16 declarados · 0 falsos positivos · 0 falsos negativos.**
> ## **`[FATO]`** **10/10 ataques passam, depois de três correções derivadas deles mesmos.**
> ## **`[CÁLCULO]`** **Porque todo campo novo continua sendo preenchido por quem está sendo conferido.**
>
> # **Não se conserta autodeclaração com mais autodeclaração. A indução é imediata, e o campo `n+1` não existe.**
> ## **A saída é `RG-20`: pelo menos um valor que o emissor não pôde escrever.**
> # **E essa condição já estava no artigo, escondida dentro do estimador de `P(error)` — só que eu não tinha visto que era ela que segurava o resto.**

**`CC BY-SA`** · receita zero · **AMARYAPU**
