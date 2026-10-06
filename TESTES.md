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
