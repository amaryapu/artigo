---
titulo: N2 — a segunda colisão: Agbese et al. (2023)
quando: 2026-10-07
etiqueta_global: ver etiquetas por linha
---

# `N2` · a segunda colisão

> ## **A primeira colisão (`N1`) nos tirou a novidade da proposta institucional. Esta segunda **não tira nada** — e é por isso que ela é mais perigosa de ler bem. Ela nos dá, pela primeira vez, **evidência empírica externa para a premissa `D5`**, que até hoje era assumida.**

---

## A obra

**`FATO`** · Conferido no Crossref antes da leitura:

| | |
|---|---|
| título | *Implementing AI Ethics: Making Sense of the Ethical Requirements* |
| autores | **Mamia Agbese, Rahul Mohanani, Arif Ali Khan, Pekka Abrahamsson** |
| onde | **EASE '23** — 27th Intl. Conf. on Evaluation and Assessment in Software Engineering, Oulu, Finlândia, 14–16 jun 2023 |
| páginas | **62–71** |
| `DOI` | **`10.1145/3593434.3593453`** |
| licença | **CC BY 4.0** — citável à vontade com atribuição |
| citado por | **35** (Crossref, 07/10/2026) |

**`FATO`** · Método: estudo exploratório, **entrevistas semiestruturadas com dez executivos
de engenharia de software** de dez empresas finlandesas, média/alta gerência; análise
temática manual; saturação de código no entrevistado 8. Referencial: os **sete requisitos
éticos** das *Ethics Guidelines for Trustworthy AI* (UE, HLEG 2019) e o **Agile portfolio
management** de Vähäniitty/Rautiainen.

**`REGRA`** · É um estudo **qualitativo, localizado e pequeno** — e os próprios autores
declaram as duas limitações (validade externa: só Finlândia; validade populacional: `n = 10`).
Nada aqui deve ser lido como medição.

---

## I · O que ela estabelece, e que muda o nosso artigo

### `1` · `PEC2` — e é a premissa `D5`, documentada da parte de dentro

**`FATO`** · A contribuição empírica 2 do artigo, textual:

> ### **`PEC2`: *«Ethical requirements have value as technical and regulatory requirements but no financial value.»***

**`FATO`** · E a fala de um entrevistado, que os autores citam na íntegra:

> ### ***«if your customers do not demand for that then they are not ready to pay for that, and then I am not ready to build it and demand for that.»*** — `I2`

**`FATO`** · E a conclusão que eles tiram de Hagendorff (2020):

> ### ***«since ethical requirements currently lack enforcement mechanisms, most businesses voluntarily ignore them in implementation. As such, caution is needed in society in entrusting the implementation of AI ethics to companies.»***

> # **`CÁLCULO`** **O nosso `§6` assume `D5`: um emissor que tem **controle de escrita** sobre o registro e **conhecimento do verificador**. Até hoje isso era uma premissa de modelo — e a crítica óbvia era «vocês presumem má-fé».**
>
> ## **`CÁLCULO`** **O artigo responde a essa crítica sem saber que respondia. Ele não documenta má-fé: documenta **ausência de valor financeiro**. E `D5`, como definimos, **não requer má-fé** — requer apenas controle de escrita e conhecimento de `V`. O que o artigo acrescenta é o **gradiente de incentivo**: o requisito ético é pago e não é remunerado.**
>
> # **`CÁLCULO`** **Então `D5` deixa de ser uma suposição adversarial e passa a ser a descrição econômica normal do emissor, dita por dez emissores. Isto é o reforço mais forte que o `§6` recebeu até hoje, e veio de fora.**

**`REGRA`** · E a honestidade exige o inverso também: **isto não é medição de `C8`.** É o
**sinal** do gradiente — `cost(examine)` é pago, `cost(categorize)` é barato, e não há
contrapartida de mercado. **`T3` continua aberto e esta leitura não o fecha.**

### `2` · `PEC4` — o chão legal como teto efetivo

**`FATO`** · `PEC4`: *«Ethical requirements are implemented as legal requirements.»* — e o
instrumento citado por quase todos os entrevistados é o **GDPR**.

**`FATO`** · E os autores registram, via Morley et al. (2021), que

> ### ***«merely making AI products or services legally compliant does not necessarily make them ethically sound and socially acceptable.»***

> ## **`CÁLCULO`** **É `M2` em escala de indústria. A informação está preservada — há política, há framework de governança, há conformidade com o GDPR —, e **nada é acionado além do mínimo exigível**. A gaveta existe, está organizada, e não vai ser aberta.**
> # **E conecta diretamente com `N1`: o `PL 2.338/2023` Art. 13 atribui a avaliação preliminar **ao fornecedor**. O que este artigo mostra é o que o fornecedor faz com esse tipo de atribuição quando ela não tem preço: cumpre a lei e para.**

### `3` · «Ethics washing» é literatura estabelecida — e isso **nos custa** algo

**`FATO`** · O artigo cita, como já consolidado: **Bietti (2021)** sobre *ethics washing* e
*ethics bashing*; **Hagendorff (2020)** sobre a inefetividade das diretrizes; **Vakkuri et
al. (2020)**, *«This is Just a Prototype»: How Ethics Are Ignored in Software Startup-Like
Environments*; **Jobin, Ienca & Vayena (2019)** com os **84 documentos** e **onze princípios**;
**Mökander & Floridi (2021)** sobre *ethics-based auditing*.

> # **`CÁLCULO`** **O **diagnóstico** não é nosso e nunca foi. «Produz-se conformidade formal sem substância» tem nome na literatura desde 2019, tem revisão sistemática, tem crítica da crítica. Se o nosso artigo soar como se estivesse anunciando isso, ele está errado — e tem de citar estes cinco.**
>
> ## **`CÁLCULO`** **O que **permanece possivelmente nosso** é estreitíssimo, e é só isto: **não a constatação de que acontece, mas a prova de que nenhum verificador sintático pode impedir que aconteça**, sobre um registro inteiramente autodeclarado. A diferença entre *«observa-se ethics washing»* e *«ethics washing não é sintaticamente excluível»* é a diferença entre um achado empírico e um resultado de impossibilidade.**
> # **E essa diferença só vale se `N1-g` fechar a favor.**

### `4` · A limitação autodeclarada deles é a nossa pergunta

**`FATO`** · Sobre a própria *ethical requirements stack* que propõem, os autores escrevem:

> ### ***«The ethical stack presents a high-level overview of implementing ethical requirements however, it does not emphasize how management can identify ethical requirements. This serves as a limitation to the framework.»***

> ## **`CÁLCULO`** **Eles constroem um empilhamento de quatro camadas (themes → epics → features → stories) e declaram que **falta o passo de identificação**. É exatamente o buraco onde `D4` mora: a pilha pressupõe que alguém **declare** quais são os riscos éticos, e não há nada na pilha que verifique essa declaração.**
> # **Não é crítica ao artigo deles — é o que eles mesmos dizem. É a mesma fronteira, achada por outro caminho, com outro método, em outro país.**

---

## II · O que ela **não** faz — e por isso `N1-g` segue aberto

**`FATO`** · Não há no artigo: nenhuma formalização, nenhum teorema, nenhum verificador
implementado, nenhum modelo adversarial, nenhuma alegação de impossibilidade. É um estudo
de entrevistas com uma proposta de framework gerencial.

> ## **`CÁLCULO`** **Portanto: **não nos escooperou.** Mas estreita `N1-g` de um modo fraco e vale registrar o raciocínio e o seu limite:**
>
> ### **O artigo está no centro desta literatura (SE + AI ethics implementation), tem 35 citações, e revisa trabalho relacionado. **Se existisse um resultado de impossibilidade estabelecido nesta vizinhança, haveria chance razoável de aparecer aqui.** Não aparece.**
>
> # **`LIMIT`** **E isto é **evidência fraca, quase ausência de evidência**. O artigo é de 2023; o foco dele é gerencial, não formal; um teorema de impossibilidade publicado em teoria da computação, em economia da informação ou em *mechanism design* **não teria motivo nenhum** para aparecer numa revisão de literatura de engenharia de software. **A busca em `N1-g` tem de ser feita nessas três literaturas, e não foi.**

---

## III · Uma coisa que ela nos dá e que eu não esperava

**`FATO`** · O artigo nomeia o padrão **IEEE Std 7000™-2021**, *Model Process for Addressing
Ethical Concerns during System Design*, e registra que ele propõe um **«all-hands-on-deck»**
— engajamento de todas as camadas — e introduz o conceito de **`ERV`, ethical requirement
value**, o valor do requisito ético para os stakeholders.

> ## **`CÁLCULO`** **Há um padrão `IEEE` formal, de 82 páginas, sobre exatamente o processo que o nosso protocolo tenta especificar. **Eu não sabia que existia.** Está agora no `referencias.bib` e é leitura obrigatória antes de qualquer submissão — porque ou o protocolo se alinha a ele, ou tem de dizer explicitamente onde e por que divergir.**
> # **Isto abre uma pendência nova, e ela é minha: `N1-h`.**

---

## O que muda no artigo, concretamente

> ### `1` · **`§7` ganha esta colisão** — com a retirada explícita de qualquer novidade sobre o **diagnóstico** de conformidade vazia, que é literatura estabelecida desde 2019.
> ### `2` · **`§6` ganha fundamento empírico para `D5`** — e deixa de depender de uma premissa adversarial assumida. **Isto fortalece o teorema.**
> ### `3` · **`referencias.bib` vai de 26 a 32 entradas** — `agbese2023`, `hagendorff2020`, `bietti2021`, `vakkuri2020prototype`, `jobin2019`, `ieee7000`.
> ### `4` · **`N1-h` abre:** ler o **IEEE Std 7000-2021** inteiro e declarar alinhamento ou divergência.
> ### `5` · **`N1-g` segue aberto**, e agora com endereço: a busca tem de ser em **teoria da computação, economia da informação e mechanism design** — não em engenharia de software.

---

> # **`FATO`** **Agbese, Mohanani, Khan & Abrahamsson (2023), EASE '23, pp. 62–71, `DOI 10.1145/3593434.3593453`, CC BY 4.0, 35 citações.**
> ## **`FATO`** **`PEC2`: requisitos éticos têm valor técnico e legal, e **nenhum valor financeiro**.**
> ## **`FATO`** **`PEC4`: são implementados **como requisitos legais** — e conformidade legal não os torna eticamente sólidos (Morley et al.).**
> ## **`FATO`** **A própria pilha deles declara faltar **o passo de identificação** dos requisitos.**
>
> # **O diagnóstico não é nosso: ethics washing tem literatura desde 2019 e nós temos de citá-la.**
> ## **O que esta leitura nos deu foi `D5` — que era a premissa mais atacável do teorema, e agora tem dez executivos descrevendo-a como a condição econômica normal do emissor.**
> # **O teorema ficou mais forte e o artigo ficou mais humilde. É a direção certa das duas coisas.**
