# Website Redesign — Content Architecture & Build Plan

*Branch: `redesign`. Live site (`main`) untouched until approved merge.*
*Source of truth for all work texts: `~/apps/my-art/` (my-art.md §4 + per-project conceptual-decisions.md). Never write website copy from scratch — extract and compress from the record.*

---

## Design register

Modern, professional, accessible — but in the practice's own voice: **quiet, precise, cold, image-forward.** The austerity IS the artistic statement (reference register: Cameron Rowland's, Walid Raad's web presence). Restraint stays; obscurity goes.

- Work images do the talking; interface disappears
- Generous white space, one typeface family, no decoration, no animation flourishes
- Every work reachable in ≤2 clicks; every page self-explanatory
- Mobile-first responsive; fast loads

## Sitemap

```
Home            — name + one-line identity + selected-works grid (image-led)
└── Work pages  — one per work (template below)
About           — short bio + condensed artist statement
CV              — proper HTML page + downloadable PDF
Contact         — email (mailto) + Instagram  [foldable into About]
```

No separate "News" page until there is recurring news. No blog.

## Work page template (every work identical structure)

1. **Hero image** (full-bleed or near)
2. **Tombstone**: *Title*, year · medium · dimensions · (edition/unique where relevant)
3. **Short text** — 100–180 words, what the piece DOES not what it's ABOUT, extracted from conceptual-decisions.md. No theory-dump, no explanation of puns/titles.
4. **Further images / video** — carousel or stacked
5. (Where true) **operational note** — e.g. IGWH's National Library deposit, one factual line

## Curation — which works and in what order

**Tier 1 — current body (the reason visitors come):**
1. *Mobilized* (2026) — stills + video exist
2. *Confinement* (2026) — 4 stills exist (verify dimensions recorded)
3. *If Gaza Were Here* (2026) — book of weights; CONTENT GAP: book object photos still pending; can launch with page spreads/renders + training-pair images
4. *When We Are Two* (2023–ongoing) — strongest earlier work, bridges bodies

**Tier 2 — selected earlier (curated, not exhaustive):**
5. *Sounds of Life* (2024)
6. *Scenes From American Life* (2023)

**Proposed cuts (not on new site; files kept in repo history):**
- *Autopilot* — artist's own assessment: weakest, too didactic. A portfolio is curation; cut.
- *Translations*, *What We Don't Hear*, *Memories on the Wall*, *2: A Monument* — early/student register; dilute the coherence the site must communicate. Cut (revisit later if wanted).

**Not on the site:** works in development (Makita, kite/plane, protective symbols, patents inquiry). Portfolio = finished work only. The patents/operational works appear if/when their form closes.

**Family pages** (abba/imma/anna/adam + assets): keep files live at their URLs (they are gifts with recipients), unlinked from all navigation, `noindex`.

## Technical checklist ("everything a proper artist site has")

| Item | Decision |
|---|---|
| Analytics | **Privacy-first, no cookie banner needed.** Recommend GoatCounter (free) or Plausible (~$9/mo, nicer). NOT GA4 (consent banner, weight). Decide before build. |
| SEO | Per-page titles + meta descriptions; sitemap.xml regenerated; canonical URLs |
| Social cards | og:image per page (work hero); site-wide default = Mobilized wide shot. Fixes the current blank-card share. |
| Structured data | schema.org Person on About; VisualArtwork per work page (cheap, do it) |
| Images | Web derivatives committed to repo: long side ~2000px, JPEG q80, target <500KB (sources are 3–9MB; full-res stays local/Drive per policy). Lazy-load below fold. Alt text on everything. |
| Video | Mobilized video is 637MB — NOT in repo. Host: Vimeo (clean, professional for artists) or compressed short loop (<10MB) in-repo. Decide. |
| Accessibility | Semantic HTML, contrast AA, keyboard-navigable, alt text |
| CV | HTML page + PDF download (replaces Google Doc link) |
| Contact | mailto + Instagram; no form (static site, forms = 3rd-party dependency) |
| Domain/hosting | Unchanged: GitHub Pages + www.yonatan-eshban-laderman.org |
| Favicon | Exists; keep/refresh |

## Build sequence

1. Approve this architecture (artist)
2. Content pass: write all work texts from my-art record; assemble image derivatives
3. Design + build on `redesign` (frontend-design discipline); local preview throughout
4. Analytics + SEO + cards wiring
5. Artist review on localhost (optionally bolt on staging repo URL for phone review)
6. Merge to main = launch; verify domain, sitemap, cards

## Open questions for the artist

1. Confinement dimensions — recorded by now? (was pending 2026-07)
2. Approve the cuts (esp. Autopilot)?
3. Analytics: GoatCounter (free) vs Plausible (paid)?
4. Video hosting: Vimeo account, or in-repo compressed loop?
5. Contact email: keep gmail, or set up hello@yonatan-eshban-laderman.org?
6. Is there newer CV content than the Google Doc?

---

## DECISIONS LOCKED (2026-08-30, artist)

| Question | Decision |
|---|---|
| Curation | Tier 1 + Tier 2 approved. **Autopilot KEPT, featured last** (not cut). |
| Confinement dimensions | **48 × 18 × 7 in.** (sourced from Wassaic/Kimmel packages; recorded in my-art 2026-08-26) |
| Analytics | Free → **GoatCounter** (no cookie banner). Site code to register at signup. |
| Mobilized video | Google Drive hosted; embed via `/preview` iframe (file id 1xjA_lAA3wYEFGBn0xrRUZP6bryr0g2Yx) |
| If Gaza Were Here | Page links OUT to the NLI catalog record (NNL_ALEPH997014808555505171) — the state's own catalog hosts the claim. Book photos: igwh-front/back.JPG |
| Contact email | Keep gmail (yankeecholima@gmail.com) |
| CV | Google Doc is current (fetched 2026-08-30); becomes HTML page + PDF |
| Process | Subagent-driven build, commits per logical unit on `redesign`, local preview, merge = launch |

## BUILD LEDGER

- [x] 2026-08-30 `redesign` branch created + pushed; architecture committed
- [x] 2026-08-30 Facts gathered: Confinement dims, IGWH book photos located, CV fetched, NLI catalog record confirmed (logged in my-art as Record 5)
- [x] Wave 1a: asset derivatives — 58 files, all <600KB
- [x] Wave 1b: content files — 10 files, facts verified vs my-art record
- [x] Wave 2: build — 11 pages + redirects + SEO + analytics wiring
- [x] Wave 3: coordinator review — fixed title casing, removed 2 unsourced bio claims, injected img dims (CLS)
- [x] Wave 4: done within build (GoatCounter yonlad.goatcounter.com — ACCOUNT REGISTRATION PENDING before launch)
- [x] Wave 5 (2026-08-30): two-tier home (selected/earlier); 4 works restored from git history with videos recovered; IGWH video embed; viewport-fit images; local cv.pdf
- [ ] Launch: artist approval → merge to main → verify live

## VIDEO HOSTING DECISION (2026-08-31, artist)

**Google Drive embeds, permanently** (free wins; Vimeo declined — 1GB storage cap on free tier). Accepted trade-off, documented: Drive files can throttle/refuse playback under heavy viewing ("quota exceeded") and player start is slow because sources are raw exports (up to 1.1GB/min). If it ever bites, the fix is a URL swap in .video-wrapper iframes — structure is host-agnostic.

**Video inventory (probed with ffprobe, 2026-08-31):** all nine are 1920×1080 (16:9) except If Gaza Were Here (1412×940, 3:2 — wrapper carries inline aspect-ratio override). Player box defaults to aspect-ratio 16/9, black ground, full-bleed on phones (<620px). Raw-export sizes: what-we-dont-hear 1.1G, scenes 864M, memories 593M, when-we-are-two 368M, translations 193M, autopilot 112M, sounds-of-life 35M. Re-exporting ~50MB/min H.264 would speed player start (optional, artist's call).


## VIDEO HOSTING — REVISED (2026-08-31, after real-iPhone testing)

Drive iframe embeds proved structurally broken on iOS Safari (cropping, pop-out
overlay obscuring playback). Pivoted to **self-hosted compressed derivatives**
served by the site itself — same policy as images: masters stay on Google Drive
(free, untouched), the repo carries web MP4s (H.264, 1080p for ≤2min cuts /
720p for longer, all ≤43MB) + poster frames, played in native <video> elements
(controls, playsinline, preload=metadata). No third-party player chrome at all.
Total repo growth ≈ 120MB. Note: translations (2:16), when-we-are-two,
what-we-dont-hear (10:22), scenes are LONGER cuts, not the 1-min versions —
artist may supply 1-min masters later for full-1080p upgrades.
