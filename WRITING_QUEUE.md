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

## Priority queue (expansion phase, Days 9–15)

### Articles

1. **Tai Chi for stress / mental health** — evidence-focused page (mirror the
   older-adults page), NCCIH/Harvard sourced. ✅ done 2026-08-25 (pass 2)

### Glossary entries (one per concept, full schema)

1. **Yang Sheng (養生, nourishing life)** ✅ done 2026-08-26 (night) — added
   alongside the sleep article (the article's three-registers section references
   it).

## Completed (this batch, keep for reference)

- 2026-08-27 (night): tai-chi-posture-alignment (article, vertical axis) +
  bai-hui + yong-quan + kua (glossary) — closed the vertical-axis body-map
  gap (crown/sole/hips were cited throughout but had no entries or home page).
  Commit 4d8e65e.

## Next recommended (remaining strengthening backlog)
- History timeline page (concentrated "when did each practice/idea emerge"). ✅ done 2026-08-25 (pass 2)
- Pronunciation & tone-mark guide. ✅ done 2026-08-25 (pass 2)
- HowTo schema on beginner-session + 24-form pages (`howto:` frontmatter). ✅ done 2026-08-25 (pass 3)
- Author/reviewer bios for stronger E-E-A-T. ✅ partial — team.md added; per-article named authors still pending (deliberate: uses "Editorial Team" consistently)
- Tai Chi for stress / mental health (evidence-focused page). ✅ done 2026-08-25 (pass 2)
- Tai Chi for back pain / mobility (evidence page). ✅ done 2026-08-25 (pass 3)
- Tai Chi for sleep / insomnia (evidence page). ✅ done 2026-08-26 (night)

## Completed (this batch, keep for reference)

- 2026-08-26 (pass 4, manual): eight-methods article (Thirteen Postures);
  tai-chi-for-conditions article (evidence map); fa-jin + xiao-zhou-tian
  glossary; tai-chi-principles eight-methods hook; og:type fix + Article
  schema image fix. Build 0/0, 83 URLs, 290 JSON-LD, 0 invalid.
- 2026-08-26 (night): tai-chi-for-sleep (article) + yang-sheng (glossary) —
  closed the sleep/insomnia evidence gap + the nourishing-life concept gap.
  Commit 6c13904.
- 2026-08-25 (pass 2): OG/Twitter meta + og:image + favicon; visible byline;
  team.md; history-timeline; pronunciation-guide; tai-chi-for-stress;
  21 description fixes. Commit a584616.
- 2026-08-25 (night): meditation-for-tai-chi (article) + li-vs-jin (article)
  + li (glossary) + hui-yin (glossary) — closed the "still side of tai chi"
  gap and the li/jin force-distinction gap, plus the perineum body-map entry.
- 2026-08-24 (strengthening): learning-path + common-mistakes pages; site-wide
  BreadcrumbList + HowTo schema support in main.html — SEO/AIO/EEAT deepening.
- 2026-08-24 (night): jin (article + glossary); tai-chi-for-older-adults
  (article) — closed the undefined-"jin" concept gap + added the
  highest-E-E-A-T evidence page (balance/falls).
- 2026-08-23 (night): silk-reeling (article + glossary); push-hands
  (article + glossary) — filled the tai chi signature-movement gap (spiral
  power) + the partner-practice gap.
- 2026-08-23 (manual): yi-jin-jing (article + glossary); tai-chi-24-form
  (article) — filled the practice layer (tendon-stretching qigong + the
  world's most practiced tai chi form).
- 2026-08-23: meridians (article) + jingluo (glossary); wu-qin-xi (article +
  glossary) — filled meridian concept gap + "oldest named qigong" practice gap.
- 2026-08-22: liu-zi-jue (Six Healing Sounds) — new article + glossary entry.
- 2026-08-21: yin-yang (pillar article), baduanjin deepened to full routine
  guide (article).
- 2026-08-20: what-is-qi (article), what-is-dantian (article) — foundation
  deep-dives, both expanding existing glossary entries.
- 2026-08-19: tai-chi-beginners-first-session (article), tai-chi-vs-qigong
  deepened (article).
- 2026-08-18 (day): san-guan, xing-yi-qi, ming-men, lao-gong (glossary).
- 2026-08-18: neigong (article + existing glossary deepened), rooting
  (article + glossary gen/chen).
- 2026-08-17: tai-chi-five-styles (article + glossary tai-chi-styles), wuji
  (article + glossary).
- 2026-08-16: dao-yin (article + glossary), three-treasures (article +
  glossary san-bao), song (article + glossary).
- 2026-08-16 (earlier): 10 articles + 13 glossary + site scaffold, pushed.

## Post-writing checklist (every night)

- [x] `mkdocs build --strict` → 0 error 0 warning
- [x] JSON-LD valid (json.loads) on all new articles
- [x] New pages added to `mkdocs.yml` nav
- [x] commit + push (remote token method)
- [x] nightly report written
- [x] THIS queue file updated (move done → Completed, mark next)
- [x] report sent to user (WeChat)
