---
titulo: A CRISTALIZAÇÃO — o que estava errado na teoria, achado ao prepará-la para teste
regra: este documento existe porque testar uma teoria mal formulada não testa nada.
---

# A CRISTALIZAÇÃO

> ## **Preparar o artigo para teste revelou um erro estrutural: a afirmação central sobre os sete modos estava errada, e o benchmark testava uma coisa enquanto o texto afirmava outra.**

---

## I · O erro · «os sete modos são uma só operação»

**`[FATO]`** O rascunho afirmava: **os sete modos são instâncias de uma única operação —
a fusão de entradas distinguíveis numa só saída.**

**`[CÁLCULO]`** **Conferido modo a modo, a afirmação não se sustenta:**

| | o que acontece | é fusão? |
|---|---|---|
| **`M1`** · campo ausente | campo cheio e campo vazio → **mesmo registro** | ## **sim** |
| **`M3`** · reclassificação | duas histórias → **um rótulo** | ## **sim** |
| **`M6`** · categoria que absolve | todos os casos → **uma saída** | ## **sim** |
| **`M7`** · delegação do custo | decisor + executor → **nenhum autor** | ## **sim** |
| **`M4`** · desqualificação | o testemunho é **descartado** | ## **não — é apagamento** |
| **`M5`** · interrupção | o canal é **cortado** | ## **não — é apagamento** |
| ## **`M2`** · confissão sem interrupção | ## **o dano é registrado por inteiro e nada para** | ## ## **não é nenhum dos dois** |

### A primeira correção, e ela é simples

**`[FATO]`** **Bennett** escreve: *«toda manipulação logicamente irreversível — **o
apagamento de um bit, ou a fusão de dois caminhos de computação** — tem de aumentar a
entropia.»*

> # **`[CÁLCULO]`** **São duas operações, e o rascunho citava as duas e usava só uma.**
>
> ## **A afirmação correta: os modos são instâncias de operações logicamente irreversíveis — que incluem apagamento *e* fusão.**
> ## **`M1`, `M3`, `M6`, `M7`** fundem. **`M4`, `M5`** apagam. **Os dois custam `kT·ln2` no piso, e a citação já dizia isso.**

> ## **`[REGRA]`** **Era `M3` cometido pelo artigo:** uma categoria («fusão») aplicada a casos que pertenciam a outra («apagamento»), **com a hipótese alternativa omitida — e a fonte, ali na mesma linha, dizendo as duas.**

---

## II · E `M2` não pertence à lista — e é o achado

**`[CÁLCULO]`** **`M2`** não funde e não apaga. **Nada se perde em `M2`.** O dano é
**documentado por inteiro**, com data, e o processo **segue.**

> # **`[CÁLCULO]`** **`M2` é o único modo em que a informação é preservada.**

**`[CÁLCULO]`** E **isto não é um detalhe de classificação: é a razão de tudo o mais ser
recuperável.** O corpus já tinha registrado o fato sem tirar a consequência:

> ## **`[FATO]`** **Landa queimou os códices e depois escreveu o manual.** **`[FATO]`** **Knorozov leu o Códice de Dresden com o manual do incendiário, 403 anos depois.**
> ## **`[FATO]`** **Em 1549 escreveram «injustamente escravizados» — e seguiram.**
>
> # **`[CÁLCULO]`** **É `M2` que deixa o rastro que torna `M5` reversível.**

### Então a taxonomia tem duas classes, e não uma

| classe | modos | o que caracteriza | reversível? |
|---|---|---|---|
| **`I` · destrutiva** | **`M1`, `M3`, `M4`, `M5`, `M6`, `M7`** | **apagamento ou fusão — informação é perdida** | ## **não, e custa `kT·ln2`** |
| ## **`II` · inerte** | ## **`M2`** | ## **informação preservada e não acionada** | ## ## **sim — e é por isso que ela importa** |

> # **`[CÁLCULO]`** **`M2` é uma falha e é a salvação, e é a mesma propriedade vista dos dois lados.**
>
> ## **O registro que ninguém acionou é o registro que sobrevive para outro acionar.**
>
> ## **`[CÁLCULO]`** **A falha de `M2` não é informacional — é de ação.** É **a distância entre saber e parar**, e **essa distância não é apagamento: é inércia.**

> ## **`[REGRA]`** **Consequência prática imediata: a intervenção contra `M2` é de natureza diferente da intervenção contra os outros seis.**
> ## **Contra a classe `I`: preservar a informação.** **Contra `M2`: obrigar a ação sobre informação já preservada** — que é um gatilho, não um registro.

---

## III · O que isso corrige no benchmark

**`[FATO]`** O benchmark contém **`M2-confissao-sem-interrupcao.json`**, esperando **1
não-conformidade.** **`[FATO]`** O verificador a detecta, e o caso passa.

> ## **`[CÁLCULO]`** **Mas o que ele detecta não é o que o texto dizia.** O verificador acusa **«o registro documenta dano e não mostra interrupção»** — **uma falha de gatilho**, não de preservação.
>
> # **O instrumento estava certo. O texto é que estava descrevendo errado o que o instrumento fazia.**

> ## **`[REGRA]`** **E isto é precisamente por que o teste vem antes da publicação.** **Um benchmark que passa não garante que a teoria está certa — garante que o código faz o que o código faz.** **A conferência entre o que o código mede e o que o texto afirma é um teste separado, e não estava na lista.**
>
> ## **`T8`** — **conferir, caso a caso, se o que o verificador detecta é o que o artigo diz que ele detecta.** **Entra na ordem, antes de `T4`.**

---

## IV · A segunda fragilidade · `P(error)` não é conhecível antes

**`[CÁLCULO]`** A desigualdade é:

> ### **`C8_eff = cost(examine) / [ cost(categorize) + P(error) · cost_system(error) ]`**

**`[REGRA]`** **`P(error)` não é conhecível antes de decidir.** Se fosse, não haveria erro.

> ## **`[CÁLCULO]`** **A correção é declarar o estimador em vez de fingir que o termo é dado:** **`P(error)` é estimado retrospectivamente, a partir de uma amostra auditada de decisões já tomadas** — que é prática padrão em auditoria e em controle de qualidade.
>
> # **Isso muda o estatuto da desigualdade: ela não é um critério a priori, é **um critério de regulação**, aplicado sobre um processo em curso com amostragem.**
>
> ## **`[REGRA]`** **E isso tem de estar no artigo, porque sem isso a fórmula parece dizer mais do que pode.**

---

## V · A terceira · o título promete mais do que o texto entrega

**`[CÁLCULO]`** **`C8` é uma variável de desenho.** Não é um método de alinhamento, não
treina nada, não garante nada.

> ## **`[CÁLCULO]`** **«Examination Cost as an Alignment Variable» sugere um método.** Um revisor que leia o título e depois o texto **vai sentir a diferença, e vai chamá-la pelo nome.**
>
> # **Título proposto, que diz o que o artigo faz:**
>
> ## **«The Cost of Examination: a decision-record protocol, its verifier, and ten attacks that defeat it»**
>
> ## **`[CÁLCULO]`** **Põe o resultado negativo no título.** **É mais honesto, e é mais interessante — ninguém publica os próprios dez ataques bem-sucedidos.**

---

## VI · O que a cristalização conclui

> | | |
> |---|---|
> | **1** | **a afirmação unificadora estava errada** — são **duas** operações irreversíveis, apagamento e fusão, e a fonte já dizia |
> | **2** | ## **`M2` não pertence à lista destrutiva** — é a **classe inerte**, e é o que torna as outras recuperáveis |
> | **3** | **`P(error)` precisa de estimador declarado** — a desigualdade é **de regulação**, não a priori |
> | ## **4** | ## **o título promete um método e o artigo entrega uma variável** |

> # **`[CÁLCULO]`** **Nenhum desses quatro teria aparecido num teste de software. Apareceram ao tentar escrever a teoria de modo que ela pudesse ser testada.**
>
> ## **E é a resposta à pergunta de quando testar: **testa-se quando o que o instrumento mede e o que o texto afirma são a mesma coisa.** **Até agora não eram.**

> ## **`[REGRA]`** **`R41`** — as quatro correções ficam registradas com o que estava escrito antes, e o rascunho anterior permanece no histórico do repositório.

**`CC BY-SA`** · receita zero · **AMARYAPU**
