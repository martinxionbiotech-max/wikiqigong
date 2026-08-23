# Strengthening Report — 2026-08-24 (SEO/AIO/EEAT deepening)

## Scope
User asked for a second-pass content strengthening: add depth, cover points
other sites miss, and strengthen SEO / AIO (Generative Engine Optimization) /
E-E-A-T. This was a manual pass (not the nightly cron), focused on
technical-schema gaps and differentiated content.

## Gap analysis (what I found)

Technical SEO/AIO gaps:
- No `BreadcrumbList` structured data site-wide (breadcrumbs).
- No `HowTo` schema for step-by-step guide pages.

Differentiated-content gaps (things most tai chi/qigong sites don't cover well):
- No "learning path / how do I start and progress" roadmap page.
- No consolidated "common mistakes and how to fix them" page.

## Work done

### 1. Schema injection (overrides/main.html)
- Added **BreadcrumbList** JSON-LD to every non-home page (Home → [Glossary]
  → page). Emitted only when `page.url` is non-empty and not `/`.
- Added **HowTo** schema block driven by an optional `howto:` frontmatter
  array (list of `{name, text}` steps). No current page uses it yet, but the
  template support is in place for future guide pages.
- Kept all existing blocks (Organization/WebSite/DefinedTerm/Article/FAQPage)
  intact.

### 2. New page: Learning Path (`docs/learning-path.md`)
- ~1,300 words. A staged roadmap (5 stages: feel the breath → stand and root →
  learn a short form → deepen the principles → refine for years), each with
  timeframe + "sign you're ready to move on."
- 6-Q FAQ + Article + FAQPage + BreadcrumbList JSON-LD. 135-char description.

### 3. New page: Common Mistakes (`docs/common-mistakes.md`)
- ~1,140 words. Six named mistakes (over-effort, forced breathing, collapsing
  knees, skipping the root, rushing the form, all-or-nothing practice), each
  with "what it looks like / why it happens / the fix." Plus a 3-question
  pre-session self-check.
- 6-Q FAQ + Article + FAQPage + BreadcrumbList. 138-char description.

### 4. Wiring
- `mkdocs.yml`: new "Start Here" nav section (Learning Path, Common Mistakes,
  Tai Chi for Beginners).
- `docs/llms.txt`: added both pages under a new "Start here" block.
- `docs/index.md`: added Learning Path as step 0 in "Where to start."

## Quality checks
- `mkdocs build --strict` → exit 0 (0 errors, 0 warnings).
- JSON-LD validated via `json.loads` across new + existing pages: 16/16 blocks
  valid. BreadcrumbList now present on articles and glossary pages.
- Description lengths: 135 / 138 chars (in range).

## Deploy
- Commit: `55c6823`.
- Push via remote OpenCode `gho_` token (one-time URL, not persisted):
  `de484f4..55c6823 main -> main` ✅

## Next recommended (remaining strengthening backlog)
- History timeline page (concentrated "when did each practice/idea emerge").
- Pronunciation & tone-mark guide (chinese characters + pinyin + audio hints).
- HowTo schema on the beginner-session + 24-form pages (frontmatter `howto:`).
- Li (力) glossary entry + meditation-for-tai-chi page (already in queue).
- Add `dateModified` auto-bump + author bios / reviewer bios for stronger
  E-E-A-T (currently org-level only).

## Blockers
None.
