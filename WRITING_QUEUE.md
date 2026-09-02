# Writing Queue — WikiQigong

This file is the single source of truth for what to write next. The nightly
production job (cron, 02:00 Asia/Shanghai) reads this file, writes the top
1–3 items, then updates this file (moves done items to the bottom under
"Completed").

## Rules (from brief + editorial-standards.md)

- **Author convention (mandatory):** every page carries
  `author: "Master Wong"` and `reviewed_by: "WikiQigong Editorial Team"`.
  Master Wong is the site's lead author with **15 years of dedicated practice
  and teaching** in Tai Chi, Qigong, and Chinese mind-body arts. Never use
  "Editorial Team" or "WikiQigong Editorial Team" as the author — that is the
  reviewer, not the author. Articles also carry `date_published` and
  `date_modified`; glossary entries carry `updated`.
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

## Priority queue (expansion phase — 2026-08-28 refresh)

Write in order. 1–3 items/night. Each night, work down this list and move
done items to Completed.

### Tier 1 — Close existing gaps (fast, high-value)

1. ~~**Ba Duan Jin (八段錦) glossary**~~ ✅ done 2026-08-29 (night)
2. ~~**Bagua (八卦) glossary**~~ ✅ done 2026-08-29 (night)
3. ~~**Tuna (吐納) glossary**~~ ✅ done 2026-08-29 (night)
4. ~~**Yi (意) glossary**~~ ✅ done 2026-08-29 (night)
5. ~~**Weilu (尾閭) glossary**~~ ✅ done 2026-08-29 (night)

### Tier 2 — High-search health evidence pages (strong E-E-A-T)

6. ~~**Tai Chi for Arthritis**~~ ✅ done 2026-08-30 (night)
7. ~~**Tai Chi for Blood Pressure**~~ ✅ done 2026-08-30 (night)
8. ~~**Tai Chi for Balance & Fall Prevention**~~ ✅ done 2026-08-30 (day)
9. ~~**Tai Chi for Chronic Pain**~~ ✅ done 2026-08-30 (day)
10. ~~**Tai Chi for Parkinson's**~~ ✅ done 2026-08-31 (night)
11. ~~**Qigong for Cancer Survivors**~~ ✅ done 2026-08-31 (night)

### Tier 3 — Comparisons (search intent is strong)

12. ~~**Tai Chi vs Pilates**~~ ✅ done 2026-09-01 (night)
13. ~~**Tai Chi vs Walking**~~ ✅ done 2026-09-01 (night)
14. ~~**Qigong vs Stretching**~~ ✅ done 2026-09-01 (night)

### Tier 4 — Practice guides & how-to

15. ~~**How to Choose a Tai Chi Teacher**~~ ✅ done 2026-09-02 (night)
16. ~~**10-Minute Morning Qigong Routine**~~ ✅ done 2026-09-02 (night)
17. ~~**Qigong for Beginners: Your First Week**~~ ✅ done 2026-09-02 (night)
18. ~~**Tai Chi Weapons: An Introduction to the Sword**~~ ✅ done 2026-09-03 (night)

### Tier 5 — Core-concept deep dives

19. ~~**The Taiji Diagram (太極圖)**~~ ✅ done 2026-09-03 (night)
20. **Six Harmonies (六合)** — the internal/external harmonies behind xing-yi-qi.

### Glossary entries (one per concept, full schema)

- Every article in the tiers above should ship with its glossary entry where the
  concept does not already have one.

## Completed (this batch, keep for reference)

- 2026-09-03 (night): tai-chi-sword (article) + taiji-diagram (article) —
  closed Tier-4 #18 (the jian sword form: history, what it trains, safety) and
  Tier-5 #19 (the taiji/yin-yang diagram: three registers, the two dots, the
  shared taiji name with tai chi). Build 0/0, JSON-LD valid, nav updated.
  Commit 926cb06.

- 2026-09-02 (night): how-to-choose-a-tai-chi-teacher + 10-minute-morning-qigong +
  qigong-for-beginners-first-week (articles) — closed all three Tier-4 practice
  guides: teacher selection (lineage/red-flags/skill-test), a 10-minute morning
  qigong set (with HowTo schema), and a 7-day beginner on-ramp. Build 0/0,
  JSON-LD valid, nav updated. Commit 9778dc1.

- 2026-09-01 (night): tai-chi-vs-pilates + tai-chi-vs-walking +
  qigong-vs-stretching (articles) — cleared all three Tier-3 comparison pages:
  Pilates (core-strength vs balance/relaxation), Walking (cardio vs
  balance/attention, "different tools different jobs"), Stretching (qigong is
  not just stretching — adds breath/attention/release). Build 0/0, JSON-LD
  valid, nav updated.

- 2026-08-31 (night): tai-chi-for-parkinsons + qigong-for-cancer-survivors
  (articles) — two Tier-2 evidence pages: Parkinson's gait/balance (Li 2012
  NEJM RCT + Yang 2014 meta-analysis, scoped to movement symptoms) and cancer
  survivorship (fatigue/sleep/QoL only, supportive care, strictly hedged,
  NCI PDQ + Zeng 2014). Commit d2f9d6f.

- 2026-08-30 (day): tai-chi-for-balance + tai-chi-for-chronic-pain (articles) —
  the standalone Balance & Fall Prevention page (Wolf 1996 + Li 2005 + Cochrane
  evidence, three balance drills) and the Chronic Pain evidence map
  (fibromyalgia NEJM 2010 trial + low back/neck/osteoarthritis). Cross-linked
  from older-adults, back-pain, and conditions hubs.

- 2026-08-30 (night): tai-chi-for-arthritis + tai-chi-for-blood-pressure
  (articles) — two Tier-2 evidence pages: knee-OA trials (Wang 2009/2016) +
  hypertension relaxation-response evidence, both fully hedged with
  NCCIH/PubMed sourcing.

- 2026-08-29 (night): ba-duan-jin + bagua + tuna + yi + weilu (glossary) —
  closed all five Tier-1 concept gaps (the Baduanjin entry, the 八卦
  eight-trigram citation, the exhale-inhale breathing term, the yi middle
  layer of xing-yi-qi, and the tailbone gate). Commit 9f0e773.

- 2026-08-28 (night): tai-chi-for-focus (article, cognitive evidence) + shen
  (article, third-treasure deep-dive) + fang-song + ting-jin (glossary) —
  closed the cognition/brain evidence gap and the shen concept-gap, plus the
  "release as verb" and "listening force" practice-gap entries. Commit 0d647de.

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
