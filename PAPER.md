---
title: "Examination Cost as an Alignment Variable"
subtitle: "A decision-record protocol, a verifier, and ten adversarial attacks that all succeeded"
author: "Hirapius Jupiter Tolkien Mocelin (AMARYAPU / YRYAPU)"
status: PREPRINT DRAFT — not submitted
---

# Examination Cost as an Alignment Variable

### A decision-record protocol, a verifier, and ten adversarial attacks that all succeeded

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

### 1.2 Why dimensionlessness matters, and what it does not license

A dimensionless ratio applies across scales **because the unit cancels**, not because of
any similarity between the systems compared. This is the same reason the Reynolds number
(inertial over viscous forces) governs flow regime in a pipe and in a river, and the same
reason `φ` recurs across scales: `a/b = (a+b)/a` has no unit.

**We claim only this.** We do **not** claim that institutions, brains, galaxies or
ecosystems are "fractally similar," and we treat all such claims as out of scope.

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
| `M2` | **confession without interruption** | the harm is recorded in full **and the process continues** |
| `M3` | **reclassification** | two distinct histories produce **one label** |
| `M4` | **witness disqualification** | testimony is discarded **by credential, not by content** |
| `M5` | **transmission interruption** | the channel is cut, **and the record of what it carried with it** |
| `M6` | **the absolving category** | a category that explains everything **and therefore requires no examination** |
| `M7` | **cost delegation** | the decider and the executor are separated **until no author remains** |

**Landauer (1961)** established a lower bound of `kT·ln2` on the energy cost of erasing a
bit. **Bennett** extended this to any logically irreversible manipulation — *"the erasure
of a bit, **or the merging of two computation paths**"*. **Bérut et al. (2012)** confirmed
the bound experimentally.

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

> We cite these as **evidence that boundary marking is productive, not as authority.**

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
