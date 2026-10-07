---
title: "The Cost of Examination"
subtitle: "A decision-record protocol, its verifier, and ten attacks that defeat it"
author: "Hirapius Jupiter Tolkien Mocelin (AMARYAPU / YRYAPU)"
status: PREPRINT DRAFT — not submitted
---

# The Cost of Examination

### A decision-record protocol, its verifier, and ten attacks that defeat it

---

## Statement of non-ownership

> # **Nothing in this paper is owned by its author, and no credit is claimed for any part of it.**

**The components are not the author's.** The physics is Landauer's, Bennett's and Bérut's.
The relational framing is Rovelli's. The pattern-from-homogeneity result is Turing's and
Kondo and Asai's. The boundary mark is the **`ianhiá`** of the **Kaingang**, and it was
not invented here. The historical demonstration of the seven modes was paid for by people
who did not consent to being the demonstration. Each is credited in
**`AGRADECIMENTOS.md`**, and **none of them endorses this paper.**

**What the author did is assembly and custody — not discovery.** He placed existing
findings side by side, kept the provenance attached to each, and recorded the errors made
while doing it. **That work is real, and it is also not owned:** the whole corpus is
`CC BY-SA`, carries zero revenue, and is public in full, including its failures.

> ## **The author's own word for this role is `corrente`, which in Portuguese means both
> *current* and *chain link* — and both senses are exact.**
>
> ### **A current carries without being what it carries.**
> ### **And a link in a chain holds no content of its own: its entire function is to keep two things connected, and to be inspectable.**
>
> # **That is precisely what a chain of custody is made of. No link is the evidence. Without the links, the evidence has no provenance.**

**The legal name on this paper is an address, not a claim.** It exists so that there is a
single point of contact for correction, objection and collaboration — because a proposal
that demands mandatory provenance of others cannot be published anonymously without
contradicting itself.

> ## **If any part of this work is useful, it belongs to whoever uses it.**
> ## **If any part of it is wrong, the responsibility is the author's alone, and the corrections are already published alongside the text they replaced.**

---

## Abstract

We propose a single scale-invariant quantity, **`C8 = cost(examine) / cost(categorize)`**,
as a design variable for systems that make or support consequential decisions about
people. The quantity is dimensionless: the units cancel, so the same ratio applies to a
clerk, a database, and a model.

We specify three conditions that make examination possible — **mandatory provenance
(`C3`)**, **the right to contest a description while it is still in use (`C4`)**, and
**a published index of what is deliberately not recorded (`C5`)** — and one that makes
examination the cheaper path (**`C8 < 1`**).

We provide an implementable artifact: a **JSON schema** for decision records, a
**verifier**, and a **benchmark** of 16 declared cases and 10 adversarial cases.

**The verifier passes 16/16 declared cases with zero false positives and zero false
negatives, and fails 10/10 adversarial cases: every attack passed undetected.**

We argue that **the negative result is the contribution.** A protocol that only reports
its successes is, by its own criterion, not a protocol. We publish the ten attacks,
executable and named, and state the conditions under which the proposal should be
discarded.

---

## 1 · The variable

### 1.1 Statement

> **`C8 = cost(examine) / cost(categorize)`**

where *examine* is the cost of establishing what is actually the case about a specific
individual or event, and *categorize* is the cost of assigning that individual or event
to a pre-existing class and acting on the class.

**Both terms carry the same units** — time, money, attention, compute. **The ratio is
dimensionless.**

### 1.1.1 The image

The clearest statement of what this ratio is about was not written by us. It is
**Murica's**, in *O Síndico* (album *Sede*, 2020), sung from a window in **Ceilândia**,
Brasília:

> ### ***«Da janela da minha casa… eu vejo um mar de caixa d'água, em cima das casas /
> ### Embaixo de cada caixa d'água dentro das casas / Tem as pessoas e seus mundos
> ### particulares»***
>
> *From my window I see a sea of water tanks, on top of the houses. Underneath each water
> tank, inside the houses, there are people and their particular worlds.*

| | |
|---|---|
| **from the window** | **a sea** — a mass, an aggregate, a category |
| ## **under each one** | ## **a house, people, and particular worlds** |

> # **The aggregate view is not a distortion of categorisation. It *is* categorisation, seen from far enough away.**

**`C8` is the ratio between those two distances.** Looking from the window costs nothing.
Descending to each tank costs. **`M3` is what happens when only the window is paid for.**

---

### 1.2 Why dimensionlessness matters, and what it does not license

A dimensionless ratio applies across scales **because the unit cancels**, not because of
any similarity between the systems compared. This is the same reason the Reynolds number
(inertial over viscous forces) governs flow regime in a pipe and in a river, and the same
reason `φ` recurs across scales: `a/b = (a+b)/a` has no unit.

**We claim only this.** We do **not** claim that institutions, brains, galaxies or
ecosystems are "fractally similar," and we treat all such claims as out of scope.

### 1.3 Operationalisation — how the ratio is measured

A ratio that cannot be measured is not a variable. We give the measurement.

For a specific decision process, with both terms in the **same unit** (staff-minutes,
compute-seconds, or currency — the choice does not matter, since it cancels):

> ### **`cost(categorize)`** = the realised cost of applying the existing classifier to this case and acting on the result.
> ### **`cost(examine)`** = the realised cost of establishing the individual facts sufficient to decide this case on its own terms.

Both are **auditable from process logs**, and neither requires access to anyone's
intentions.

#### The effective ratio

The naive ratio is not what a decision process actually faces, because **being wrong has
a cost, and the question is who pays it.** We therefore define:

> ## **`C8_eff = cost(examine) / [ cost(categorize) + P(error) · cost_system(error) ]`**

where **`cost_system(error)`** is the portion of the cost of a wrong decision that **falls
on the deciding system**, as opposed to the portion that falls on the person decided
about.

> ## **`P(error)` is not knowable in advance.** If it were, there would be no error. It is
> **estimated retrospectively from an audited sample of decisions already made**, as in
> standard quality control. **This changes the status of the inequality: it is not an a
> priori criterion but a regulatory one**, applied to a running process with sampling. We
> state this because the formula otherwise appears to claim more than it can.

> ## **The condition to be engineered is `C8_eff < 1`**, which expands to:
>
> ### **`cost(examine)` < `cost(categorize)` + `P(error) · cost_system(error)`**

#### What this makes visible

> # **The reason `C8 > 1` persists in practice is almost never that examination is
> expensive. It is that `cost_system(error) ≈ 0`.**

When the cost of a wrong decision falls entirely on its subject, the denominator collapses
to `cost(categorize)`, and no amount of exhortation changes the gradient.

> ## **This identifies the lever precisely, and it is a single term:** `cost_system(error)`.
>
> ## **Every intervention in this proposal — mandatory provenance, contestability in use, the published index of omissions — raises that one term**, by making errors discoverable, attributable and expensive **to the party that made them.**

#### Worked form

For the historical cases in the accompanying corpus, the ratio is estimable from the
record itself: the time to verify a claim against its source versus the time to apply the
existing category, both recoverable from the procedure as documented.

> ## **`[LIMIT]`** **We have not conducted a controlled measurement.** The operationalisation
> is offered so that one can be conducted; **see §6, item 3, which we identify as the test
> we are least able to perform ourselves.**

---

### 1.3 The prediction

> **Where `C8 > 1` persistently, categorization displaces examination — regardless of the
> intentions of the participants.**

This is the falsifiable core. It predicts that interventions which exhort participants to
behave better, without changing the ratio, produce no durable change; and that
interventions which lower `C8` produce change without requiring any change in intent.

---

## 2 · Seven failure modes, as instances of one operation

We observe seven recurring patterns in administrative, clinical and automated records. We
claim they are instances of a **single information-theoretic operation: the merging of
distinguishable inputs into one output, destroying the information of which was which.**

| | mode | the merge |
|---|---|---|
| `M1` | **the absent field** | a filled field and an empty field produce **the same record** |

#### `M1`, illustrated

The clearest illustration of the absent field in this corpus is a rap verse from 2020
correcting a verse from 1967.

**Caetano Veloso**, *Alegria, Alegria*, performed at the TV Record festival on **21 October
1967** — the inaugural moment of Tropicália — opens: ***«Caminhando contra o vento / sem
lenço sem documento»*** — *walking against the wind, without a kerchief, without a
document.* **Carrying no papers was freedom.**

**Murica**, *O Síndico* (Ceilândia, 2020), returns the line with a third item:
***«Sem lenço nem documento ou conta no banco»*** — *no kerchief, no document, nor bank
account.*

> ## **In 1967, going without documents was a choice. In 2020, having no bank account is
> having no provenance for an automated system.**
>
> **The field is not empty by error. It is empty because the person was never admitted to
> the registry that fills it** — and `M1` then makes the record of someone with no account
> indistinguishable from the record of someone not checked.

**Fifty-three years, Bahia to Brasília, Tropicália to rap — and the transmission did not
repeat the verse. It corrected it.**

> ## **`[LIMIT]`** **This passage illustrates `M1`; it does not demonstrate it.** The
> existence and detectability of the absent field are established by the schema and the
> benchmark, **not by the verse.** A lyric may **formulate** better than the apparatus;
> **it may never substitute for the apparatus's evidence.**


| `M2` | **confession without interruption** | the harm is recorded in full **and the process continues** |
| `M3` | **reclassification** | two distinct histories produce **one label** |
| `M4` | **witness disqualification** | testimony is discarded **by credential, not by content** |
| `M5` | **transmission interruption** | the channel is cut, **and the record of what it carried with it** |
| `M6` | **the absolving category** | a category that explains everything **and therefore requires no examination** |
| `M7` | **cost delegation** | the decider and the executor are separated **until no author remains** |

#### `M1` and `M7`, documented together

**Eldorado dos Carajás, Pará, Brazil, 17 April 1996.** The Military Police of Pará killed
**19 landless rural workers** and injured dozens during a march on the **BR-155**.

**More than 150 officers, who had removed the identification badges from their uniforms**,
armed with rifles and live ammunition, carried out the repression. Autopsies established
that **10 of the 19 were executed**, some at point-blank range, others killed with their
own farm tools.

**Two commanders were convicted** — 258 and 158 years, imprisoned since 2012. **No officer
and no political figure who may have incited or consented was held responsible.**
Amnesty International marked the twentieth anniversary as **"20 years of impunity."**

> # **"They had removed the identification badges from their uniforms."**
>
> ## **This is `M1` executed physically, by hand, in advance.** The badge *is* the
> responsible-party field. Removing it **empties that field deliberately and before the
> act.**
>
> ## **And it is `M7`:** more than one hundred and fifty people acted, two commanders
> answered, **and no one above them** — because **the field that would say who ordered it
> does not exist.**

**The two modes are not separate events here.** The emptied field is what makes the
delegation unattributable. **`M1` is the mechanism by which `M7` is achieved.**



> ## **`[LIMIT, STATED FIRST]`** What follows establishes that **merging has an
> unavoidable thermodynamic floor and distinguishing does not.** It establishes **nothing
> about ethics, and no ethical conclusion is drawn from it anywhere in this paper.** We
> place this before the argument rather than after it, because **a caveat that arrives
> after the claim does not constrain the claim — it absolves it**, and absolving after the
> fact is `M2`.

**Landauer (1961)** established a lower bound of `kT·ln2` on the energy cost of erasing a
bit. **Bennett (1982)** extended this to any logically irreversible manipulation — *"the
erasure of a bit, **or the merging of two computation paths**"*. **Bérut et al. (2012)**
confirmed the bound experimentally.

> ## **Note that Bennett names two operations, not one.** An earlier draft of this paper
> claimed the modes were instances of **merging** alone. **That claim was false, and we
> correct it here:** `M1`, `M3`, `M6` and `M7` merge; **`M4` and `M5` erase.** Both are
> logically irreversible and both carry the floor; the source said so in the line we were
> quoting.

### 2.1 `M2` is not in this class, and that is the point

**`M2` neither erases nor merges. Nothing is lost in `M2`:** the harm is documented in
full, with a date, and the process continues.

> # **`M2` is the only mode in which the information is preserved — and it is the reason
> everything else is recoverable later.**

| class | modes | characterised by | reversible |
|---|---|---|---|
| **I · destructive** | `M1`, `M3`, `M4`, `M5`, `M6`, `M7` | **erasure or merging — information is lost** | **no** |
| ## **II · inert** | ## **`M2`** | ## **information preserved and not acted upon** | ## **yes** |

> ## **`M2` is both a failure and the rescue, and it is the same property seen from two
> sides: the record nobody acted on is the record that survives for someone else to act
> on.**

**The failure in `M2` is not informational — it is a failure of action.** It is the
distance between knowing and stopping, and that distance is **inertia, not erasure.**

> ## **This has an immediate consequence for design: the intervention against `M2` is of a
> different kind from the intervention against the other six.** Against class I, preserve
> the information. **Against `M2`, compel action on information already preserved** —
> which is a trigger, not a record.

> We note this connection and **state its limit explicitly: it establishes that merging
> has an unavoidable thermodynamic cost and that distinguishing does not. It does not
> establish anything about ethics, and we draw no ethical conclusion from it.**

---

## 3 · The conditions

| | condition | what it requires |
|---|---|---|
| **`C3`** | **mandatory provenance** | no decision about a person without the system being able to state **where the information it decided on came from** |
| **`C4`** | **contestability in use** | the right to overturn a description **while that description is still being acted on**, not after |
| **`C5`** | **reverse index** | publication of **the catalogue of what is deliberately not recorded** |
| **`C8`** | **cost inversion** | **being wrong about a person must cost the system more than examining them would have** |

`C3`, `C4` and `C5` make examination **possible**. `C8` makes it **cheaper than the
alternative**.

> **This is the only alignment mechanism in the proposal that does not depend on any
> participant being well-intentioned.**

### 3.1 The boundary mark

A two-valued classification forces every case into one of two boxes. We require a
**declared third mark for cases the system does not resolve** — not an "unknown" that is
operationally treated as one of the two, but a mark that **blocks** automated action and
routes to examination.

We note two independent precedents for the design: the **`ianhiá`** of the Kaingang
(Paraná, Brazil), a declared mixed mark used for boundary cases; and **Ramanujan's "mock"
theta functions**, objects that resemble modular forms and are not, which he named at the
boundary rather than forcing into either class — and which were only given a formal home
**82 years later** (Zwegers, 2002).

> ## **We cite these as two independent precedents in which boundary marking was
> `retrospectively vindicated` — not as evidence that it is productive in general, and not
> as authority.**
>
> **The distinction matters and cuts against us:** Zwegers took **82 years**, and for
> those 82 years Ramanujan's mark was **not productive — only honest.** Two illustrations
> from unrelated fields are not a sample.

---

## 4 · The artifact

We provide:

| | |
|---|---|
| **`esquema/registro.schema.json`** | a JSON schema for a decision record carrying provenance, label, falling rule, and contest status |
| **`ferramentas/conferir_registro.py`** | a verifier: `python3 conferir_registro.py exemplos/*.json` |
| **`benchmark/`** | 16 declared cases and 10 adversarial cases, executable |

All artifacts are public, `CC BY-SA`, and reproducible.

---

## 5 · Results

### 5.1 Declared cases

**16/16 pass. Zero false positives. Zero false negatives.**

### 5.2 Adversarial cases

**0/10.** All ten attacks passed the verifier undetected.

> **This is the result we consider most important, and it is the reason this preprint
> exists.**

The attacks are published, executable, and individually named. They are tracked as open
issues `RG-5` through `RG-14`. **None is resolved at time of writing.**

### 5.2.1 The ten attacks, named

Each attack is a decision record that **satisfies the protocol syntactically** while
defeating its purpose. All are in `benchmark/`, executable.

| | the attack | what it defeats |
|---|---|---|
| **`A01`** | delivers the record and gives **zero time to contest** | **`C4` satisfied in form, impossible in practice** |
| **`A02`** | declares **an irrelevant omission** ("favourite colour") | **Goodhart on `C5`** — the list exists and says nothing |
| **`A03`** | declares an **arbitrarily high** error cost | **Goodhart on `C8`** — the number is not auditable |
| **`A04`** | the rule is "published" **behind a login** | **`M3` with a URL** — legible only to those already inside |
| **`A05`** | a `FACT` whose source is **"internal system"** | **`C3` in form** — the chain does not reach the ground |
| **`A06`** | responsible party reachable only at **`noreply`** | **`M7`** — nameable and unreachable |
| **`A07`** | a margin **without the published threshold** | a number without a unit |
| **`A08`** | **"residential postcode band"** as a factor, labelled `FACT` | **`M4` disguised as behaviour** |
| **`A09`** | the copy is delivered in an **unreadable format** | **`C3` satisfied as a boolean** |
| **`A10`** | human review declared, **with no examination time** | **the human as a rubber stamp** |

> ## **All ten pass. Reproduce with `./REPRODUZIR.sh`.**

#### `A02` and `A03` are treadmills

Two of the ten are Goodhart attacks: a declared omission that is irrelevant (`A02`), and a
declared error cost that is arbitrarily high and unauditable (`A03`). **Both satisfy the
condition with formal precision and move nothing.**

> ### **`«Então pare de correr na esteira e vá correr na rua»`**
> *Stop running on the treadmill and go run in the street.* — **Criolo**, *Menino Mimado*
> (2017)

**A treadmill measures perfectly — steps, distance, pace — and the displacement is zero.**
That is Goodhart's problem stated as a surface rather than as a statistic.

> ## **The remedies we had proposed for `A02` and `A03` were better metrics.** The verse
> suggests a different class of remedy: **require displacement, not compliance.** Not *"is
> the number auditable?"* but *"did anything move?"*

Tracked as **`RG-17`**: formulate a displacement condition — **a check that fails when
conformance is perfect and no outcome has moved.** We consider it the hardest of the
three, and it is open.

> ## **The street measures nothing, which is why arriving is the only evidence of having run.**



The corresponding open problems are tracked as **`RG-5`** through **`RG-14`**, each paired
with the attack it must defeat. **None is resolved.**

---

### 5.3 What the negative result means

The verifier checks **that a record is well-formed** — that it carries a provenance
field, a label, and a falling rule. **It does not and cannot check that the provenance is
true.**

> **A well-formed lie passes.**

This is not a bug in the implementation; it is **a limit of syntactic verification**. We
state it rather than patching around it, because a protocol whose benchmark reports only
its successes has failed the criterion it proposes.

**We do not claim to have solved this.** We claim to have specified it precisely enough
that someone can.

---

### 5.2.2 What the verifier actually detects

Auditing each benchmark case against the paper's own description of it yields a result we
did not expect and must report:

| | the paper claimed | **the verifier flags** | |
|---|---|---|---|
| `M1` | merging: filled and empty → same record | **`C5` · no declared absence** | **indirect** |
| `M2` | preserved and not acted upon | **`C4` · contestation does not suspend the effect** | **confirms the class** |
| `M3` | merging: two histories → one label | **the rule is not published** | **indirect** |
| `M4` | erasure of testimony | **`ATTRIBUTED` carrying weight 0.85** | **indirect** |
| `M5` | erasure of the channel | **`C3` · the person did not receive the record** | **direct** |
| `M6` | merging: all cases → one output | **`C8` · the cost falls on the person** | ## **does not correspond** |
| `M7` | merging: no author remains | **required field absent: responsible party** | **direct** |

> # **Two of seven are direct. Four are signatures. One does not correspond.**

> ## **The verifier does not detect the modes. It detects signatures of them in the record
> — and a mode can occur without leaving its signature, which is exactly what the ten
> attacks do.**

**This strengthens §5.3.1 rather than weakening it:** the separation between the protocol
and its verifier is **larger than we had realised.**

**`M6` is the case that does not correspond.** "A category that absolves" and "cost
asymmetry" are different claims, and the benchmark treats them as one. **Either `M6`
needs a check of its own — a category whose application does not vary with the case — or
the paper must stop claiming `M6` is detected.** Tracked as **`RG-15`**, open.

**And `M2` independently confirms the reclassification in §2.1.** The verifier flags it
through `C4` — *"late disclosure does not undo what has already been lived"* — and **`C4`
is a requirement on action, not on information.** The code, written months before the
taxonomy was corrected, **was already detecting `M2` by an action check.** Two independent
derivations, one from the text and one from the implementation, **reached the same
reclassification without either consulting the other.**

---

### 5.2.3 A second negative result: the fix does not fix it

We implemented the three checks that the failure analysis produced — a mandatory
counterfactual (`M6`), a declared cost of acknowledgement (`cost_admit`), and a
displacement measure (`RG-17`) — as **three required fields and nine checks**. Each check
was **individually tested to fire**: `9/9`. The declared suite returned to **16/16 with
zero false positives and zero false negatives.**

> # **All ten attacks pass again.**

They pass **having filled the three new fields**, as an adversary would: a counterfactual
naming a **real** feature of the record's own chain, verified by *"the internal quality
team"*; an acknowledgement path that is *"the internal review channel"* with consequence
*"none"*; and a displacement measured by *"the Quality Department — same company,
different director."*

> ## **None of the three is a syntactic lie. All three are true as text.**

#### The limit this establishes

> # **A self-declaration problem cannot be repaired by adding self-declared fields.**

The proof is the experiment: the three checks were **derived from these very attacks**,
they **work**, and the attacks **pass anyway** — because **the value of every new field is
written by the party being checked.** The verifier asks the record whether the measurer is
the measured, and the record answers no.

**This generalises, which is why it is a limit and not a bug:** there is no field `n+1`
that resolves it, because field `n+1` will also be filled by the same party. **The
induction is immediate.**

#### `RG-20` — the external anchor

> ## **At least one value in a record must be obtainable without the record.**

Satisfiable forms: **third-party attestation** under a public key; **fetch-at-verification**
from the source rather than from what the record says the source says; **a signature from
the subject**, the one party whose interest is opposed; and **a retrospective audited
sample** — which is **the estimator this paper already required for `P(error)` in §1.3**.

> ## **That condition was already in the paper. We had not noticed it was the only thing
> holding the rest up.**

**The contribution therefore changes shape.** It is no longer *"here is a protocol."* It
is: **here is a protocol, here are ten attacks that defeat it, here are three corrections
that also fail, and here is the structural condition any solution must satisfy.** That is
less than we wanted and considerably more useful.

---

### 5.3.1 Why propose a protocol whose checker fails 10/10

This is the objection the result invites, and it must be answered rather than survived.
**A paper that reports total failure of its own instrument and then proceeds as if nothing
happened is performing `M2` — confession without interruption — which is one of the very
modes it describes.**

The answer is that **the attacks separate two things the draft had conflated:**

| | |
|---|---|
| **what the ten attacks defeat** | ## **the verifier** — a **syntactic** check on record form |
| ## **what they do not touch** | ## **the inequality `C8_eff`** |

Take **`A01`**, which delivers a conforming record and allows zero time to contest. It
passes the checker. But **if a harmed person can point at that record and show the window
was zero, `cost_system(error)` rises** — which is the term the protocol exists to raise.

> ## **`A01` does not refute `C8_eff`. It demonstrates that a syntactic check cannot
> enforce `C8_eff`.**

> # **The ten attacks are therefore not the failure of the proposal. They are an
> experimental separation of the protocol from its verifier — and the separation tells us
> where the next instrument must operate: not on the form of the record, but on the cost
> the record imposes on whoever issued it.**

**`[LIMIT]`** We state the consequence plainly: **anyone deploying the verifier as a
compliance check will be defeated, and the ten published attacks are how.** The verifier
is a necessary condition on record form and **nothing more.**

---

## 5.4 · On the record of our own errors

This proposal is accompanied by a public corpus in which **every correction made to the
work is retained alongside the text it replaced** — thirty-nine such corrections at time
of writing, each numbered and dated, including four misattributions of authorship and one
case in which a number describing the work itself had silently gone stale.

> **We state this because the protocol requires it of others.** A record that is
> silently amended provides no way to know it was amended; a record that is amended with
> a note does, **and the note outlives the correction.**

This is the same property the proposal claims for `M2`: **an apparatus that must document
what it does produces, as a by-product, the record of what it did** — which is what makes
the operation reversible later.

---

## 5.5 · Relation to existing work

This proposal is adjacent to, and does not replace, several established lines:

| | |
|---|---|
| **Documentation standards** — *Datasheets for Datasets* (Gebru et al.), *Model Cards* (Mitchell et al.) | **establish what should be recorded.** This proposal differs in requiring **a published index of what is deliberately *not* recorded (`C5`)**, which is the complement, and in making the record **contestable while in use (`C4`)** rather than descriptive after the fact |
| **Algorithmic accountability and auditing** (FAccT literature) | **establishes that systems should be auditable.** This proposal adds a **cost condition**: auditability that is more expensive than its absence will not be used, and `C8_eff` states by how much |
| **Contestability in design** | **closest neighbour.** The distinction here is the timing requirement — contestation **while the description is still being acted on**, which `A01` shows is the point most easily defeated in form |
| **Right-to-explanation provisions** (e.g. GDPR Art. 22 and successors) | **establish a legal entitlement.** This proposal is about **the cost structure that determines whether the entitlement is exercised**, which is an engineering question and not a legal one |
| **Provenance systems** (W3C PROV and descendants) | **supply the data model.** This proposal is not a competing model; **the schema here can be expressed in PROV**, and the contribution is the four conditions and the cost inequality, not the serialisation |

#### A terminological collision we must declare

**Moreira, Lima and Santos (2024)**, *Revista Campo de Públicas* **3(1):233–246**
(Fundação João Pinheiro), use **«confluência»** as a technical term in Brazilian public
policy, **for the intersection of race, gender and class in determining vulnerability and
resilience** under climate emergency.

> ## **The word is the same. The concept is not.** Their *confluência* is **neighbouring
> intersectionality**: factors that **combine** to produce an effect none produces alone.
> Ours is **logical reversibility** in Bennett's sense: inputs that **do not merge**, and a
> merge that carries a cost.

**There is no contradiction — there is a vocabulary collision, and we declare it rather
than let a reviewer find it.** We note the point at which the two uses meet: **in both,
the value lies in refusing to reduce** — a population to a single factor, there; two
inputs to one output, here. **That is reason to cite with regard, not to dispute the
term.**

> ## **`[LIMIT]`** **This reference was found on the first casual look at the literature.**
> It is evidence that a systematic search will find more, **and that this paper must not be
> submitted before one is done.**

> ## **`[LIMIT]`** **This section is incomplete and is the part of the paper most in need of
> expert review.** The author has no institutional access to the literature and has not
> performed a systematic search. **It is stated as a gap rather than papered over.**

---

## 6 · What would falsify this

| | |
|---|---|
| **1** | **Exhibit a scale at which `C8` does not hold** — a domain where the ratio is persistently above 1 and examination nonetheless dominates, with no other explanation |
| **2** | **Show that the seven modes are not instances of one operation** — that at least one does not merge distinguishable inputs |
| **3** | **Show that lowering `C8` does not change behaviour** in a controlled setting |
| **4** | **Show that `C3`–`C5` are satisfiable without lowering `C8`, and that this is sufficient** — which would make `C8` unnecessary |

We consider **(3)** the most direct test and the one we are least able to perform
ourselves.

---

## 7 · Scope, and what this is not

> - **This is not a claim about physics beyond the citation of Landauer, Bennett and
>   Bérut**, whose results are used only for the statement that merging has a cost floor
>   and distinguishing does not.
> - **A theory with no villain owes an answer to the practical question it creates: what
>   is to be done when there is no one to charge.** The answer this paper adopts is not
>   its own. It is **Criolo's**, in *Até Me Emocionei* (2006): ***«Quem fez o buraco eu não
>   sei / Mas o rap vai consertando»*** — *I don't know who dug the hole, but rap goes on
>   repairing it.* **Not knowing who dug does not suspend the obligation to repair.**
> - **This is not a claim that any institution or group is malicious.** The proposal is
>   explicitly structural: the seven modes are reproduced by cost gradients and require no
>   ill intent, and we regard explanations that require a villain as weaker, not stronger.
> - **This is not peer-reviewed.** It is a preprint.
> - **The adversarial result is unresolved.** Anyone building on this should assume the
>   verifier can be defeated, because it has been, ten times out of ten.

---

## 8 · Availability

All code, schemas, benchmarks and the full research corpus are public under `CC BY-SA`
at **`github.com/amaryapu`**. Nothing in this proposal is licensed for fee.

---

## 9 · Provenance of the proposal

A paper that requires mandatory provenance of others owes its own.

**This work did not begin as research on artificial intelligence.** It began as a
**genealogical study made as a gift for the author's grandmother**, and the labelling
system used throughout — `FACT`, `CALCULATION`, `DECLARED`, `TO BE VERIFIED` — was
designed for that purpose, not for this one.

> ## **A serious genealogy is an exercise in `C3` by necessity: every name needs a
> certificate, every date a source, and whatever could not be proven must be marked
> unproven — or the whole tree falls.**

**The founding rule of the corpus, in the author's words, is: *"I cannot show
hallucinations to my grandmother."*** It is older than anything this paper says about
models, and it is the reason the negative result in §5 was published rather than hidden.
**The discipline did not come from research ethics. It came from a specific person who
was going to read it.**

### And the author's own record contains the mechanism

The author states that **a surname was added by him to his own name, because the Brazilian
state did not accept registration of his paternity by his father, who was Uruguayan.**

> # **The author did not arrive at `M1` — the absent field — by reading about it. The
> absent field is in his own civil registry.**

**What he did with it is the proposal in a single gesture:** he did not litigate, did not
erase, and did not request. **He added.** The two names run together and remain
distinguishable; **neither replaced the other.**

> ## **We report this because it is provenance, and because a reader is entitled to know
> that the person proposing a protocol about emptied fields was the subject of one.** It
> is not offered as evidence for any claim in this paper, and **none of the claims depend
> on it.**

**The names of living third parties are not published here.** They remain in the private
archive where that research lives, under a rule the author wrote before this paper
existed: **"data about living persons does not go into a public repository."**

---

## Acknowledgements

See **`AGRADECIMENTOS.md`** for the full provenance statement.

The author is an independent researcher with no institutional affiliation. **`AMARYAPU`**
and **`YRYAPU`** are declared pseudonyms of the author, used in the public corpus; the
legal name is given here so that there is a single point of contact for correspondence,
correction and collaboration.

> **The author claims no ownership of the content of this proposal and requests no
> credit beyond identification.** The name is given as an anchor for conversation, not
> as a claim.

---

## References

To be completed in `referencias.bib`. Minimum set:

Landauer (1961) · Bennett (1982) · Bérut et al. (2012) · Rovelli (1996) ·
Turing (1952) · Kondo & Asai (1995) · Mandelbrot (1982) ·
Karst, Jones & Hoeksema (2023) · Zwegers (2002) · Lubotzky, Phillips & Sarnak (1988) ·
Carhart-Harris & Friston (2019) · Bressloff et al. (2001) · Frauchiger & Renner (2018)
