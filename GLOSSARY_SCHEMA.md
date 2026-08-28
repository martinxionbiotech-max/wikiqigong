# Glossary — Knowledge Graph

Every important Chinese concept gets one entry. This directory is the
knowledge graph: each entry links to related concepts, forming the connective
tissue that turns a collection of pages into a system.

## Entry Schema

Each entry is a Markdown file with YAML frontmatter. Required fields:

```yaml
---
title: "Qi"
chinese: "氣"          # traditional character
pinyin: "qì"           # with tone mark
english: "Qi"          # the English term we standardize on
literal: "breath; air; vital energy"
category: "core-concept"   # core-concept | practice | body-map | philosophy | tradition
related:               # knowledge-graph edges
  - { concept: "Qigong", relation: "cultivates", note: "qigong means 'qi work'" }
  - { concept: "Dantian", relation: "located in", note: "lower dantian stores qi" }
  - { concept: "Breathing", relation: "transported by" }
  - { concept: "Tai Chi", relation: "guides movement in" }
  - { concept: "Neigong", relation: "developed through" }
author: "Master Wong"
reviewed_by: "WikiQigong Editorial Team"
updated: "2026-08-16"
---
```

## Required Body Sections

Each entry body must cover, in order:

1. **What it is** — a single-sentence plain-English definition
2. **Literal meaning** — what the characters actually say
3. **Historical context** — where it came from, roughly when, key texts/traditions
4. **Traditional interpretation** — how classical practitioners understood it
5. **Modern explanation** — a grounded, non-mystical reading for today
6. **Related concepts** — the knowledge-graph connections (link to other entries)
7. **Common misunderstandings** — the Western misreadings to correct

## Naming Conventions

- File name: pinyin without tone marks, lowercase, hyphenated (`yin-yang.md`)
- `title` and `english` are the standardized English terms used for internal linking
- `chinese` always traditional characters; add simplified in body if useful

## Quality Bar

A glossary entry is **done** only when:

- A person with zero Chinese background understands the first sentence
- Chinese context is preserved (not stripped)
- No mystical overclaiming; no invented dates or citations
- Every `related` edge is a real, useful connection (no padding)
