# 2026-08-18 — Second-pass strengthening (EEAT / SEO / AIO)

Not a nightly queue run — a user-requested second pass over existing content
to deepen it and harden E-E-A-T + SEO + AIO/GEO signals.

## What changed

### New pages
- **`docs/about.md`** — About page (who we are, why the site exists, trust
  signals, "how to trust what you read"). Added to nav under About & Standards.
- **`docs/llms.txt`** — AI-engine discovery file listing all core articles,
  practice guides, comparisons, glossary entries, and standards pages with
  canonical URLs.

### Content hardening (existing articles)
- **Fixed 10 over-length `description` frontmatter** — all now within 100–160
  chars (was up to 213 on what-is-qigong). Verified 143–159 across all 17.
- **Added "three registers" sections** (historical / traditional / modern) to
  concept articles that were missing them: song, dao-yin, three-treasures.
  (neigong and wuji already had them.)
- **Added "Who should be cautious" sections** to 9 articles that lacked the
  trust signal: wuji, qigong-principles, tai-chi-principles,
  tai-chi-five-styles, tai-chi-vs-qigong, qigong-vs-yoga, qigong-vs-meditation,
  song, dao-yin, three-treasures.
- **Added a comparison table** to qigong-breathing (stressed vs abdominal
  breathing) — it was the only article with 0 tables.
- **Rebuilt glossary index** — now lists all 21 entries across 4 categories
  (was showing only 9) with a fuller knowledge-graph section.

## Verification
- `mkdocs build --strict` → 0 errors, 0 warnings (42 pages).
- JSON-LD: 51 blocks valid, 0 invalid (json.loads on all built HTML).
- Sitemap: 42 `<loc>` entries.

## Commit & push
- `6fc77cd` — eeat-seo-aio: strengthen depth + add llms.txt, about page,
  three-registers, caution sections, fix descriptions.
- Pushed to `main` via remote OpenCode token (one-time URL, not persisted).

## Next opportunities (not done)
- Add `san-guan`, `xing/yi/qi`, `ming-men`, `lao-gong` glossary entries (queue).
- Consider a real author name + About page bio for stronger EEAT.
- Add Article `@id` cross-links between articles and glossary (graph tightening).
