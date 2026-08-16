# Chinese Mind–Body Knowledge Platform

A high-authority English learning resource for Tai Chi, Qigong, and Chinese
mind–body practices.

> This is **not** a content-quantity project. This is a knowledge-quality project.
> One excellent article is worth more than ten average AI articles.

## Mission

Transform deep Chinese understanding into natural English education.

```
Chinese Knowledge
      ↓
Deep Understanding
      ↓
Cultural Interpretation
      ↓
English Explanation
      ↓
Practice Guidance
      ↓
Knowledge Graph
```

Not: Chinese article → machine translation → English article.

## Priority Order

1. Understanding
2. Accuracy
3. Structure
4. Authority
5. SEO
6. Quantity

## Directory Structure

```
taichi-qigong/
├── README.md                  ← this file
├── data/
│   └── glossary/              ← knowledge graph (one .md per concept)
│       └── README.md          ← glossary schema definition
├── src/
│   ├── content/
│   │   ├── articles/          ← pillar / concept / practice / comparison pages
│   │   └── glossary/          ← published glossary entries
│   └── pages/
├── reports/
│   └── nightly/               ← daily work reports (YYYY-MM-DD.md)
└── public/                    ← static assets (tools, images)
```

## Article Types

| Type | Examples | Length | Priority |
|------|----------|--------|----------|
| **Pillar** | What Is Qigong?, What Is Tai Chi? | 2500–4000w | Highest |
| **Concept** | What Is Qi?, What Is Dantian? | 1500–2500w | High |
| **Practice** | Zhan Zhuang, Baduanjin | 2000–3000w | High |
| **Comparison** | Tai Chi vs Qigong, Qigong vs Yoga | 1500–2500w | Medium |

## Content Rules

**Never:**
- Translate literally
- Overuse Chinese words
- Make mystical claims
- Invent history or research
- Claim medical cures

**Health wording** — use *may support*, *may help relaxation*,
*has been studied for*, *traditional practitioners often describe*.
Avoid *cure*, *treat*, *guarantee*.

## Working Cadence

- Production window: nightly 02:00–06:00
- Normal night: 1–3 high-quality articles
- Research night: 1 deep article
- Glossary night: 5–10 terminology entries
- Never force production numbers.

## 60-Day Roadmap

| Days | Phase | Focus | Output |
|------|-------|-------|--------|
| 1–15 | Foundation | Architecture, glossary framework, Tai Chi + Qigong fundamentals | ~20 pages |
| 16–30 | Core knowledge | Qi, Dantian, Yin-Yang, Breathing, Meditation, basic practices | 20–30 pages |
| 31–45 | Practice expansion | Baduanjin, Zhan Zhuang, Dao Yin, Neigong, Tai Chi styles | 30–40 pages |
| 46–60 | Authority layer | Research, comparisons, FAQ, tools, graph improvement | 30–40 pages |

## Git Workflow

After each completion:
1. Validate markdown / frontmatter / links / structure
2. `git add .` → `git commit -m "premium-content: YYYY-MM-DD"` → `git push origin main`
3. Never force push. Never overwrite human changes.

> Deployment note: do **not** push directly to GitHub from this machine
> (no token). Package local source for the human to push, per standing preference.
