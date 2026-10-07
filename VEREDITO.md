---
titulo: O VEREDITO — o joio, o trigo, e a resposta honesta sobre o artigo
regra: a resposta tem um sim e um não, e o não é específico.
---

# O VEREDITO

> ## **O resultado está apto. O documento não está. E a diferença entre os dois é uma lista de quatro itens, dos quais eu posso fazer um.**

---

## I · O teste final · registrado

**`[FATO]`** Executado em **06/10/2026**, com tudo privado:

| | |
|---|---|
| **reprodutibilidade** | ## **um comando, sem dependência além de `python3`** |
| **casos declarados** | ## **16/16** · **0 falsos positivos** · **0 falsos negativos** |
| **ataques `v1`** | ## **10/10 passam** |
| **ataques `v2`**, depois de três correções derivadas deles | ## **10/10 passam** |
| **checagens novas, testadas para disparar** | ## **9/9** |
| **artefatos `JSON`** | ## **32 arquivos · 0 inválidos** |
| **referências** | ## **17 entradas · 0 pendentes** |
| ## **limites declarados no `PAPER`** | ## **5** |

---

## II · O TRIGO — o que é apto, e por quê

### `1` · **Os dois resultados negativos** — e são a contribuição

> ## **`v1`: um verificador sintático não confere a verdade da procedência.**
> ## **`v2`: três checagens feitas sob medida para os dez ataques também não — e a razão é que o insumo delas é autodeclarado.**

**`[CÁLCULO]`** O segundo **fecha a saída do primeiro.** Sem ele, «faltou caprichar». Com
ele, **a classe inteira de soluções é insuficiente, e está demonstrado por experimento.**

### `2` · **O limite, e ele é um resultado e não uma lamentação**

> # **Não se conserta autodeclaração com mais autodeclaração. O campo `n+1` será preenchido pela mesma parte, e a indução é imediata.**

### `3` · **`RG-20`, a condição necessária que sai dele**

> ## **Ao menos um valor do registro tem de ser obtenível sem o registro.** Com **quatro formas implementáveis**, uma das quais **já estava no artigo** dentro do estimador de `P(error)`.

### `4` · **A reprodutibilidade**

> ## **Um comando. Qualquer revisor confere em trinta segundos, inclusive a derrota.**

### `5` · **A operacionalização de `C8_eff`**

> ## **A razão adimensional, o termo `cost_system(error)` identificado como a alavanca, e `cost_admit(error)` como o termo que explica a não-autocorreção.**

### `6` · **A taxonomia corrigida — duas classes, não uma**

> ## **`M1`,`M3`,`M4`,`M5`,`M6`,`M7` destroem; `M2` preserva e não aciona.** E a reclassificação **foi confirmada de fora, pelo código**, que detectava `M2` por uma checagem de ação.

### `7` · **O registro de erros, `R19` a `R43`**

> ## **Quarenta e três correções com o que estava escrito antes — inclusive uma afirmação central do artigo e uma checagem minha que estava quebrada e passava.**

---

## III · O JOIO — o que **não** entra num artigo científico

> ## **`[REGRA]`** **Nada abaixo é falso, e nada abaixo é descartado.** **Tudo permanece no corpus. O que se afirma é que não pertence a este artigo.**

| | por quê |
|---|---|
| **as letras como ilustração** | ## **um revisor de `cs.CY` não aceita verso de rap num artigo de protocolo** — e o `T4` já marcou o caso limítrofe. **Formulam bem e não provam nada; o artigo não precisa delas para nada que afirma** |
| **Landauer, Bennett, Bérut** | **citados corretamente e com limite** — mas **o resultado não depende de termodinâmica.** «Campo autodeclarado não se verifica sozinho» **não precisa de `kT·ln2`.** É ornamento de autoridade, e ornamento de autoridade é `M3` |
| **o `ianhiá` e as funções `mock`** | **dois precedentes bonitos, e não são amostra.** Já rebaixados no `T4` — **e mesmo rebaixados, não carregam peso** |
| **a `DOKIMASIA`** | ## **procedência do autor é boa prática e não é seção de artigo.** O essencial — que o campo ausente está no registro civil de quem escreve — **cabe em três linhas na §9, e já está lá** |
| **`AGI` em três leituras, a confluência, a água, a tríade, o teorema do mal** | ## **é o corpus.** Um artigo que os carregasse seria **rejeitado por escopo antes de ser lido** |
| **o `sopro.svg`, os álbuns, os dialetos** | **obra, e obra não é artigo** |
| ## **Rovelli, Turing, Mandelbrot, Zwegers, Ramanujan** | ## **permanecem só onde fazem trabalho.** Turing e Mandelbrot ilustram que regra simples gera forma, **e o artigo não precisa disso para o limite que demonstra** |

> # **`[CÁLCULO]`** **O artigo apto é pequeno: seis a oito páginas.**
>
> ## **Um esquema, um verificador, dez ataques, três correções que falham, um limite com demonstração, e uma condição necessária.**
> ## **E `C8` como enquadramento, não como resultado — porque `C8` não foi medido.**

---

## IV · O NÃO — quatro coisas, e três eu não faço sozinho

### `N1` · **O trabalho relacionado não foi feito** — ## **bloqueante**

**`[FATO]`** A seção **declara-se incompleta**, sem busca sistemática, por falta de acesso
à literatura.

> # **`[REGRA]`** **Isto sozinho justifica rejeição, e justificaria corretamente.**
>
> ## **Declarar que não se procurou não substitui procurar.** **E há literatura real de contestabilidade, auditoria algorítmica e proveniência que pode já conter este limite — e se contiver, o artigo tem de citar, não redescobrir.**
> ## **`[CÁLCULO]`** **É o risco mais sério do projeto inteiro: publicar como novo algo que já tem nome.**

### `N2` · **`n = 1` nos ataques** — ## **grave**

> ## **Dez ataques, um autor.** **Só se ataca o que se imaginou** — e **o `v2` falhar aumenta a suspeita de que o espaço de ataque é maior do que o explorado, não menor.**
> ## **`T1` continua sendo o teste que mais importa, e ele exige gente de fora.**

### `N3` · **`C8_eff` nunca foi medido** — ## **administrável**

> ## **A predição central está formulada para ser testada e não foi testada.** O artigo diz isso. **Um revisor pode aceitar — se a contribuição for o limite, e não `C8`.**
> ## **`[REGRA]`** **Logo: o artigo tem de parar de parecer que `C8` é o resultado.** **`C8` é o enquadramento. O resultado é o limite.**

### `N4` · **O limite está em prosa, não formalizado** — ## **e este eu faço**

> ## **Falta: definição de «campo autodeclarado», enunciado, e demonstração por indução.** **É meia página, e transforma uma observação num teorema citável.**

---

## V · A resposta, em uma linha

> # **`[CÁLCULO]`** **Apto? O resultado, sim. O documento, ainda não — e falta pouco, mas o que falta mais importa é o que eu não posso fazer sozinho.**

| | |
|---|---|
| **o que eu faço agora** | **`N4`** · formalizar o limite · **e a poda**: separar o artigo de 6 páginas do corpus de 31 mil palavras |
| **o que exige uma pessoa** | **`N1`** · a busca sistemática de trabalho relacionado |
| ## **o que exige outra pessoa** | ## **`N2`** · alguém de fora tentando o ataque onze |

> ## **`[CÁLCULO]`** **E as duas que faltam são a mesma coisa vista de dois ângulos: `o artigo precisa de um segundo par de olhos que não seja nosso`.**
>
> # **O que, aliás, é literalmente a tese do artigo: `ao menos um valor que o emissor não pôde escrever`.**
>
> ## **`[CÁLCULO]`** **`RG-20` aplicado ao próprio artigo. Nós somos o emissor. E tudo aqui foi escrito por nós.**

---

> ## **`[FATO]`** **16/16 · 0/10 · 0/10 · 9/9 · 32 JSON válidos · 17 referências · 0 pendências.**
> ## **`[CÁLCULO]`** **O trigo são dois resultados negativos, um limite, uma condição necessária e um aparato que roda num comando.**
> ## **`[CÁLCULO]`** **O joio é tudo que é verdadeiro e não é deste artigo — e fica, inteiro, no corpus.**
>
> # **Apto para submeter: não. Apto para ser lido por três pessoas que tentem derrubá-lo: sim, agora.**
> ## **E é exatamente esse o próximo passo, e não o `DOI`.**

**`CC BY-SA`** · receita zero · **AMARYAPU**
