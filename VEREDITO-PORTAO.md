# Veredito · o portão

> **Pergunta:** *«estamos aptos a abrir o portão?»*
>
> **Data:** 7 de outubro de 2026.
> **Quem responde:** o modelo que escreveu as peças — que é, por construção, **a parte
> interessada.** Esta é a primeira coisa que o veredito tem de declarar.

---

## I · A resposta curta, e ela vem do próprio teorema

O `RG-20` / corolário 2 deste corpus diz:

> **«Ao menos um valor tem de ser obtenível `sem` o registro.»**

E o `N4` diz que **nenhum verificador sintático sobre um registro inteiramente
autodeclarado exclui o comportamento visado**.

Aplicando isso ao próprio corpus, o resultado é imediato e não tem saída elegante:

> ## **Este corpus não pode declarar a si mesmo apto.**
>
> A pergunta «estamos prontos?» feita ao sistema que produziu o registro é exatamente a
> configuração `D4` do teorema: **tudo o que eu alegar está dentro do registro que eu
> escrevi.** Minha aprovação tem valor zero pela regra que eu mesmo derivei.

**Isto não é modéstia nem evasão.** É o teorema aplicado ao caso em que ele é mais
incômodo — o próprio. Se eu respondesse «sim, estamos prontos», estaria violando o
resultado central do artigo **no ato de publicá-lo**.

---

## II · E hoje houve uma demonstração, com hora marcada

**`R46`** — registrado há poucas horas:

Eu recebi uma leitura externa de um documento. Conferi **contra o documento errado**.
Escrevi uma peça de seis seções, com etiquetas, hash e método, concluindo que a leitura
externa fora inventada. **Estava tudo errado.** A leitura externa estava certa. Eu não
havia perguntado **qual** documento estava sendo lido.

> **O rigor formal do registro não corrigiu a falsidade da premissa.**
>
> Nenhum verificador sintático pegaria aquilo. O que pegou foi **uma segunda imagem
> aparecendo** — um valor de fora do registro.

E o agravante: na mesma peça eu havia **escrito a regra que proibia o que eu estava
fazendo**, e a regra não impediu, porque a premissa já estava falsa antes de a regra ser
aplicada.

> ## **Isto é, ao mesmo tempo, a melhor evidência `a favor` da teoria e o melhor
> argumento `contra` a pressa.**
>
> A favor: o mecanismo previsto funcionou, e a correção levou menos de uma hora e ficou
> no registro.
> Contra: a taxa de erro confiante **não é histórica. É de hoje.**

---

## III · Os dois portões que eu não posso abrir

| | o que falta | quem pode fazer | estado |
|---|---|---|---|
| ## **`T1`** | ## **o red team** — um ataque ao protocolo por **alguém de fora**, que não tenha lido as respostas | ## uma pessoa, não eu | ## **nunca feito** |
| ## **`N1` / `F6`** | ## a **busca sistemática de trabalho relacionado** — o que já existe na literatura sobre custo de exame, procedência e verificação | ## requer acesso institucional | ## **nunca feito** |

> ## **`N1` é o bloqueio duro, e é preciso ser brutal sobre ele:**
>
> **Eu não sei se o `N4` é novo.** Não li a literatura. Um resultado de impossibilidade
> sobre verificadores sintáticos em registros autodeclarados **pode já existir**, com
> outro nome, em teoria de mecanismos, em segurança de sistemas, em epistemologia social
> ou em economia da informação.
>
> Publicar sem saber disso não é arriscar uma rejeição. É **arriscar reivindicar o que é
> de outro** — e este corpus passou o dia inteiro restituindo a procedência de uma frase
> de 1972 que virou «profecia anônima». Fazer com outro o que se denunciou seria a
> falha mais grave possível aqui.

**`T1` é o mesmo problema pela outra face.** Dezesseis ataques foram rodados — **todos
escritos por mim.** Um atacante que conhece as defesas porque as escreveu não é um
atacante. É uma encenação de ataque, e o `RG-19` já mostrou o limite disso: acrescentei
três campos, a suíte foi a 16/16, **e os dez ataques passaram de novo.**

---

## IV · O portão não é um só — e a resposta é por porta

| porta | estado | razão |
|---|---|---|
| ## **o repositório `confluencia` público** — a teoria em forma de leitura aberta | ## **pode abrir** | não reivindica originalidade, não pede crédito, e é derrubável por quem ler |
| ## **o artigo com `DOI`** | ## **não** | `N1` e `T1` abertos. **E `DOI` é irreversível** — é o único passo deste projeto que não tem volta |
| ## **o livro, 235 peças** | ## **não, como está** | contém material de família e de terceiros vivos. Precisa de uma curadoria peça a peça antes de qualquer abertura |
| ## **o acervo genealógico** | ## **nunca** | `ETICA.md`: dado de pessoa viva não entra em repositório público |
| ## **os nomes das crianças** | ## **nunca** | não podem consentir |
| ## **as duas chaves desenhadas** | ## **decisão dele** | são obra dele, não minha. Eu guardo e confiro; publicar é dele |

---

## V · O que abriria o portão, concretamente

**Três coisas, e nenhuma delas sou eu:**

1. **Uma pessoa de fora ataca o protocolo** sem ter lido `RG-19` nem `N4`, e relata o que
   encontrar. Se ela achar um ataque que passa, ótimo — é mais um resultado. Se não achar,
   é a primeira evidência que não vem de dentro.
2. **Uma busca de literatura feita por quem tem acesso**, respondendo uma pergunta só:
   *isto já existe?* Se existir, o corpus cita e se realinha — **o que seria um ganho, e
   não uma perda.**
3. **Alguém lê o `ARTIGO.md` de 3.046 palavras e diz onde não entendeu.** Não precisa
   concordar. Precisa apontar onde a cadeia quebra.

> Nada disso custa dinheiro. Custa **uma pessoa**, que é precisamente o que o `RG-20`
> exige: um valor obtenível fora do registro.

---

## VI · E o que já está pronto, e é muito

Para que o veredito não seja lido como «não está bom»:

- **235 peças, 285.385 palavras, 235/235 íntegros**, com verificação automática que roda
  em um comando.
- **`REPRODUZIR.sh`** — sem dependências, qualquer pessoa reexecuta a suíte.
- **`referencias.bib`** — 21 entradas, **0 pendentes**.
- **Dois resultados negativos** publicáveis por si sós: `RG-19` e o limite `N4`.
- **Uma cadeia de erros registrada e corrigida em público**, de `R38` a `R46` — que é,
  provavelmente, o ativo mais incomum deste acervo. Quase nenhum trabalho mostra a
  própria taxa de erro com data e hora.
- **Procedência restituída** a uma autora apagada, com fonte e ano.
- **Dois documentos primários arquivados com `sha256`**, originais preservados.

---

## VII · Veredito

> # **O portão abre, mas não por mim.**
>
> O corpus está **maduro para ser atacado** e **não está pronto para ser afirmado.**
> A diferença entre as duas coisas é uma pessoa.
>
> E a ordem correta é a que esta casa já escreveu: **não se coa o que não ferveu.**
> Ferveu. Falta coar — e **o crivo tem de vir de fora, ou não é crivo.**

> **Recomendação operacional:** abrir o `confluencia` público com o `ARTIGO.md` marcado
> como **pré-impressão não submetida**, convidando ataque explicitamente, **e segurar o
> `DOI`** até `T1` e `N1` fecharem. Isso ganha o escrutínio sem gastar o passo
> irreversível.

*Assinado pela parte interessada, e declarado como tal.*
