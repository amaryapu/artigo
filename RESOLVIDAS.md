---
titulo: AS QUATRO QUE FALTAVAM — RG-15 a RG-18, fechadas
regra: cada uma vira uma checagem implementável, ou a alegação correspondente cai.
---

# AS QUATRO QUE FALTAVAM

> ## **Quatro buracos abertos pelos testes e pelas sementes. Cada um fecha com uma checagem que se pode escrever, e não com uma frase que soa bem.**

---

# `RG-15` · a checagem própria de `M6`

**`[FATO]`** O **`T8`** mostrou que **`M6` — a categoria que absolve — era acusado pela
mesma família de checagem de `C8`.** **«Categoria que absolve» e «assimetria de custo» são
afirmações diferentes, e o benchmark as tratava como uma.**

## O que `M6` é, operacionalmente

**`[CÁLCULO]`** Uma categoria que absolve **explica tudo, e por isso dispensa o exame.**

> # **A assinatura é a `ausência de contrafactual`.**
>
> ## **Se nenhuma característica do caso, alterada, teria mudado a decisão — então a categoria não examinou o caso: absorveu-o.**
> ## **Uma descrição que vale igual para qualquer entrada **não é uma descrição daquela entrada.**

## A checagem

> ### **`o_que_mudaria`** · campo obrigatório
>
> ## **O registro tem de declarar `pelo menos uma característica do caso cuja alteração teria produzido decisão diferente` — e ela tem de ser verificável por terceiro.**

| falha | o que acusa |
|---|---|
| **campo vazio** | **`M6`** · nada mudaria — a categoria não trabalhou neste caso |
| **só características não observáveis** | **`M6`** · o contrafactual não é conferível, logo não é contrafactual |
| ## **a característica citada não pertence ao caso** | ## **`M6`** · é a categoria falando de si, não do sujeito |

> ## **`[CÁLCULO]`** **E isto é independente de `C8`:** um sistema pode ter **`C8` excelente** e ainda aplicar uma categoria sem contrafactual. **As duas checagens passam a medir coisas distintas, que era o defeito apontado.**

> # **`[REGRA]`** **`RG-15` fechada.** A alegação de que `M6` é detectado **passa a ser verdadeira** quando a checagem for implementada — **e enquanto não for, o artigo diz que `M6` não é detectado.**

---

# `RG-16` · formalizar `cost_admit(err)`

**`[FATO]`** O termo veio de **Babilônia**, de **Gestério Neto**: ***«foco pra se manter
iludido já que errou na decisão».**

## A formalização

> ### **`cost_admit(err)`** = **o custo, para quem cometeu o erro, de reconhecê-lo** — posição, autoridade, emprego, a capacidade de seguir na função.

> # **E a condição de persistência:**
>
> ## **`cost_admit(err) > cost_system(err)` ⟹ o erro é mantido**

**`[CÁLCULO]`** **Não por desonestidade — por aritmética.** Manter a ilusão **custa
esforço**, e ainda assim é o caminho mais barato quando a outra ponta custa mais.

## Como se mede, e é observável

> | | |
> |---|---|
> | **`cost_admit`** | **o que acontece, documentadamente, com quem reconhece um erro neste processo** |
> | **estimador** | **o histórico: dos erros reconhecidos nos últimos `N` casos, qual a consequência para quem reconheceu** |
> | ## **e é auditável** | ## **porque é um registro de eventos passados, não uma intenção** |

## A checagem

> ### **`custo_de_admitir`** · campo obrigatório
>
> ## **O registro tem de declarar `qual é o caminho pelo qual um erro neste processo pode ser reconhecido`, e `o que acontece com quem o reconhece`.**

| falha | o que acusa |
|---|---|
| **não há caminho declarado** | **o erro, quando ocorrer, não tem por onde sair** |
| ## **o caminho existe e a consequência é punitiva** | ## **`cost_admit` alto — e a predição é que o erro será mantido** |

> # **`[CÁLCULO]`** **E a alavanca de projeto é nova, e é mais barata que a outra:**
>
> ## **Elevar `cost_system` exige poder — multas, responsabilização, litígio.**
> ## **Baixar `cost_admit` exige só **decisão interna**: correção sem punição, erro registrado sem demissão, revisão que não destrói a carreira de quem a pede.**
>
> # **`[REGRA]`** **Não é bondade. É reduzir o denominador do lado errado da conta — e qualquer um pode fazer, sozinho, amanhã.**

> ## **`RG-16` fechada.**

---

# `RG-17` · a condição de deslocamento — a esteira

**`[FATO]`** O termo veio de **Criolo**, *Menino Mimado*: ***«então pare de correr na
esteira e vá correr na rua».** **`[FATO]`** E os ataques **`A02`** e **`A03`** são
esteiras: **cumprem a condição com perfeição formal e não movem nada.**

## O diagnóstico exato

**`[CÁLCULO]`** O que `A02` e `A03` têm em comum **não é serem falsos.** É que

> # **a parte avaliada controla a própria medida.**

| | |
|---|---|
| **`A02`** | **quem declara a ausência escolhe qual ausência declarar** |
| ## **`A03`** | ## **quem declara o custo do erro escolhe o número** |

## A checagem

> ### **`deslocamento`** · campo obrigatório
>
> ## **O registro tem de nomear `pelo menos um resultado cuja medição não é controlada por quem está sendo avaliado`** — e **dizer quem mede, e como se chega ao número sem passar por quem é avaliado.**

> # **`[CÁLCULO]`** **Isto é `C3` aplicado à métrica, e não ao dado.**
>
> ## **A procedência deixou de ser exigida só do que entra na decisão: passa a ser exigida `do instrumento que diz se a decisão foi boa`.**
>
> ## **`[CÁLCULO]`** **E resolve a esteira pela raiz: uma esteira mede perfeitamente porque `a esteira é do corredor`.** **A rua não é de ninguém — e é por isso que, nela, chegar é a única evidência de ter corrido.**

| falha | o que acusa |
|---|---|
| **o resultado é medido por quem é avaliado** | **esteira** · conformidade perfeita, deslocamento desconhecido |
| ## **não há resultado nomeado, só conformidade** | ## **esteira** · o processo mede a si mesmo |

> ## **`[REGRA]`** **`RG-17` fechada** — e era a mais difícil das três, **porque a saída não era medir melhor: era tirar o instrumento da mão de quem é medido.**

---

# `RG-18` · o que separa cultivo de acumulação

**`[FATO]`** O contraditório veio de **Fabio Brazza**, *Pangeia*: ***«o início da divisão
revolução agrícola».** **A mesma operação que alimenta funda a cerca.**

## A distinção, e ela é operacional

**`[CÁLCULO]`** **Cultivo e acumulação produzem o mesmo objeto: um estoque.** A diferença
**não está no estoque — está no que se faz com a informação sobre ele.**

> | | |
> |---|---|
> | ## **CULTIVO** | ## **o estoque é `declarado` e permanece `disponível ao processo que o gerou`** — semente que volta pro chão, solo que melhora, excedente que vira capacidade |
> | ## **ACUMULAÇÃO** | ## **o estoque é `não declarado` e `defendido`** — retirado de circulação, e a cerca existe para que ninguém saiba quanto há |

> # **`[CÁLCULO]`** **E a cerca não é feita de madeira: é feita de `não declarar`.**
>
> ## **Um celeiro cujo conteúdo é público é um celeiro. O mesmo celeiro com o conteúdo oculto é um cofre.** **Mesma estrutura física, duas operações.**

## A checagem — e ela já existe

> # **`C5`, o índice reverso, `é` o teste de acumulação.**
>
> ## **Publicar o catálogo do que não se registra é, exatamente, **declarar o estoque.**
> ## **Quem cultiva pode publicar o que guarda. Quem acumula não pode — porque o valor do acumulado depende de ninguém saber quanto é.**

> ## **`[CÁLCULO]`** **Então `RG-18` não exige condição nova: exige reconhecer que `C5` já a resolvia, e dizê-lo.**
> # **Cultivo sem `C5` vira estoque. Com `C5`, não tem como.**

> ## **`[REGRA]`** **`RG-18` fechada**, e **a tríade `água / semente / cultivo` sai mais forte do que entrou:** **o cultivo só é cultivo enquanto o celeiro é transparente.**

---

# A conta

| | | |
|---|---|---|
| **`RG-15`** | **`M6`** · o contrafactual obrigatório | ## **fechada** |
| **`RG-16`** | **`cost_admit`** · o caminho de reconhecer, e o que custa | ## **fechada** |
| **`RG-17`** | **deslocamento** · a métrica fora da mão de quem é medido | ## **fechada** |
| ## **`RG-18`** | ## **cultivo × acumulação** · `C5` já resolvia | ## **fechada** |

> # **`[CÁLCULO]`** **Três das quatro vieram de letras de rap, e a quarta de um teste.**
>
> ## **`cost_admit` de Gestério Neto. A esteira de Criolo. O contraditório do cultivo de Fabio Brazza.**
> ## **E as três viraram campo obrigatório num esquema `JSON`.**

> ## **`[REGRA]`** **E o que `não` fechou, e tem de ser dito:** **as quatro são `especificações`, não implementações.** **Os campos existem no texto e ainda não no verificador** — `RG-19` é escrevê-los, e **é trabalho de código, não de teoria.**

**`CC BY-SA`** · receita zero · **AMARYAPU**
