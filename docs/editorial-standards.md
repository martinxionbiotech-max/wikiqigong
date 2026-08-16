# Editorial Standards & E-E-A-T Policy

This document is the **quality contract** for every page on the site. It
exists to make the site trustworthy — for human readers, for Google, and for
AI engines that cite content. New content that does not meet this bar should
be revised, not published.

---

## What E-E-A-T means for us

E-E-A-T = **Experience, Expertise, Authoritativeness, Trust.** For a knowledge
site on Chinese mind–body practices, it translates into concrete commitments:

### Experience
- Ground abstract concepts in what practice actually *feels* and *does*.
- Include practical guidance (a beginner session, a posture, a breath) wherever
  it fits — not just theory.
- Write from the reader's seat: "what will I do, and what will I notice?"

### Expertise
- Every Chinese term carries its characters, pinyin with tones, and literal
  meaning — so claims are traceable, not exotic.
- Distinguish clearly between: (a) historical fact, (b) traditional
  interpretation, (c) modern scientific reading. Never blur them.
- Cite real, checkable sources for research claims.

### Authoritativeness
- Every article names an author and reviewer (even "Editorial Team") and a
  publication/update date.
- A visible **editorial policy** and **disclaimer** appear site-wide.
- Where we are not experts (medicine, diagnosis), we say so plainly and point
  to authoritative sources.

### Trust
- No mystical overclaiming, no invented history, no invented research.
- Health wording is strictly hedged (see below).
- "Who should be cautious" sections signal that we care about safety, not
  clicks.

---

## Health & claims wording (mandatory)

**Allowed:**
- "may support", "may help", "may be associated with"
- "has been studied for", "research suggests", "some studies report"
- "traditional practitioners often describe", "in traditional teaching"

**Forbidden:**
- "cure", "treat", "heal", "guarantee", "proven to"
- Any claim that a practice prevents or reverses a specific disease
- Any dosage/diagnosis/prescription language

**Rule:** when discussing a health effect, follow the claim with its evidence
strength ("studies are preliminary", "evidence is mixed") and a pointer to
authoritative sources (NCCIH, PubMed-indexed studies, Harvard Health, etc.).

---

## The "three registers" rule

Every concept that has a Chinese origin must be presented in three clearly
separated registers:

1. **Historical fact** — what the texts say, roughly when, with appropriate
   uncertainty ("compiled around the Han dynasty", "dating from the Tang to
   Song").
2. **Traditional interpretation** — how classical practitioners understood it,
   labeled as traditional.
3. **Modern explanation** — a grounded, non-mystical reading for today.

This is the single most important guardrail against both mystical overclaiming
*and* cultural erasure. Do not skip register 3; do not present register 2 as
register 1.

---

## Accuracy rules

- **Never invent history.** If a date or dynasty is uncertain, say so.
- **Never invent research.** Every citation must be a real, verifiable study or
  authoritative source. When web verification is unavailable, cite only from
  well-established, widely-indexed work and flag it for verification.
- **Characters and pinyin must be correct**, including tone marks.
- **When unsure, hedge.** "Roughly", "approximately", "traditional accounts
  describe" are signs of rigor, not weakness.

---

## Structure standards (SEO + AIO/GEO)

Every article must provide, where applicable:

1. **TL;DR block** near the top (1–4 bullets) — the direct answer AI engines
   extract and cite.
2. **Direct-answer openings** — each H2 section answers its question in the
   first 1–2 sentences.
3. **At least one table** (comparison, categories, or key facts) — tables are
   cited ~35% more by AI engines.
4. **FAQ section** (5+ questions) with matching **FAQPage JSON-LD**.
5. **Article/BlogPosting JSON-LD** with headline, author, dates, publisher.
6. **Internal links** to 3–8 related pages (parent, siblings, glossary).
7. **External links** to 1–3 authoritative sources (research, NCCIH, etc.).
8. **`description` frontmatter** (100–160 chars, keyword + benefit).

---

## JSON-LD contract

Every article page emits two blocks:

1. **Article** (or BlogPosting): headline, description, author, datePublished,
   dateModified, publisher (Organization), mainEntityOfPage.
2. **FAQPage**: mainEntity array of Question/acceptedAnswer pairs, mirroring
   the visible FAQ section exactly (no answers that aren't on the page).

Glossary pages emit **DefinedTerm** / **Article** and link terms into the
knowledge graph. See `data/glossary/README.md` for the graph schema.

---

## Voice

- Plain English first; Chinese second (characters + pinyin + translation, then
  plain-English explanation).
- Do not sound translated. Do not pile up Chinese terms.
- Conversational but precise. Short sentences for definitions; longer sentences
  for context.
- A person with zero Chinese background must understand the first sentence of
  every concept.
