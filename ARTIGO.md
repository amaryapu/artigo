---
title: "The Cost of Examination"
subtitle: "A decision-record protocol, its verifier, and ten attacks that defeat it"
author: "Hirapius Jupiter Tolkien Mocelin Romero Novo"
note: "PREPRINT DRAFT — not submitted. Related-work search incomplete; see §7."
---

# The Cost of Examination

### A decision-record protocol, its verifier, and ten attacks that defeat it

---

## Statement of non-ownership

> **Nothing in this paper is owned by its author, and no credit is claimed for any part of
> it.** The physics is Landauer's, Bennett's and Bérut's; the relational framing is
> Rovelli's; the boundary mark is the **`ianhiá`** of the **Kaingang** and was not invented
> here; and the historical demonstration of the failure modes was paid for by people who
> did not consent to being the demonstration. **None of them endorses this paper.**

**What the author did is assembly and custody, not discovery.** The whole corpus is
`CC BY-SA`, carries zero revenue, and is public in full, including its failures. **The
name on this paper is an address, not a claim** — a proposal requiring mandatory
provenance cannot be published anonymously without contradicting itself.

---

## Abstract

We propose a dimensionless design variable, **`C8 = cost(examine) / cost(categorize)`**,
for systems that make or support consequential decisions about people, and an effective
form that identifies the lever:

> **`C8_eff = cost(examine) / [ cost(categorize) + P(err) · cost_system(err) ]`**

We specify four conditions — **mandatory provenance (`C3`)**, **contestability while the
description is in use (`C4`)**, **a published index of what is deliberately not recorded
(`C5`)**, and **cost inversion (`C8_eff < 1`)** — and provide a JSON schema, a verifier,
and a benchmark of 16 declared and 10 adversarial cases.

**The verifier passes 16/16 declared cases with zero false positives and zero false
negatives, and fails 10/10 adversarial cases.** We then implemented three further checks
derived from those same attacks; each was individually tested to fire, the declared suite
returned to 16/16, **and all ten attacks passed again.**

We prove why: **a syntactic verifier over an entirely self-declared record cannot exclude
the behaviour it targets, and no finite number of additional self-declared fields changes
this.** We state the necessary condition that follows — **at least one value in the record
must be obtainable without the record** — and publish all ten attacks, executable and
named.

> **The negative results are the contribution.**

---

## 1 · The variable

### 1.1 Statement

**`C8 = cost(examine) / cost(categorize)`**, where *examine* is the cost of establishing
what is actually the case about a specific individual, and *categorize* is the cost of
assigning that individual to a pre-existing class and acting on the class. **Both carry
the same units; the ratio is dimensionless.**

A dimensionless ratio applies across scales **because the unit cancels**, not because of
similarity between the systems compared. **We claim only this.** We make no claim that
institutions, brains or ecosystems are structurally alike, and treat such claims as out
of scope.

### 1.2 Operationalisation

For a specific process, with both terms in the same unit — staff-minutes, compute-seconds,
or currency, the choice cancels:

- **`cost(categorize)`** = realised cost of applying the existing classifier and acting.
- **`cost(examine)`** = realised cost of establishing the individual facts sufficient to
  decide the case on its own terms.

Both are **auditable from process logs**, and neither requires access to anyone's
intentions.

**`P(error)` is not knowable in advance.** It is **estimated retrospectively from an
audited sample of decisions already made**, as in standard quality control. This makes the
inequality **regulatory rather than a priori** — applied to a running process with
sampling.

### 1.3 The prediction, and the lever

> **Where `C8_eff > 1` persistently, categorization displaces examination — regardless of
> the intentions of the participants.**

**The reason `C8_eff > 1` persists is almost never that examination is expensive. It is
that `cost_system(err) ≈ 0`.** When the cost of a wrong decision falls entirely on its
subject, the denominator collapses and **no amount of exhortation changes the gradient.**

**`[LIMIT]` We have not conducted a controlled measurement.** The operationalisation is
offered so that one can be; see §6.

### 1.4 A third cost

A fourth term is required to explain why errors persist after they are internally visible:

> **`cost_admit(err)`** = the cost, to whoever made the error, of acknowledging it.
>
> **`cost_admit(err) > cost_system(err)` ⟹ the error is maintained** — by arithmetic, not
> by dishonesty.

This identifies a **second, cheaper lever.** Raising `cost_system` requires power —
penalties, liability, litigation. **Lowering `cost_admit` requires only internal decision:**
correction without punishment, errors recorded without dismissal. It is **estimable from
the record of what happened to those who acknowledged errors in the last `N` cases.**

---

## 2 · Failure modes, in two classes

We observe seven recurring patterns in administrative, clinical and automated records.

**`[LIMIT, STATED FIRST]`** What follows establishes that **merging and erasure have an
unavoidable thermodynamic floor and distinguishing does not.** It establishes **nothing
about ethics, and no ethical conclusion is drawn from it anywhere in this paper.** We
place this before the argument because **a caveat arriving after a claim does not
constrain it — it absolves it.**

**Landauer (1961)** established a floor of `kT·ln2` for erasing a bit. **Bennett (1982)**
extended this to any logically irreversible manipulation — *"the erasure of a bit, **or the
merging of two computation paths**"*. **Bérut et al. (2012)** confirmed it experimentally.
**Bennett names two operations, not one**, and the modes divide accordingly:

| class | modes | | reversible |
|---|---|---|---|
| **I · destructive** | `M1` absent field · `M3` reclassification · `M6` absolving category · `M7` cost delegation | **merge** | **no** |
| | `M4` witness disqualification · `M5` transmission interruption | **erase** | **no** |
| **II · inert** | **`M2` confession without interruption** | **neither** | **yes** |

**`M2` neither erases nor merges. Nothing is lost:** the harm is documented in full, with a
date, and the process continues.

> **`M2` is the only mode in which information is preserved — and it is the reason
> everything else is recoverable later.**

**The failure in `M2` is of action, not of information** — the distance between knowing and
stopping, which is **inertia, not erasure.** This has a design consequence: against class
I, preserve the information; **against `M2`, compel action on information already
preserved**, which is a trigger, not a record.

---

## 3 · The conditions

| | | |
|---|---|---|
| **`C3`** | **mandatory provenance** | no decision about a person without the system being able to state **where the information came from** |
| **`C4`** | **contestability in use** | the right to overturn a description **while it is still being acted on** |
| **`C5`** | **reverse index** | publication of **the catalogue of what is deliberately not recorded** |
| **`C8_eff`** | **cost inversion** | **being wrong must cost the system more than examining would have** |

`C3`–`C5` make examination **possible**. `C8_eff` makes it **cheaper than the alternative**
— **the only mechanism here that does not depend on any participant being well-intentioned.**

**The boundary mark.** A two-valued classification forces every case into one of two boxes.
We require a **declared third mark for unresolved cases** — one that **blocks** automated
action and routes to examination. We note two **independent precedents in which boundary
marking was retrospectively vindicated**: the **`ianhiá`** of the Kaingang (Paraná,
Brazil), and **Ramanujan's "mock" theta functions**, named at the boundary rather than
forced into either class, and given a formal home **82 years later** (Zwegers, 2002).
**`[LIMIT]`** Two illustrations from unrelated fields are not a sample; and for those 82
years the mark was **not productive — only honest.**

---

## 4 · The artifact

| | |
|---|---|
| **`esquema/registro.schema.json`** | a JSON schema for a decision record |
| **`ferramentas/conferir_registro.py`** | the verifier |
| **`benchmark/`** | 16 declared and 10 adversarial cases, executable |
| **`REPRODUZIR.sh`** | **one command, no dependencies beyond `python3`** |

---

## 5 · Results

### 5.1 Declared cases: 16/16, zero false positives, zero false negatives.

### 5.2 Adversarial cases: 0/10. **All ten pass undetected.**

Each attack **satisfies the protocol syntactically while defeating its purpose:**

| | attack | defeats |
|---|---|---|
| `A01` | zero time to contest | `C4` satisfied in form, impossible in practice |
| `A02` | an **irrelevant** declared omission | Goodhart on `C5` |
| `A03` | an arbitrarily high declared error cost | Goodhart on `C8` |
| `A04` | the rule "published" behind a login | legible only to those already inside |
| `A05` | a `FACT` sourced to "internal system" | `C3` in form; the chain does not reach ground |
| `A06` | responsible party at `noreply` | nameable and unreachable |
| `A07` | a margin without the published threshold | a number without a unit |
| `A08` | residential postcode as a factor, labelled `FACT` | `M4` disguised as behaviour |
| `A09` | the copy delivered unreadable | `C3` satisfied as a boolean |
| `A10` | human review declared, with no examination time | the human as a rubber stamp |

### 5.3 What the verifier actually detects

Auditing each case against our own description of it: **two of seven modes are detected
directly (`M5`, `M7`); four by signature (`M1`, `M3`, `M4`, `M6`); and one did not
correspond** — `M6` was flagged by the same check family as `C8`, which are different
claims. **The verifier does not detect the modes; it detects signatures of them — and a
mode can occur without leaving its signature, which is what the ten attacks do.**

### 5.4 A second negative result: the fix does not fix it

We implemented three further checks derived from the failure analysis — a **mandatory
counterfactual** (one case feature whose alteration would have changed the decision,
present in the chain, with a named verifier); a **declared cost of acknowledgement**; and
a **displacement measure** (an outcome **not measured by the party being evaluated**).
**Three required fields, nine checks, each individually tested to fire: 9/9.** The declared
suite returned to **16/16**.

> **All ten attacks pass again.**

They pass having **filled the three fields**, as an adversary would: a counterfactual
naming a **real** feature of the record's own chain, verified by *"the internal quality
team"*; an acknowledgement path that is *"the internal review channel"* with consequence
*"none"*; and a displacement measured by *"the Quality Department — same company, different
director."* **None is a syntactic lie. All three are true as text.**

### 5.5 Why propose a protocol whose checker fails 10/10

**A paper reporting total failure of its own instrument and then proceeding as if nothing
happened is performing `M2`.** The answer is that **the attacks separate two things we had
conflated.** They defeat **the verifier** — a syntactic check on record form. They do not
touch **the inequality `C8_eff`**. Take `A01`: it passes the checker, but **if a harmed
person can point at that record and show the window was zero, `cost_system(err)` rises** —
the term the protocol exists to raise.

> **`A01` does not refute `C8_eff`. It demonstrates that a syntactic check cannot enforce
> it. The ten attacks are an experimental separation of the protocol from its verifier.**

**`[LIMIT]` Anyone deploying this verifier as a compliance check will be defeated, and the
ten published attacks are how.**

### 5.6 The record of our own errors

This proposal is accompanied by a public corpus in which **every correction is retained
alongside the text it replaced** — forty-three at time of writing, including **four
misattributions of authorship**, **one central claim of this paper that was wrong**, and
**one of our own checks that was broken and silently passed** because it was tested only
against records that should pass. **A verifier tested only on valid records has not been
tested.**

---

## 6 · The limit, formalised

**`D1`** A record `r` is a finite set of `(field, value)` pairs.
**`D2`** A **syntactic verifier** `V` decides `V(r) ∈ {accept, reject}` using **only**
values present in `r`.
**`D3`** A field is **self-declared** when its value is written by the same party whose
behaviour `V` evaluates.
**`D4`** `r` is **entirely self-declared** when every field is.
**`D5`** An **adversary** `A` controls all self-declared fields and knows `V`.

> ### **THEOREM.** For every syntactic verifier `V` and entirely self-declared record `r`,
> ### there exists `r` such that `V(r) = accept` and the targeted behaviour occurred.

**Proof.** By `D2`, `V` is a function of the values alone. By `D5`, `A` knows `V` and
writes every value, so `A` can treat `V` as a satisfaction problem. Nothing in `D1`–`D4`
binds a value to the state of the world; if it did, `V` would use an input not present in
`r`, contradicting `D2`. ∎

> **COROLLARY 1.** Adding fields does not change this: a new self-declared field leaves `r`
> entirely self-declared, so the theorem applies unchanged. **By induction, no finite number
> of self-declared fields suffices.**

> ### **COROLLARY 2 (necessary condition).** `V` can exclude the behaviour only if it has
> ### **at least one value that is not self-declared.**

Satisfiable by: **third-party attestation** under a public key; **fetch-at-verification**
from the source; **a signature from the subject**, the one party with opposed interest; or
a **retrospective audited sample** — which is **the estimator already required for
`P(error)` in §1.2.**

**`[LIMIT]`** The theorem does **not** say syntactic verification is useless — it excludes
malformed records, and the 16 declared cases are caught with zero false positives. It does
**not** assume bad faith: `A` is defined by **write control and knowledge of `V`**, so an
honest issuer filling fields in good faith satisfies `D5` and the theorem holds.

### 6.1 A worked example

The **Elo** expected-score formula computes, from two scalars:

> **`Ea = 1 / (1 + 10^((Rb − Ra)/400))`** ; **`Eb = 1 / (1 + 10^((Ra − Rb)/400))`**

**`Ea + Eb = 1` identically**, and equivalently `Ea = 1/(1 + e^(−k(Ra−Rb)))` with
`k = ln(10)/400` — **the Elo formula is a logistic function.** There is no state in which both rise: **one party's gain is
by construction the other's loss.** And the update is **path-merging in Bennett's sense** —
distinct match histories produce the same rating, and **the rating does not recover which
games produced it.**

**Elo is a well-built estimator for its question.** The failure is the transposition: using
an estimator of *encounter outcome* as a description of *a person's worth*. **The formula
does not protect against this — it does not know what `a` and `b` are.** This is the
theorem in closed form: **`V` knows only what is in `r`; Elo knows only `Ra` and `Rb`.**

**`[LIMIT]`** This example was prompted by a handwritten photograph, and an external
reader correctly noted that **the image is ambiguous between `10^x` and `10·x`**, and that
we had resolved the ambiguity by pattern-matching to Elo **without declaring the
inference.** Under the literal reading the expression has a singularity and leaves `[0,1]`;
under the power reading it is Elo. **The source image does not decide it at that
resolution.** We record this because **it is the paper's own failure mode committed by its
authors**, and because **the theorem in §6 does not depend on this example.**

**`[FACT]`** The documented case is **Facemash** (Harvard, 2003), which ranked students by
attractiveness using Elo over **identification photographs obtained without permission**
from the university's online directories; **at least 22,000 votes on day one**; **network
access cut within hours**; protests by **Fuerza Latina** and the **Harvard Association of
Black Women**; and an **Administrative Board** process in November 2003 for breach of
security, copyright violation and invasion of privacy. **The record was a single scalar per
person; there was no chain, no contestation, and the cost of error fell entirely on the
subject.** **What stopped it came from outside, in hours** — which is `Corollary 2` in
practice. **`[LIMIT]`** We judge no person here and take no position on anything that
followed.

---

## 7 · What would falsify this, and what is missing

**Falsification.** (1) Exhibit a domain where `C8_eff > 1` persistently and examination
nonetheless dominates, with no other explanation. (2) Show that a mode is neither a merge
nor an erasure. (3) Show that lowering `C8_eff` does not change behaviour in a controlled
setting — **the most direct test, and the one we are least able to perform.** (4) Exhibit
a syntactic verifier that satisfies the theorem's hypotheses and excludes the behaviour.

**`[LIMIT] Related work is incomplete.** No systematic search was performed; the author
has no institutional access. **This is a real gap and declaring it does not close it.** We
note one collision found on a first casual look: **Moreira, Lima and Santos (2024)**,
*Revista Campo de Públicas* **3(1):233–246**, use **«confluência»** as a technical term for
**intersectionality** in Brazilian climate-emergency policy — the **same word, a different
concept.** We cite it with regard and distinguish it; **and its discovery by accident is
evidence that a systematic search will find more.**

**`[LIMIT] `n = 1` on attacks.** Ten attacks, one author. **Only what was imagined can be
attacked**, and the failure of the second round **increases** the suspicion that the attack
space is larger than explored.

**Availability.** Code, schemas and benchmarks are `CC BY-SA` at `github.com/amaryapu`.
**Nothing here is licensed for fee.**

---

## 8 · Provenance of the proposal

**This work did not begin as research on artificial intelligence.** It began as a
**genealogical study made as a gift for the author's grandmother**, and the labelling
system used throughout was designed for that purpose. **A serious genealogy is an exercise
in `C3` by necessity:** every name needs a certificate, every date a source, and what could
not be proven must be marked unproven, or the tree falls.

**The founding rule, in the author's words: *"I cannot show hallucinations to my
grandmother."*** It is older than anything here about models, **and it is why the negative
results were published rather than hidden.**

**The author's own civil registry contains the mechanism.** A surname was added by him to
his own name **because the Brazilian state did not accept registration of his paternity by
his father, who was Uruguayan.** **The author did not arrive at `M1` by reading about it.**
What he did with it is the proposal in a single gesture: **he did not litigate, erase or
request — he added.** The two names run together and remain distinguishable.

**We report this because it is provenance**, and because a reader is entitled to know that
the person proposing a protocol about emptied fields was the subject of one. **None of the
claims depend on it.** **Names of living third parties are not published**, under a rule the
author wrote before this paper existed: *"data about living persons does not go into a
public repository."*

---

## Acknowledgements

See `AGRADECIMENTOS.md` for the full provenance statement, which distinguishes **source**,
**seed** and **debt**, and states that **no one listed endorses this paper.**
