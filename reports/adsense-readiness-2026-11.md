# WikiQigong — AdSense readiness audit (2026-11-19)

**Scope:** `wikiqigong.com`, MkDocs Material, `martinxionbiotech-max/wikiqigong`.
**Baseline build:** 114 sitemap pages (57 articles, 48 glossary, 9 site pages).
**AdSense publisher:** `ca-pub-7876439381319122`.

## 1. What was missing or weak

| Check | Before | Risk |
|---|---|---|
| AdSense loader in `<head>` | absent | account verification cannot find the tag |
| `ads.txt` at domain root | absent | AdSense reports missing/unauthorized inventory |
| Privacy policy | **absent** | required for AdSense; no cookie/advertising disclosure |
| Contact / corrections page | absent (only a GitHub link in About) | weak trust and no privacy-request route |
| Medical disclaimer | 272 words | too thin for a health-adjacent educational site |
| HTML titles >60 chars | 20 | SERP truncation; not an approval blocker but poor SEO |
| Meta descriptions outside 140–155 | 53 (mostly glossary 108–130; 11 >155) | short descriptions are weak snippets, not a policy violation |
| `llms.txt` coverage | 79 links / 114 pages | machine-readable index incomplete |
| Internal link graph from audit script | 112 “orphans” | **false positive**: MkDocs emits relative links; nav + sitemap reach the pages |

## 2. What was changed

- Added the exact AdSense loader to `overrides/main.html` inside `{% block extrahead %}`:
  ```html
  <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-7876439381319122"
       crossorigin="anonymous"></script>
  ```
- Added `docs/ads.txt`:
  ```
  google.com, pub-7876439381319122, DIRECT, f08c47fec0942fa0
  ```
- Added `docs/privacy.md` (1,639 words): hosting logs, GitHub issues, cookies, Google AdSense/DoubleClick, consent, opt-outs, rights, retention, children, transfers, contact.
- Added `docs/contact.md` (521 words): corrections, privacy channel, what not to send, response expectations, advertising disclosure.
- Expanded `docs/disclaimer.md` from 272 to 1,158 words: scope, no doctor–patient relationship, evidence tiers, individual variation, stop signs, breathing/meditation cautions, children, ads, corrections, copyright, emergency.
- Added the three pages to `mkdocs.yml` under **About & Standards**.
- Added an `htmltitle` override to keep rendered `<title>` ≤60 chars.
- Trimmed 11 over-length descriptions; kept the 42 short glossary descriptions rather than appending one repeated tail to all of them.

## 3. Verification (local build)

```bash
mkdocs build --strict
```

- 117 HTML files; **117/117 contain the AdSense loader**, all inside `<head>`.
- `site/ads.txt` contains the publisher line.
- 116 sitemap URLs, including `/privacy/` and `/contact/`.
- 0 titles >60 after the override.
- Privacy 1,639 words; disclaimer 1,158; contact 521.
- `mkdocs build --strict` passes (only informational absolute-link notices in the new policy pages).

## 4. Still required outside the repository

1. **Deploy** the new build and confirm:
   ```bash
   curl -sSI -A Mediapartners-Google https://wikiqigong.com/ | head
   curl -s https://wikiqigong.com/ | grep -n 'adsbygoogle.js?client=ca-pub-7876439381319122'
   curl -sSI https://wikiqigong.com/ads.txt
   ```
   `ads.txt` must return `200` with `text/plain` at the apex; `www` must either redirect to apex or serve the same file.
2. **Google CMP:** enable a Google-certified consent management platform in AdSense → Privacy & messaging for EEA/UK/CH traffic. The static loader must not be replaced by a JavaScript consent gate.
3. **AdSense site review:** submit the domain after the deployment. The loader and `ads.txt` being present does not guarantee approval; content/policy review is external.
4. **Auto ads placement:** if auto ads are enabled, consider excluding glossary/policy pages from ad placement. The sitewide loader is present on every page as required, but ad placement is a separate AdSense setting.
5. **Short descriptions:** 42 glossary descriptions remain below 140 characters. They are unique and readable; a future pass should expand them per entry, not with a shared suffix.
6. **`llms.txt`:** 79/114 links; regenerate from the sitemap/nav if AI retrieval coverage matters.
