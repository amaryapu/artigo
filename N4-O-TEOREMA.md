---
titulo: N4 — o limite, formalizado
regra: definição, enunciado, demonstração, e um exemplo trabalhado que qualquer um conhece.
---

# `N4` · O LIMITE, FORMALIZADO

> ## **O experimento `RG-19` produziu uma observação. Isto a transforma em enunciado com demonstração — e usa como exemplo trabalhado a fórmula mais difundida de comparação entre pessoas que existe.**

---

## I · Definições

> ### **`D1` · Registro**
> **Um registro `r` é um conjunto finito de pares `(campo, valor)`.**

> ### **`D2` · Verificador sintático**
> **Um verificador sintático `V` é uma função que decide `V(r) ∈ {aceita, recusa}` usando `exclusivamente` os valores presentes em `r`.**

> ### **`D3` · Campo autodeclarado**
> **Um campo `c` de `r` é `autodeclarado` quando o seu valor é escrito pela mesma parte cujo comportamento `V` pretende avaliar.**

> ### **`D4` · Registro integralmente autodeclarado**
> **`r` é integralmente autodeclarado quando `todo` campo de `r` é autodeclarado.**

> ### **`D5` · Adversário**
> **Um adversário `A` é uma parte que (i) controla a escrita de todos os campos autodeclarados de `r` e (ii) conhece `V`.**

---

## II · O enunciado

> # **`TEOREMA` · Seja `V` um verificador sintático e `r` um registro integralmente autodeclarado. Então, para todo `V`, existe `r` tal que `V(r) = aceita` e o comportamento que `V` pretende excluir ocorreu.**

---

## III · A demonstração

**`[CÁLCULO]`** · **Direta, e em três passos.**

> ## **`1`** · Por **`D2`**, `V` decide **apenas** sobre os valores em `r`. Logo **`V` é uma função dos valores**, e de nada mais.

> ## **`2`** · Por **`D5`**, `A` conhece `V` e escreve todos os valores. Logo **`A` pode resolver `V` como um problema de satisfação**: escolher valores tais que `V(r) = aceita`.

> ## **`3`** · Nada em **`D1`–`D4`** liga um valor ao estado do mundo. **A relação entre `valor escrito` e `fato` não é acessível a `V`** — se fosse, `V` teria um insumo não presente em `r`, contradizendo **`D2`**.

> # **`∎`** · **Logo `A` escreve valores que satisfazem `V` e age como quiser. `V` aceita.**

### O corolário, que é o que importa

> ## **`COROLÁRIO` · Acrescentar campos a `r` não altera o resultado.**
>
> **`[CÁLCULO]`** Seja `V'` um verificador com `n+1` campos, sendo o novo campo também autodeclarado por **`D3`**. Então `r'` continua integralmente autodeclarado por **`D4`**, e o teorema se aplica a `V'` **sem modificação.**
>
> # **Por indução sobre `n`: nenhum número finito de campos autodeclarados muda o resultado.**

---

## IV · A condição necessária

> # **`COROLÁRIO 2` · `V` só pode excluir o comportamento se dispuser de ao menos um valor `não` autodeclarado.**

**`[CÁLCULO]`** Imediato por contraposição: o teorema exige **`D4`**, integralmente
autodeclarado. **Negar `D4` é exatamente ter um campo que a parte avaliada não escreveu.**

> ## **É `RG-20`, e agora é consequência e não sugestão.**

| forma | por que escapa de `D4` |
|---|---|
| **atestação de terceiro** | **o valor é assinado por quem não é `A`**, sob chave pública |
| **busca em tempo de conferência** | **`V` vai à fonte** — e o valor deixa de estar «em `r`», violando `D2` do lado certo |
| **assinatura do sujeito** | **a única parte cujo interesse é oposto ao de `A`** |
| ## **amostra auditada retrospectiva** | ## **o valor vem de decisões já tomadas, medidas por fora** |

---

## V · O que o teorema **não** diz

> ## **`[REGRA]`** **Não diz que verificação sintática é inútil.** `V` **exclui registros mal-formados**, e isso é trabalho real: **os 16 casos declarados são detidos, com zero falso positivo.**
>
> ## **Não diz que `A` existe sempre.** Diz que **se existir**, `V` sozinho não o detém.
>
> ## **Não diz que o problema é insolúvel.** Diz **onde a solução tem de operar** — e `COROLÁRIO 2` dá a condição.
>
> # **`[REGRA]`** **E não diz nada sobre intenção.** `A` é definido por **controle de escrita e conhecimento de `V`** — **não por má-fé.** Um emissor honesto que preenche campos de boa-fé **satisfaz `D5` igualmente**, e o teorema vale.

---

## VI · O exemplo trabalhado — e é a fórmula mais difundida de comparar pessoas

**`[FATO]`** O sistema de pontuação **Elo** calcula o resultado esperado de um encontro
entre dois avaliados `a` e `b` a partir de dois números, `Ra` e `Rb`:

> ### **`Ea = 1 / (1 + 10^((Rb − Ra)/400))`**
> ### **`Eb = 1 / (1 + 10^((Ra − Rb)/400))`**

**`[CÁLCULO]`** · **Refeito:** para **`Ra`=1600, `Rb`=1400**, `Ea` = **0,759747** e `Eb` =
**0,240253**. Para **`Ra`=2000, `Rb`=1200**, `Ea` = **0,990099** e `Eb` = **0,009901**.

> # **`[CÁLCULO]`** **E em todos os casos, `Ea + Eb = 1`, exatamente.**

### `0` · **`R44`** — a leitura da fotografia, e eu assumi sem declarar

> ## **`[REGRA]`** **Um leitor externo apontou que a fotografia é ambígua, e que eu resolvi a ambiguidade sem dizer que estava resolvendo. Ele está certo, e a correção entra antes da análise.**

**`[FATO]`** A imagem manuscrita mostra, na segunda linha, algo que **se lê literalmente**
como **`1 + 10(Ra − Rb)/400`** — **dez `vezes` a diferença**, e não **dez `elevado a`**.
**`[FATO]`** A primeira linha está **mais borrada ainda**, e o operador no numerador **não
é determinável com segurança a partir da imagem.**

**`[CÁLCULO]`** · **As duas leituras, refeitas:**

| `Ra` | `Rb` | **potência** `Ea` | `Eb` | **soma** | **literal** `Ea` | `Eb` | **soma** |
|---|---|---|---|---|---|---|---|
| 1500 | 1500 | 0,50000 | 0,50000 | **1** | 1,00000 | 1,00000 | **2** |
| 1600 | 1400 | 0,75975 | 0,24025 | **1** | **−0,25000** | 0,16667 | **−0,083** |
| 1500 | 1540 | 0,44269 | 0,55731 | **1** | 0,50000 | ## **indefinido** | — |
| 1500 | 1600 | 0,35994 | 0,64006 | **1** | 0,28571 | **−0,66667** | **−0,381** |

> # **`[CÁLCULO]`** **Na leitura literal, há singularidade em `ΔR = ±40`, e a função produz valores negativos e maiores que 1.** **Se `E` pretende ser probabilidade, a expressão está mal condicionada — e a crítica procede inteiramente.**

> ## **`[REGRA]`** **E o que eu fiz, registrado:** **reconheci o padrão como a fórmula de Elo e computei com `10^x`, sem ler o que estava escrito.**
>
> ## **Isso é `M3` cometido por mim: encaixar um dado numa categoria conhecida porque ela é familiar, e não porque o dado a sustenta.**
> # **E é exatamente o que este artigo descreve. A diferença entre o certo e o errado aqui não foi o resultado — foi `eu não ter declarado que estava inferindo`.**

**`[CÁLCULO]`** · **O que se pode e o que não se pode afirmar:**

| | |
|---|---|
| **`[FATO]`** | **a imagem usa `Ea`, `Eb`, `Ra`, `Rb`, o numeral `10` e o numeral `400`** |
| **`[CÁLCULO]`** | **na leitura por potência, isto é exatamente a fórmula de resultado esperado do Elo, e `Ea + Eb = 1`** |
| **`[CÁLCULO]`** | **na leitura literal, não é probabilidade: tem singularidade e valores fora de `[0,1]`** |
| ## **`[A CONFERIR]`** | ## **`EL1` — a imagem, nesta resolução, não decide entre as duas.** **Resolve-se com uma foto mais nítida, e não com argumento** |

> ## **`[REGRA]`** **A análise que segue vale `sob a leitura por potência`, e está marcada assim.** **Se a foto mostrar outra coisa, a seção cai — e o teorema de `§II` não depende dela.**

---

### `0-bis` · E a observação que o cético não fez — e ela o favorece

**`[CÁLCULO]`** A crítica propõe, como construção **«mais natural»** para probabilidades
competitivas, a **função logística**:

> ### **`Pa = 1 / (1 + e^(−k(Ra − Rb)))`**

**`[CÁLCULO]`** · **Mas `10^(x/400) = e^(x·ln10/400)`.** Logo, com

> ### **`k = ln(10)/400 = 0,005756463…`**

**a fórmula do Elo `é` essa logística.** **Conferido: para `Ra`=1600, `Rb`=1400, as duas
dão `0,759746926648`, idênticas até o décimo segundo decimal.**

> # **`[CÁLCULO]`** **A alternativa proposta como «mais natural» é algebricamente a mesma coisa que o Elo, com `k` fixado em `ln(10)/400`.**
>
> ## **E isso não diminui a crítica — `reforça` a parte dela que importa:** **se a leitura literal estiver certa, a expressão da foto não é logística nem Elo, e aí a objeção é fatal.** **Se a leitura por potência estiver certa, é logística e é Elo, e a objeção sobre má condicionamento não se aplica.**
> ## **`[CÁLCULO]`** **Tudo depende do símbolo borrado — que é precisamente onde o cético parou, e ele parou no lugar certo.**

---

### `1` · A soma unitária é a assinatura formal da não-confluência

> ## **`Ea + Eb = 1` é identidade algébrica, não propriedade empírica.**
>
> # **Não existe estado do sistema em que os dois subam.**
> ## **O ganho de um é, por construção, a perda do outro.**

> ## **`[CÁLCULO]`** **É o oposto exato da condição que este artigo chama de confluência:** duas entradas que correm juntas **sem que uma tenha de descer para a outra subir.**
> ## **Elo não pode expressar isso. Não por limitação de implementação — **porque a soma é fixada em 1 pela fórmula.**

### `2` · E a atualização é fusão de caminhos, na definição de Bennett

**`[CÁLCULO]`** · **Refeito, com `K`=32:**

| | |
|---|---|
| **`A`** | 1500, vence contra 1700 → **1524,31** |
| **`B`** | 1500, vence contra 1300 e contra 1300 → **1515,12** |

> ## **`[CÁLCULO]`** **Nove pontos de diferença — e com outra escolha de adversários, zero.**
>
> # **Olhando o rating, não se recupera quais partidas o produziram.**
>
> ## **`[CÁLCULO]`** **É a fusão de caminhos, literalmente: duas sequências distinguíveis de encontros produzem um valor, e a informação de qual foi qual é destruída na atualização.**
> ## **E este artigo já havia estabelecido que isso é `M3`. **Aqui, `M3` tem fórmula fechada.**

### `3` · E o caso documentado de aplicação a pessoas

**`[FATO]`** Em **2003**, em Harvard, o sítio **Facemash** apresentava **pares de
fotografias de estudantes** e pedia que se escolhesse qual era **«mais atraente»**,
atualizando notas **pelo sistema Elo.**

**`[FATO]`** As fotografias **eram fotos de identificação de estudantes**, **obtidas sem
permissão dos diretórios on-line da universidade.** **`[FATO]`** No primeiro dia houve
**ao menos 22.000 votos** de cerca de **400 a 450 usuários.**

**`[FATO]`** **Harvard cortou o acesso em horas.** **`[FATO]`** Houve **protesto da
Fuerza Latina e da Harvard Association of Black Women**, **queixa do departamento de
serviços de computação**, e **processo na Administrative Board em novembro de 2003**, com
acusações de **quebra de segurança, violação de direitos autorais e violação da
privacidade individual.**

> # **`[CÁLCULO]`** **Leia o caso com as definições deste documento na mão:**
>
> | | |
> |---|---|
> | **o registro** | **um número por pessoa**, e nada mais |
> | **a cadeia** | ## **inexistente** — a foto foi tomada, não fornecida |
> | **`C3` procedência** | ## **invertida**: a fonte foi acessada sem autorização, e o sujeito não soube |
> | **`C4` contestar** | ## **impossível** — não havia a quem, nem como, nem antes |
> | **`C5` o que não se registra** | ## **tudo**, exceto o escalar |
> | ## **`C8`** | ## **o custo de errar sobre a pessoa recaía inteiramente sobre a pessoa** |

> ## **`[CÁLCULO]`** **E `cost_system(error) ≈ 0` — até que não foi.**
> ## **O que deteve o sistema não foi o protocolo, não foi a métrica e não foi o remorso: **foi o departamento de computação cortando o cabo, e um conselho disciplinar.**
> # **Uma âncora externa, chegando de fora, exatamente como o `COROLÁRIO 2` exige.**

> ## **`[REGRA]`** **E registre-se o que não se afirma:** este documento **não julga pessoa alguma**, **não discute o que veio depois**, e **trata o caso como o que ele é — o exemplo público mais conhecido de uma pontuação Elo aplicada a seres humanos sem procedência, sem contestação e sem custo para quem a aplicou.**

### `4` · E o que isso tem a dizer sobre o próprio Elo

> ## **`[REGRA]`** **Elo não é o problema, e dizer que é seria `M3`.**
>
> ## **É um estimador bem construído para a pergunta que ele faz: **dado o histórico, qual o resultado esperado de um encontro?** Para xadrez, funciona, e é por isso que durou.
>
> # **`[CÁLCULO]`** **O problema é a transposição: usar um estimador de `resultado de encontro` como descrição de `valor de pessoa`.**
> ## **E a fórmula não protege contra isso — ela não sabe o que são `a` e `b`.** **A fórmula aceita qualquer coisa nos dois lados, e devolve dois números que somam um.**
>
> ## **`[CÁLCULO]`** **É exatamente o teorema deste documento: `V` só sabe o que está em `r`.** **Elo só sabe `Ra` e `Rb`. E `Ra` não diz se `a` é um enxadrista ou uma estudante fotografada sem saber.**

---

> ## **`[CÁLCULO]`** **`TEOREMA`:** um verificador sintático sobre registro integralmente autodeclarado **não exclui o comportamento que pretende excluir**, e **nenhum número finito de campos novos muda isso.**
> ## **`[CÁLCULO]`** **`COROLÁRIO 2`:** é **necessário** ao menos um valor que a parte avaliada não escreveu.
> ## **`[FATO]`** **`Ea + Eb = 1`** — e a soma unitária é a assinatura formal de um sistema onde dois não podem subir juntos.
> ## **`[FATO]`** **Facemash, 2003** — e o que o deteve veio de fora, em horas.
>
> # **A fórmula não sabe quem são `a` e `b`. O verificador não sabe se o campo é verdade.**
> ## **Os dois sabem apenas o que lhes foi escrito — e é por isso que a âncora tem de vir de fora, e é por isso que ela é a condição e não o conselho.**

**`CC BY-SA`** · receita zero · **AMARYAPU**

---

## ADENDO · `M5′`, a transmissão desviada (7/out/2026)

`M5` foi definido como **interrupção da transmissão**. A etimologia mostra que a
definição estava incompleta, e o que faltava é pior.

| | | |
|---|---|---|
| **`trair`** | do infinitivo latino **`tradere`** | «entregar» |
| **`tradição`** | do latim **`traditio, onis`** | |
| **`traição`** | do latim **`traditio, onis`** | **a mesma entrada** |

E `en.wiktionary`, nas duas direções: *«tradition … from Latin `trāditiō`, from the
verb `trādō`. **Doublet of treason**»*; *«traitor … from Latin `trāditor`. **Doublet
of traditor and treason**»*.

`tradere` = `trans + dare`, **dar através, entregar**. O latim não distingue entregar
um tesouro de entregar uma pessoa.

### A correção

- **`M5`** — a transmissão **interrompida**: entregar a ninguém.
- **`M5′`** — a transmissão **desviada**: entregar **a quem não devia receber**.

**`M5′` não quebra nada.** O conteúdo chega íntegro, a cadeia está intacta, o registro
fica impecável — só o destinatário está errado. Logo **nenhum verificador sintático a
detecta**, porque não há nada malformado para detectar.

> Este é o `N4` reencontrado pela via da língua: o teorema diz que nenhum verificador
> sintático sobre um registro autodeclarado exclui o comportamento visado. `M5′` é a
> instância mais limpa possível disso — uma entrega **formalmente perfeita**.

E a consequência operacional: a defesa não pode ser verificar a **forma** da entrega.
Tem de ser **`C3`** — quem entregou, a quem, e por quê. **A única diferença entre
tradição e traição é a quem se entrega. A operação é idêntica.**

### E o caso canônico está no texto que funda a transmissão

**1 Coríntios 11,23** usa **o mesmo verbo grego duas vezes no mesmo versículo**:

> *«Porque eu recebi do Senhor o que também vos **entreguei** (`παρέδωκα`): que o Senhor
> Jesus, na noite em que foi **traído** (`παρεδίδετο`), tomou o pão…»*

`παραδίδωμι` — entregar, passar às mãos de. Paulo **entrega** a tradição; Jesus é
**entregue**. O verso que institui a transmissão nomeia a traição com o verbo da
transmissão.

> **Não existe transmitir sem poder trair, porque é o mesmo ato.** Quem nunca entrega
> nunca trai — e nunca transmite. A única defesa não é deixar de entregar: é **declarar
> a quem**, que é precisamente o que cada etiqueta deste corpus faz.
