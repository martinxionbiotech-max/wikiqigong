# Writing Queue — WikiQigong

This file is the single source of truth for what to write next. The nightly
production job (cron, 02:00 Asia/Shanghai) reads this file, writes the top
1–3 items, then updates this file (moves done items to the bottom under
"Completed").

## Rules (from brief + editorial-standards.md)

- **Quality > quantity.** 1–3 articles/night. Never force numbers.
- Health wording: "may support / may help / has been studied for /
  traditional practitioners often describe." NEVER cure/treat/guarantee.
- Three registers: historical fact / traditional interpretation / modern
  explanation — clearly separated.
- Every article: `description` frontmatter, TL;DR block, direct-answer H2s,
  ≥1 table, FAQ (5+ Q), Article+FAQPage JSON-LD, 3–8 internal links,
  1–3 authoritative external links (NCCIH/Harvard/PubMed).
- Every glossary entry: full schema per GLOSSARY_SCHEMA.md (chinese, pinyin,
  english, literal, category, related, 7 body sections).
- After writing: `mkdocs build --strict` must be 0 error 0 warning.
- Add new pages to `mkdocs.yml` nav. Verify JSON-LD with json.loads.
- Commit + push (see MEMORY.md GitHub auth notes: use remote OpenCode token
  via `/file/content` API → one-time push URL).
- Write nightly report to `reports/nightly/YYYY-MM-DD.md`.

## Priority queue (foundation phase, Days 1–15)

### Articles
1. **Tai Chi for Beginners: A First Session** (practice) — a safe, concrete
   first 20-minute practice.
2. **Qigong vs Tai Chi (deep dive)** — expand existing comparison with more
   nuance (already have tai-chi-vs-qigong.md; can deepen).

### Glossary entries (one per concept, full schema)
1. san-guan (三關, the three gates)
2. xing (形, form/shape) vs yi (意, intention) vs qi (氣) — the "three internal
   harmonies"
3. ming-men (命門, life gate)
4. lao-gong (勞宮, the palm point)

## Completed (this batch, keep for reference)

- 2026-08-18: neigong (article + existing glossary deepened), rooting
  (article + glossary gen/chen).
- 2026-08-17: tai-chi-five-styles (article + glossary tai-chi-styles), wuji
  (article + glossary).
- 2026-08-16: dao-yin (article + glossary), three-treasures (article +
  glossary san-bao), song (article + glossary).
- 2026-08-16 (earlier): 10 articles + 13 glossary + site scaffold, pushed.

## Post-writing checklist (every night)

- [ ] `mkdocs build --strict` → 0 error 0 warning
- [ ] JSON-LD valid (json.loads) on all new articles
- [ ] New pages added to `mkdocs.yml` nav
- [ ] commit + push (remote token method)
- [ ] nightly report written
- [ ] THIS queue file updated (move done → Completed, mark next)
- [ ] report sent to user (WeChat)
