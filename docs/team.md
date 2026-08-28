---
title: Editorial Team & Review
description: Meet the WikiQigong editorial team — who writes, fact-checks, and reviews every page, and how corrections are handled.
type: page
author: "Master Wong"
reviewed_by: "WikiQigong Editorial Team"
date_published: "2026-08-25"
date_modified: "2026-08-25"
---

# Editorial Team & Review

**Who is responsible for what you read — and how you can hold us to it.**

WikiQigong publishes under a named editorial structure, not an anonymous
byline. Every page is the product of a fixed pipeline of roles, each with a
defined responsibility. This page names those roles, what qualifies them, and
how errors get caught and corrected.

---

## Why this matters

For a site about Chinese mind–body practice, trust rests on three things:

1. **The Chinese is right.** Characters, pinyin (with tone marks), and dating
   are traceable and correct.
2. **The history is honest.** We say "compiled around the Han dynasty," not
   "ancient secrets." Where a date is uncertain, we say so.
3. **The health claims are hedged.** We say "may support," never "cure."

An editorial structure is how we make those three things *checkable* rather
than promised. See the full contract in [Editorial Standards](editorial-standards.md).

---

## The team

| Role | Responsibility | What qualifies them |
|------|----------------|---------------------|
| **Master Wong — Lead Author** | Writes the core guidance and practice instructions; sets the voice and the "three registers" rule | 15 years of dedicated practice and teaching in Tai Chi, Qigong, and Chinese mind-body arts |
| **Content Editor** | Drafting and plain-English reconstruction of Chinese concepts | Bilingual writing; the person who turns a concept into clear English without stripping its context |
| **Fact Checker** | Verifying characters, pinyin, tone marks, dates, and citations | Working knowledge of classical and modern Chinese source texts |
| **Reviewer** | Second pass on health wording and the three-registers rule | Independent read; the one who catches "may support" vs "cure" drift |

We are **not medical professionals**, and we do not claim to be. Where a topic
touches medicine, diagnosis, or treatment, the reviewer's job is to make sure
we say so plainly and point to authoritative sources — not to speak beyond our
expertise.

---

## How a page gets made

Every page moves through the same five steps before it ships:

1. **Draft** — the content editor reconstructs the concept in natural English,
   preserving characters, pinyin, and literal meaning.
2. **Verify** — the fact checker confirms every Chinese term, tone mark, date,
   and citation against sources.
3. **Review** — the reviewer checks health wording and that the three registers
   are clearly separated.
4. **Publish** — Master Wong signs off; the build must pass
   `mkdocs build --strict` with 0 errors, and the page ships with structured
   data (Article + FAQPage, or DefinedTerm for glossary entries).
5. **Maintain** — pages carry a `date_modified` stamp and are revisited as the
   evidence or our understanding improves.

Every page carries a visible byline (author, reviewer, publication and update
dates) and a link to this page, so the accountability is not buried.

---

## Corrections

We correct factual errors promptly and mark the change. If you spot a wrong
character, a wrong tone mark, a wrong date, or a citation that does not check
out:

- **Open an issue** on
  [github.com/martinxionbiotech-max/wikiqigong](https://github.com/martinxionbiotech-max/wikiqigong)
  — every change is committed publicly, so you can see exactly what was edited
  and when.
- Tell us the page, the claim, and (if you have it) the correct source. We
  verify and, where warranted, fix the page and note the correction in the
  commit.

---

## What we will not do

- **Invent history.** No invented dates, texts, or lineages.
- **Invent research.** Every citation must be real and verifiable; where
  evidence is thin, we say it is thin.
- **Overclaim health.** No "cure," "treat," "proven to," or dosage language,
  ever.

That discipline is the whole point. It is what separates a learning resource
from a content farm.

---

## Where to go next

- [Editorial Standards](editorial-standards.md) — the full quality contract.
- [About WikiQigong](about.md) — why this site exists.
- [Medical Disclaimer](disclaimer.md) — the health-wording rules.
- [Glossary](glossary/index.md) — the knowledge graph this team maintains.
