# Strengthening report — SEO/AIO/E-E-A-T pass 2 (2026-08-25)

User asked for a **complete scan** of already-pushed content, deep optimization
of thin/gap content, extension with points other sites miss, and a full
SEO/AIO + E-E-A-T audit.

## What the audit found

- **76 pages, ~73k words**, build clean (`--strict` = 0/0), 262 JSON-LD blocks
  all valid.
- **No OpenGraph / Twitter meta anywhere** — social and AI-sharing previews
  were unstyled.
- **No og:image and no favicon** — weak brand signal, poor link-preview.
- **No visible author/reviewer byline** — E-E-A-T existed only in JSON-LD, not
  on the page.
- **21 pages had description gaps**: 7 missing, 15 over 160 chars (SERP
  truncation risk).
- **No author-team page** — the About page named roles but had no dedicated,
  linkable team/review page.
- **Content gaps other sites don't cover** (from the backlog): history
  timeline, pronunciation/tone guide, tai-chi-for-stress evidence page.

## What was done

### SEO/AIO infrastructure
- Added **OpenGraph + Twitter Card meta** site-wide (title, description, url,
  image 1200×630, locale, summary_large_image) in `overrides/main.html`.
- Generated **og-image.png** (1200×630) and **favicon.png** (64×64) in
  `docs/assets/`, wired via `mkdocs.yml` `favicon`/`logo`.
- Added site **copyright footer** line with Medical Disclaimer link.
- All JSON-LD still valid after changes (262 blocks, 0 invalid).

### E-E-A-T strengthening
- Added a **visible byline** (author · reviewer · published/updated dates)
  above every article + glossary page, and a correction-policy footer link.
- New **Editorial Team & Review** page (`team.md`) — named roles, their
  qualifications, the 5-step pipeline, and the correction process.
- Added `type`/`author`/dates frontmatter to `about`, `editorial-standards`,
  `disclaimer` so they carry Article schema too.
- `about.md` now links to the team page.

### Content gaps filled (differentiating, not covered by peers)
- **History Timeline** (`history-timeline.md`) — dated, honest timeline from
  Mawangdui daoyin scrolls (~168 BCE) to the 1956 24-form; separates ancient
  health arts / tai chi's 17th-century emergence / modern standardization.
- **Pronunciation Guide** (`pronunciation-guide.md`) — pinyin + tone marks +
  plain-English "say it like" table; the `q`/`x`/`zh` sound cheat sheet.
- **Tai Chi for Stress & Mental Health** (`tai-chi-for-stress.md`) — evidence
  page mirroring older-adults; NCCIH/Jahnke/Wang sources; hedged wording.

### Description fixes (21 pages)
- 7 missing descriptions added; 15 over-length trimmed to ≤160 chars; all 76
  pages now have descriptions in the 100–160 range.

## Verification
- `mkdocs build --strict` → 0 errors, 0 warnings.
- 76 pages, 262 JSON-LD blocks, **0 invalid** (json.loads).
- sitemap.xml: 76 URLs, includes all 4 new pages.
- Pushed: `0718f08..a584616` to `main` via one-time remote token.

## Next recommended (remaining backlog)
- HowTo schema on beginner-session + 24-form pages (`howto:` frontmatter).
- Per-article named authors/reviewers (currently "Editorial Team" everywhere).
- Possibly a "Tai Chi for back pain / mobility" evidence page (peer gap).
