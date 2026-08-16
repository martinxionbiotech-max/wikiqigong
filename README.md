# WikiQigong

A high-authority English knowledge site for Tai Chi, Qigong, and Chinese
mind–body practices.

> **This is not a content-quantity project. This is a knowledge-quality
> project.** One excellent article is worth more than ten average AI articles.

## Mission

Transform deep Chinese understanding into natural English education.

```
Chinese Knowledge → Deep Understanding → Cultural Interpretation
  → English Explanation → Practice Guidance → Knowledge Graph
```

Not: Chinese article → machine translation → English article.

## Branding

- **Site name:** WikiQigong (working name; domain TBD)
- **Domain:** `https://wikiqigong.com/` (placeholder in `mkdocs.yml`)
- **GitHub:** `martinxionbiotech-max/wikiqigong` (push via `gh` CLI)

## Tech stack

**MkDocs Material** — static documentation site. Build:

```bash
pip install mkdocs-material
mkdocs build          # output in site/
mkdocs serve          # local preview
```

Build is clean: `--strict` passes with **0 errors, 0 warnings**.

## Directory structure

```
taichi-qigong/  (repo root = wikiqigong)
├── mkdocs.yml              ← site config (nav, theme, plugins)
├── docs/                   ← ALL content (MkDocs source)
│   ├── index.md            ← homepage
│   ├── editorial-standards.md
│   ├── disclaimer.md
│   ├── robots.txt          ← allows AI crawlers (GPTBot, ClaudeBot, etc.)
│   ├── articles/           ← pillar / concept / practice / comparison pages
│   └── glossary/           ← knowledge graph (one .md per concept)
├── overrides/main.html     ← site-wide JSON-LD (Organization, WebSite, Article, FAQPage)
├── GLOSSARY_SCHEMA.md      ← glossary entry schema (knowledge graph contract)
├── reports/nightly/        ← daily work reports
└── site/                   ← build output (gitignored)
```

## Content inventory (Day 1)

| Type | Count | Pages |
|------|-------|-------|
| Pillar articles | 4 | What Is Qigong/Tai Chi?, Qigong/Tai Chi Principles |
| Practice articles | 3 | Baduanjin, Zhan Zhuang, Qigong Breathing |
| Comparison articles | 3 | Tai Chi vs Qigong, Qigong vs Yoga, Qigong vs Meditation |
| Glossary concepts | 13 | Qi, Dantian, Yin–Yang, Jing, Shen, Qigong, Tai Chi, Neigong, Breathing, Meditation, Zhan Zhuang, Wu Xing, Balance |

**Total: 10 articles + 13 glossary entries + 4 site pages.**

## Article types (priority order)

| Type | Examples | Length | Priority |
|------|----------|--------|----------|
| **Pillar** | What Is Qigong?, Tai Chi Principles | 2500–4000w | Highest |
| **Concept** | What Is Qi?, What Is Dantian? | 1500–2500w | High |
| **Practice** | Zhan Zhuang, Baduanjin | 2000–3000w | High |
| **Comparison** | Tai Chi vs Qigong, Qigong vs Yoga | 1500–2500w | Medium |

## Content rules

**Never:** translate literally · overuse Chinese words · make mystical claims ·
invent history or research · claim medical cures.

**Health wording** — *may support*, *may help*, *has been studied for*,
*traditional practitioners often describe*. Never *cure / treat / guarantee*.

**Three registers** — every concept presents (1) historical fact,
(2) traditional interpretation, (3) modern explanation, clearly separated.

Full contract: see `docs/editorial-standards.md`.

## SEO + AIO/GEO

Every article has:
- `description` frontmatter (100–160 chars)
- TL;DR block for AI extraction
- Direct-answer H2 openings
- ≥1 table (comparison / categories)
- FAQ section (5+ questions) → **FAQPage JSON-LD**
- **Article JSON-LD** (headline, author, dates, publisher)
- 3–8 internal links + 1–3 authoritative external links

Site-wide JSON-LD (`overrides/main.html`): **Organization** + **WebSite**.
`robots.txt` explicitly allows AI crawlers (GPTBot, ClaudeBot, PerplexityBot, etc.).

## Working cadence

- Production window: nightly 02:00–06:00
- Normal night: 1–3 high-quality articles
- Never force production numbers.

## 60-day roadmap

| Days | Phase | Focus |
|------|-------|-------|
| 1–15 | Foundation | Architecture, glossary framework, Tai Chi + Qigong fundamentals |
| 16–30 | Core knowledge | Qi, Dantian, Yin–Yang, breathing, meditation, basic practices |
| 31–45 | Practice expansion | Baduanjin, Zhan Zhuang, Dao Yin, Neigong, Tai Chi styles |
| 46–60 | Authority layer | Research, comparisons, FAQ, tools, graph improvement |

## Git workflow

1. Validate: `mkdocs build --strict` (must be 0 errors, 0 warnings)
2. `git add .` → commit → `git push origin main`
3. Never force push; never overwrite human changes.

> **Deployment note:** this machine HAS a working `gh` CLI authenticated as
> `martinxionbiotech-max`, so `git push` to GitHub works directly. (Earlier
> memory said "no GitHub token" — that is outdated and was corrected.)
