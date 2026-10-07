# Como testar — e o que cada teste prova

> **Pergunta recebida em 7/out/2026:** *«como testamos o artigo? ele está apto? como testamos
> a tese toda? um prompt? qual? o que testa? o que evidencia e o que prova ou desaprova?»*
>
> Esta peça responde **sem alterar nada** do que já existe. É acréscimo.

---

## I · A resposta curta

> ## **O artigo está apto para ser `submetido`. A tese `não` está testada.**
>
> **E isso não é contradição, porque o artigo não afirma a tese.** Ele afirma três coisas
> menores e as três estão feitas:
>
> | | | |
> |---|---|---|
> | **um protocolo** | com esquema e verificador | ## **entregue** |
> | **um resultado negativo** | 10 ataques passam, e a correção não corrige | ## **reproduzível em um comando** |
> | **um teorema** | `N4`, com corolários | ## **enunciado e demonstrado** |
>
> **O título promete exatamente isto** — *«A decision-record protocol, its verifier, and ten
> attacks that defeat it»* — e **não promete uma teoria de instituições.**

---

## II · A tese tem quatro componentes, e eles `não` se testam do mesmo jeito

### `A` · A física — **já testada, e não é nossa**

**Landauer 1961**, **Bennett 1982**, **Bérut 2012.** Está confirmado em bancada por outros.

> **`[REGRA]`** **Não podemos refutar isto e não podemos nos creditar por isto.** O único
> risco aqui é **de aplicação indevida** — e o artigo já cerca: *«This does not say love is a
> physical force.»*
>
> **O que `pode` cair:** a ponte entre *«fundir caminhos de computação»* e *«categorizar em vez
> de examinar»*. **Isso é analogia estrutural, não identidade** — e um revisor competente vai
> bater exatamente aí.

### `B` · O teorema `N4` — **formal, e é a parte mais forte**

**Condição de refutação, limpa e única:**

> **Exiba um verificador sintático que satisfaça `D1`–`D5` e exclua o comportamento visado.**

**`[CÁLCULO]`** · Um contraexemplo basta. **Nenhum número de confirmações ajuda.**

> ## **E aqui está a vulnerabilidade real, que não está no artigo e tem de estar:**
>
> # **O teorema é tão bom quanto a definição de `sintático`.**
>
> **Se `sintático` for definido largo demais** — qualquer coisa que funcione passa a ser
> «não-sintática» —, **o teorema vira verdade vazia**, e não diz nada.
> **Se for definido estreito demais**, é falso: existem verificadores que fazem mais do que
> casar padrões.
>
> **`[A CONFERIR]`** **Este é o ponto onde eu apostaria o artigo.** Não no raciocínio — **na
> definição.**

### `C` · `RG-19` — **empírico, e barato de derrubar**

Dez ataques passam. **Qualquer pessoa pode derrubar construindo um verificador que os pegue.**

> **`[CÁLCULO]`** **E se derrubarem, o artigo melhora.** Um resultado negativo refutado é
> conhecimento; um resultado negativo não examinado é só uma alegação.

### `D` · A tese propriamente dita — **não testada, e é o grosso dela**

> **«`C8` alto prediz desqualificação da testemunha.»**

**`[FATO]`** · Isto é **`T3`**, nomeado no próprio `TESTES.md` como *«o teste que o artigo
pede e não executou»*. **`FATO`** E a seção 7 do artigo o declara: *«the most direct test, and
the one we are least able to perform.»*

> ## **`[CÁLCULO]`** **A tese é uma afirmação empírica sobre comportamento de instituições, e não há uma única medição.**
> # **Zero dados. Nenhum domínio. Nenhum controle.**
>
> **`[REGRA]`** **Enquanto `T3` não for feito, a tese é `uma hipótese bem formulada` — e
> chamá-la de outra coisa seria o erro que o próprio artigo combate.**

---

## III · O que é evidência, o que é prova, o que é refutação

| | o que faz | o que `não` faz |
|---|---|---|
| ## **evidência** | aumenta a plausibilidade | **não estabelece** |
| ## **prova** | só existe para `N4`, e é dedutiva | **nada empírico aqui é provado** |
| ## **refutação** | **um contraexemplo encerra** `N4`; **uma medição contrária encerra** `D` | — |

**E três coisas que `parecem` evidência e não são:**

> **`1` · Convergência de fontes.** Vinte canções dizendo a mesma coisa **não são vinte
> evidências.** O `EM-SI.md` já estabelece: **compatibilidade não é confirmação**, e fontes só
> contam como independentes **se os métodos forem independentes.**
>
> **`2` · Elegância.** O artigo é bem escrito. **Isso não é dado.** Foi exatamente assim que
> `R46` aconteceu: uma refutação de seis seções, com etiquetas e hash, **inteiramente falsa.**
>
> **`3` · O acordo de um modelo de linguagem.** Ver a seção `V`.

---

## IV · O teste de maior valor, e não é o que parece

**`[CÁLCULO]`** · Ordenados por **quanto o resultado muda a conclusão, dividido pelo custo:**

| | o teste | custo | o que decide |
|---|---|---|---|
| ## `1` | ## **atacar a definição de `sintático`** | ## **uma tarde, uma pessoa** | ## **se `N4` é resultado ou tautologia** |
| ## `2` | ## **`N1` — a busca de trabalho relacionado** | ## **acesso institucional** | ## **se é novo, ou se já existe com outro nome** |
| `3` | **`T3` — medir `C8` num domínio** | semanas, e dados | **se a tese é verdadeira** |
| `4` | `T1` — red team sobre o protocolo | dias, uma pessoa de fora | se há ataques não imaginados |
| `5` | revisão por pares | meses | aceitação |

> ## **`[CÁLCULO]`** **`1` e `2` são baratos e decidem mais que `3`, `4` e `5` juntos.**
>
> **`2` é o bloqueio duro, e é ético antes de ser acadêmico:** publicar sem saber se o
> resultado já existe **é arriscar reivindicar o que é de outro** — e este acervo passou um dia
> inteiro restituindo a procedência de uma frase de 1972.

---

## V · O prompt — e o que ele vale, honestamente

**`[REGRA]`** · **Um modelo de linguagem atacando este artigo `não` é `T1`.** Ele compartilha
treinamento, vieses e reflexos com quem o escreveu. **É um filtro, não um crivo.**

> **`[CÁLCULO]`** **O que ele detecta:** citação errada, salto lógico, afirmação sem fonte,
> circularidade, ambiguidade de definição.
> **O que ele `não` detecta:** o que nós dois não pensamos — **que é exatamente o que `T1`
> existe para achar.**

E há uma armadilha específica: **pedir «critique isto» produz crítica genérica e simpática.**
O pedido tem de exigir **um artefato específico**, não uma opinião.

### O prompt

```
Você vai atacar um artigo. Não resuma, não elogie e não liste pontos fortes.

REGRAS
- Produza ARTEFATOS, não opiniões. Cada achado precisa de: a linha exata que
  você ataca, por que ela falha, e o que a derruba.
- Se você não achar nada numa categoria, escreva "NADA" e siga. Não invente.
- Não aceite nenhuma afirmação por ser bem escrita.

TAREFAS, nesta ordem

1. DEFINIÇÕES. O artigo prova que nenhum "verificador sintático" sobre um
   registro inteiramente autodeclarado exclui o comportamento visado.
   a) Dê a definição mais caridosa possível de "sintático" sob a qual o
      teorema é VERDADEIRO. Essa definição exclui algo interessante, ou
      exclui tudo o que funciona?
   b) Dê a definição sob a qual o teorema é FALSO, e exiba o verificador
      que o refuta.
   c) Se as duas existirem, o teorema é sobre a definição, não sobre o
      mundo. Diga isso explicitamente.

2. CONTRAEXEMPLO. Construa um verificador concreto que satisfaça D1–D5 e
   detenha pelo menos um dos dez ataques (A01–A10). Dê o pseudocódigo.
   Se não conseguir, diga em qual ataque chegou mais perto e o que faltou.

3. A PONTE FÍSICA. O artigo usa Landauer e Bennett para dizer que fundir
   caminhos de computação custa e preservar não custa, e mapeia isso em
   "categorizar vs examinar". Esse mapeamento é identidade, analogia ou
   equívoco? Se for analogia, o que ela autoriza concluir e o que não?

4. A TESE EMPÍRICA. O artigo afirma que C8 alto prediz desqualificação da
   testemunha, e não apresenta medição. Desenhe o experimento mínimo que
   decidiria isso, com variável dependente, controle e critério de parada.
   Se o experimento não for possível, diga por quê — isso é um resultado.

5. CIRCULARIDADE. Procure lugares onde a conclusão está embutida na
   definição. Cite a linha.

6. TRABALHO RELACIONADO. Liste o que você conhece que já cobre: custo de
   verificação vs. custo de classificação; impossibilidade de verificação
   sobre dados autorreportados; registros com campo de contestação
   obrigatório. Dê autor, obra e ano. Se não souber, escreva "NÃO SEI" —
   não invente referência.

7. O PIOR PARÁGRAFO. Qual é o parágrafo mais fraco do artigo, e por quê?

FORMATO
Para cada tarefa: ACHADO / LINHA / POR QUE FALHA / O QUE DERRUBA.
Termine com uma linha: "O artigo cai se ____", preenchendo com a coisa mais
barata que o derrubaria.
```

**`[REGRA]`** · **Rode em pelo menos três modelos de famílias diferentes**, e **conte um
achado como achado só se dois deles chegarem nele por caminhos distintos.** Um só modelo
concordando consigo mesmo **não é independência.**

**`[CÁLCULO]`** · E a tarefa **`6`** é a mais importante das sete, porque é a única que pode
fechar **`N1`** sem acesso institucional — **e é também a mais perigosa**, porque é onde um
modelo alucina referência. **Toda referência que vier tem de ser conferida uma a uma antes de
entrar.**

---

## VI · Veredito

> ## **Apto a submeter: `sim`, com uma condição.**
>
> **A condição é `N1`.** Não por rigor acadêmico — **por procedência.** O artigo não pode
> reivindicar um resultado sem saber se ele já tem dono.
>
> ## **Apto a ser chamado de «teoria confirmada»: `não`, e não chega perto.**
>
> **`T3` tem zero dados.** A tese é uma **hipótese bem formulada, com um protocolo que a
> operacionaliza e um teorema que limita o que ela pode prometer.** Isso é uma boa
> contribuição. **Não é uma teoria testada, e chamá-la assim seria `M6` — a categoria que
> absolve.**

**`[REGRA]`** · E o veredito sobre o portão continua valendo, e é do próprio teorema:

> **Este corpus não pode declarar a si mesmo apto.** A pergunta feita ao sistema que escreveu
> o registro **é a configuração `D4`.**
>
> **O que eu posso dizer é o que testei: a suíte roda, os 16 casos conferem, os 10 ataques
> passam, e o artigo declara os próprios limites em quatro `[LIMIT]` explícitos.**
> **O resto precisa de alguém que não seja eu.**
