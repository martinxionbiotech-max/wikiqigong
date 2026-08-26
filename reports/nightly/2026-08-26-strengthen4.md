# 2026-08-26 — SEO/AIO/E-E-A-T pass 4 (full scan + gap fill + schema fix)

## Scope

User asked (recurring brief): scan all pushed content, deep-optimize thin/gap
content, add what peer sites miss, audit SEO/AIO config, boost E-E-A-T.

## Pre-flight audit (all green)

- Build `mkdocs build --strict` = 0 err / 0 warn; 79 URLs, 276 JSON-LD blocks, 0 invalid.
- 79 descriptions present, all ≤160 chars, none missing.
- canonical/description/title correct on sampled pages; domain uniform.
- No broken internal links (only benign `/` self-refs in 404.html).
- Local HEAD == origin/main (`06dca20`), working tree clean.

## Gap analysis vs peer sites (NCCIH / Harvard Health / Yang Family / lit reviews)

Identified content peers cover that WikiQigong did not:

1. **Thirteen Postures / Eight Methods & Five Steps** — tai chi's core technical
   vocabulary (peng/lu/ji/an + cai/lie/zhou/kao; five steps). Was only mentioned
   in passing in push-hands/tui-shou.
2. **Fa Jin (發勁, issuing force)** — the distinguishing skill of the internal arts.
3. **Xiao Zhou Tian (小周天, microcosmic orbit)** — classical qigong concept.
4. **Evidence map for specific conditions** — Parkinson's, arthritis/osteoarthritis,
   blood pressure, fibromyalgia (NCCIH-cited) were missing; only sleep/back-pain/
   stress/older-adults evidence pages existed.
5. tai-chi-principles mentioned "six principles" but never linked to the eight
   methods (principles → technique gap).

## What was added

- **New article**: `articles/eight-methods.md` (Thirteen Postures — 8 methods +
  5 steps, with chars/pinyin/gloss table, three registers, health relevance).
- **New article**: `articles/tai-chi-for-conditions.md` (honest evidence map:
  balance/falls strongest; pain/arthritis/BP/Parkinson/fibromyalgia labelled by
  strength). Cites only verified NCCIH/Harvard/Jahnke 2010 sources — no invented PMIDs.
- **New glossary**: `glossary/fa-jin.md` (發勁) + `glossary/xiao-zhou-tian.md` (小周天),
  both full GLOSSARY_SCHEMA.md shape.
- **Enhanced**: `tai-chi-principles.md` — new subsection "From principles to
  technique: the eight methods & five steps" + nav link.

## SEO/AIO schema fixes (main.html)

- **og:type was hardcoded "article"** on every page including site pages
  (about/team/disclaimer/standards). Fixed: `type: page` → `website`, else `article`.
- **Article JSON-LD lacked an `image` field** (needed for rich results/Google
  Discover). Added `"image": <og-image.png>` to the Article schema.

## Wiring

- mkdocs.yml nav: eight-methods under Core Articles; tai-chi-for-conditions under
  Practices; fa-jin under Core Concepts; xiao-zhou-tian under Philosophy.
- overrides/main.html term_map: added Fa Jin / Xiao Zhou Tian (+ aliases).
- llms.txt: added all four pages.
- glossary/index.md: added fa-jin + xiao-zhou-tian rows.

## Build result

- `mkdocs build --strict` = 0 err / 0 warn.
- 83 sitemap URLs (was 79); 290 JSON-LD blocks (was 276), 0 invalid.
- og:type verified correct (website vs article); Article image field present.

## Citation integrity note

web_search was disabled this session. No new PMIDs were invented — the new
evidence page reuses only already-verified sources (NCCIH pages, Harvard Health,
Jahnke et al. 2010 PMC3085832). If live NCCIH condition-list refresh is wanted,
use web_fetch against nccih.nih.gov directly.
