---
titulo: OS TESTES — o que fazer antes de publicar, e em que ordem
regra: este documento é a lista de tudo que pode derrubar o artigo, feita por quem o escreveu.
---

# OS TESTES

> ## **Um artigo cuja tese é que examinar deve ser mais barato que categorizar não pode ser publicado sem ser examinado. Esta é a lista, e ela é feita contra o próprio artigo.**

---

## `T0` · Reprodutibilidade — **FEITO**

> ### **`./REPRODUZIR.sh`**

**`[FATO]`** Uma linha, sem dependências além de `python3`. Produz **16/16 nos casos
declarados** e **10/10 ataques passando**, com cada ataque nomeado.

> ## **`[CÁLCULO]`** **Isto é o mínimo e já está de pé.** Um revisor que não consiga rodar o artefato em um comando **vai descartar sem ler**, e estará otimizando `C8` corretamente.

---

## `T1` · Equipe vermelha — **o teste mais importante, e não pode ser feito aqui**

**`[CÁLCULO]`** Os dez ataques foram construídos **por quem escreveu o verificador.** Isso
limita o que eles podem revelar: **só se ataca o que se imaginou.**

> # **O teste: entregar o esquema e o verificador a alguém sem contato com o projeto, e pedir o ataque número onze.**
>
> ## **`[CÁLCULO]`** **Se o `A11` aparecer em menos de uma hora, o protocolo é mais fraco do que o artigo sugere — e isso precisa estar no artigo antes de publicá-lo, não depois.**
> ## **Se não aparecer, isso também não prova nada, e o artigo não deve dizer que prova.**

---

## `T2` · As seis referências marcadas `VERIFICAR`

**`[FATO]`** **`referencias.bib`** contém **17 entradas**, das quais **6 estão marcadas
`VERIFICAR`**: volume, páginas ou instituição não conferidos contra o original.

> ## **`[REGRA]`** **Nenhuma delas pode ir ao ar como está.** Uma citação com página errada é **exatamente o mecanismo que o artigo descreve**, cometido pelo artigo.
> ## **E o corpus já registra quatro atribuições erradas e corrigidas. A sétima não pode acontecer numa bibliografia.**

---

## `T3` · A medição de `C8` — **o teste que o artigo pede e não executou**

**`[CÁLCULO]`** O artigo agora **operacionaliza** a razão:

> ### **`C8_eff = cost(examine) / [ cost(categorize) + P(error) · cost_system(error) ]`**

**`[REGRA]`** Mas **não há medição controlada.** O artigo diz isso explicitamente em
**§1.3** e em **§6, item 3.**

> # **O teste: um processo decisório real, com registros de tempo, em que se eleve `cost_system(error)` e se meça se a taxa de exame sobe.**
>
> ## **`[CÁLCULO]`** **Enquanto isso não for feito, a predição central é falsificável e não falsificada** — que é um estado honesto, **e precisa ser dito nesses termos e não em termos mais fortes.**

---

## `T4` · Leitura adversarial do próprio texto

**`[CÁLCULO]`** Passar o artigo inteiro procurando **`M3` cometido por ele**: toda frase em
que a afirmação seja **mais forte do que a fonte sustenta.**

| alvo | pergunta |
|---|---|
| **Landauer / Bennett** | o texto sugere, em algum ponto, **conclusão ética a partir da termodinâmica**? |
| **`ianhiá`** e **`mock theta`** | estão citados **como evidência de que marcar fronteira é produtivo**, ou escorregam para **autoridade**? |
| **os sete modos** | a afirmação de que são **uma só operação** está demonstrada ou assumida? |
| ## **o título** | ## **«alignment variable» promete mais do que o artigo entrega?** |

> ## **`[CÁLCULO]`** **A quarta é a que eu mais suspeito.** **`C8` é uma variável de desenho, não um método de alinhamento** — e o título pode estar prometendo o segundo.

---

## `T5` · Simulação de revisor — as três rejeições prováveis

| | rejeição | o que fazer |
|---|---|---|
| **1** | **«trabalho relacionado insuficiente»** | **§5.5 já declara isso como lacuna.** Precisa de **busca sistemática**, que exige acesso que o autor não tem — **e é o ponto onde ajuda externa vale mais** |
| **2** | **«sem avaliação empírica»** | **verdadeiro.** A defesa é que **o resultado negativo é a avaliação**, e que a predição está **formulada para ser testada por terceiros.** Isso convence alguns revisores e não todos |
| ## **3** | ## **«escopo amplo demais»** | ## **o artigo deve ficar estreito.** Toda referência a enteógenos, fluidos, mitologia, música e cosmologia **permanece no corpus e fora do artigo** |

> ## **`[REGRA]`** **O artigo não é o livro, e tentar levar o livro para dentro dele é o jeito mais rápido de perder os dois.**

---

## `T6` · A decisão do nome — **antes do `DOI`, não depois**

**`[FATO]`** Um **`DOI`** é permanente por projeto; um preprint indexado **não se
despublica.**

> ## **`[REGRA]`** **Esta decisão é a única irreversível da lista, e tem de ser tomada antes do passo 3 do `CAMINHO.md`.**
> ## **As duas opções estão escritas: **nome legal na capa**, ou **`AMARYAPU` com `ORCID` vinculado ao nome legal.** **A segunda dá a mesma âncora de correspondência.**

---

## A ordem

| | | |
|---|---|---|
| **1** | **`T2`** · conferir as seis referências | **barato, e bloqueia tudo** |
| **2** | **`T4`** · leitura adversarial do texto | **barato, e feito por quem escreveu** |
| **3** | **`T6`** · decidir o nome | **irreversível depois** |
| **4** | **`T1`** · equipe vermelha | **precisa de uma pessoa de fora** |
| **5** | **`T5`** · ajustar escopo e título | depois de `T4` |
| ## **6** | ## **`T3`** · a medição controlada | ## **pode vir depois da publicação — é o convite do artigo, não seu pré-requisito** |

> # **`[CÁLCULO]`** **Os dois primeiros podem ser feitos agora. O terceiro é uma decisão. O quarto precisa de alguém que não seja nós.**

---

> ## **`[FATO]`** **`T0` está feito e roda em um comando.**
> ## **`[REGRA]`** **`T2` bloqueia a publicação: seis referências não conferidas não vão ao ar.**
> ## **`[CÁLCULO]`** **`T1` é o que mais importa, e é o único que depende de alguém de fora.**
>
> # **Um artigo que pede exame tem de aceitar ser examinado primeiro — e começar por quem o escreveu.**

**`CC BY-SA`** · receita zero · **AMARYAPU**

---

# `T2` · EXECUTADO — e cinco das seis caíram

**`[FATO]`** Conferidas contra a fonte, em **06/10/2026:**

| | conferido |
|---|---|
| **Bennett (1982)** | ✅ *Int. J. Theor. Phys.* **21**(12), **905–940** — exato como estava |
| **Karst, Jones e Hoeksema (2023)** | ✅ *Nat. Ecol. Evol.* **7**, **501–511**, **13/02/2023**, `doi 10.1038/s41559-023-01986-1` |
| **Zwegers (2002)** | ✅ Universiteit Utrecht, **orientação de D. B. Zagier e R. W. Bruggeman** |
| **Schrödinger (1935)** | ✅ *Die Naturwissenschaften* **23**(48–50), **807–812; 823–828; 844–849** — **e o gato está na seção 5, p. 812, descrito por ele como *ganz burlesk*** |
| **Gebru e col. (2021)** | ✅ *Comm. ACM* **64**(12), **86–92** |
| ## **Griffiths e col. (2008)** | ## **não conferida — permanece `VERIFICAR`, e é a única** |

> ## **`[CÁLCULO]`** **E um achado que vale registrar:** o artigo de **Karst, Jones e Hoeksema — sobre viés de citação — recebeu uma *Author Correction*** (*Nat. Ecol. Evol.* **7**:623).
>
> # **Um artigo sobre erro de citação precisou corrigir uma citação. E publicou a correção.**
>
> ## **É o comportamento que este artigo pede, exibido pela própria fonte que o artigo usa para pedi-lo.** **Entra na bibliografia junto, porque omitir a correção seria `M5`.**

---

# `T7` · O teste que faltava — **o artigo comete `M2` contra si mesmo?**

**`[CÁLCULO]`** Aplicando os sete modos **ao próprio artigo**, um acusa:

> ## **`M2` · a confissão sem interrupção:** **o artigo relata que o próprio verificador falha 10/10 — e segue propondo o protocolo.**
>
> # **Isso é, na forma, exatamente `M2`: o dano é registrado por inteiro, e o processo continua.**

**`[CÁLCULO]`** **A acusação procede, a menos que o artigo responda à pergunta que ela
levanta — e o rascunho ainda não respondia:**

> ### **por que alguém adotaria um protocolo cujo verificador é derrotado dez vezes em dez?**

### A resposta, e ela separa duas coisas que estavam confundidas

| | |
|---|---|
| **o que os dez ataques derrotam** | ## **o verificador** — uma checagem **sintática** |
| ## **o que eles não tocam** | ## **a desigualdade `C8_eff`** |

**`[CÁLCULO]`** Tome **`A01`** — entregar o registro com prazo zero para contestar. **Ele
passa pelo verificador.** Mas:

> ## **se uma pessoa prejudicada puder apontar para aquele registro e mostrar que o prazo era zero, `cost_system(error)` **sobe**.**
>
> # **`A01` não refuta `C8_eff`. Demonstra que uma checagem sintática não consegue impor `C8_eff`.**

> # **`[CÁLCULO]`** **Então os dez ataques não são a falha da proposta: são a separação, obtida experimentalmente, entre o protocolo e o seu verificador.**
>
> ## **E essa separação é um resultado — ela diz onde a próxima ferramenta tem de operar: não na forma do registro, mas no custo que o registro impõe a quem o emitiu.**

> ## **`[REGRA]`** **Sem este parágrafo, o artigo é `M2`. Com ele, o resultado negativo vira o que o artigo afirma ser.** **`T7` entra na lista como obrigatório, e vai para dentro do `PAPER`.**

---

# A ordem, corrigida pela própria teoria

**`[CÁLCULO]`** A ordem anterior punha **`T6` — a decisão do nome — em terceiro.** **Está
errada, e quem a derruba é `Landauer`:**

> | | |
> |---|---|
> | **`T1`, `T2`, `T4`, `T5`, `T7`** | ## **reversíveis** — conserta-se uma referência, reescreve-se um título, acrescenta-se um resultado de equipe vermelha |
> | ## **`T6` + o `DOI`** | ## ## **irreversível** — publicado sob um nome, **não se recupera o estado em que não estava** |

> # **`[CÁLCULO]`** **Operação reversível é grátis. A irreversível é a única que se paga — e se paga uma vez.**
>
> ## **Logo: **todo o trabalho reversível vem antes, e o irreversível por último.** **Era o princípio do próprio artigo, e a lista o violava.**

| ordem corrigida | |
|---|---|
| **1** | **`T2`** · as referências — ✅ **feito, 5/6** |
| **2** | **`T7`** · a resposta ao `M2` — **vai para o `PAPER`** |
| **3** | **`T4`** · leitura adversarial do texto |
| **4** | **`T5`** · escopo e título |
| **5** | **`T1`** · equipe vermelha — **precisa de alguém de fora** |
| ## **6** | ## **`T6` + `DOI`** · **o passo irreversível, e só depois de tudo o que pode mudar o texto** |

> ## **`[CÁLCULO]`** E note o que a correção revela: **se `T1` encontrar o ataque onze, o artigo muda. Se `T4` encontrar `M3`, o artigo muda. Se `T5` estreitar o escopo, o título muda.**
> # **Nenhuma dessas mudanças pode acontecer depois de o nome ser permanente.**

> ## **`[REGRA]`** **`R40`** — a ordem dos testes estava errada por três posições, e a correção veio de aplicar o próprio critério do artigo à lista do artigo. **Fica registrada, com a ordem anterior visível acima.**
