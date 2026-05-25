# Yogi Presentation v3 — NASA-grade · TC Assistant + Workspaces Home framing

**Audience:** Luke, Sheree, Cherie, Joe, Mike Wise, Mathew, Romy, Innovation team. Tuesday.

**Style ceiling:** NASA mission-control × Anthropic research page × Apple keynote close. NOT "phenomenal". Confident. Cinematic. Restrained.

## NEW FRAMING (highest priority — bake into every relevant slide)

> **Yogi is the AI engine inside TC Assistant. Every Trilogy staffer gets a personal Workspace Home — that is where Yogi remembers them. Same bear, every desk. Mike Wise built the canvas. Ash built the brain.**

**TC Assistant** (`assistant.trilogycare.com.au` · v1.1.504 · in active beta, Mike Wise's platform):
- Chat (Claude Opus 4.6) · 51 prompt library · voice input
- Command palette ⌘K · domain switcher (Digital · etc.)
- App launcher with 11 apps (Portal, Bills, Draw, Training, Zoho, Linear, Office, SharePoint, Outlook, PRODA, My Aged Care)
- 9 chat categories: Care & Support · Clinical · Documentation · Technology · Finance · HR & People · Operations · Communication · Engineering

**Workspaces Home** (each staffer's personal AI substrate):
- Primary nav: Chat · **Workspaces** · Help · Settings
- File tree explorer with Edit / Preview / Split markdown viewer
- Each user's `Home` workspace exposes the substrate Yogi runs on: `docs/ · forest-crew/ · forest-memory/ · memory/ · profiles/ · skills/ · trilogycare/`
- OneDrive mount (Attachments, CQCC Reporting, Meetings, Microsoft Copilot Chat Files, Microsoft Teams Chat Files, Recordings, .xlsx files)
- Top-right buttons: **Explorer · Chat · Claude**

A screenshot is staged at `/Users/ashw/yogi-presentation/v3/assets/tc-workspaces-home.png` — read it if you need to mirror the visual language of the real platform.

## Story arc — v3 (22 slides)

| # | Title | Audio | Notes |
|---|---|---|---|
| 00 | Intro card / countdown | `00` (NEW) | Cold cinematic open |
| 01 | Hero — engine inside TC Assistant | `01` | Reframe: TC Assistant + Workspaces Home |
| 02 | Journey — 5 months | `02` | |
| 03 | Who is Yogi? | `03` | |
| 04 | 4 Pillars of Enterprise AGI | `04` | |
| 05 | Chatbots respond. Yogi acts. | `05` | |
| 06 | Agent Galaxy 3D | `06` | |
| 07 | What Yogi does today | `07` | |
| 08 | 5 Engineering Levers | `08` | |
| 09 | Anthropic Mythos | `09` | |
| 10 | Origin Story (was 11) | `10` | |
| 11 | Architecture Blueprint (was 12) | `11` | |
| 12 | Inner Circle (was 13) | `12` | |
| 13 | TC Ecosystem (was 14) | `13` | |
| 14 | A Day with Yogi (was 15) | `14` | |
| 15 | Live Demo (was 16) | `15` | |
| 16 | Production Receipts (was 17) | `16` | |
| 17 | Safety Evals (was 18) | `17` | |
| 18 | Cubs (was 19) | `18` | |
| 19 | Teams → **TC Assistant + Workspaces Home** | `19` | Reframe! |
| 20 | **MiroFish — Predictive Engine (NEW)** | `20` | |
| 21 | Roadmap + 3 Asks (was 10) | `21` | Closer |
| 22 | **Outro / Q&A (NEW)** | `22` | |

## Brand tokens (UNCHANGED from v2)

```css
--navy:#2C4C79; --honey:#FEBD33; --teal:#43C0BE; --dark-teal:#007F7E;
--sky:#64BCEA; --red:#E04B51; --violet:#9B7BD4; --coral:#F39B5A;
--bg:#0a0d12; --bg-elev:#11161f;
```

## NASA-grade non-negotiables

1. Every slide has a moment of visual breath — at least one element holds the eye still for 2-3s.
2. Motion is choreographed. Stagger delays total under 2s for slide-enter.
3. Typography: every slide has at least one heroic-scale word/number (clamp 64-120px).
4. Honey is signature accent. Never more than ~12% of canvas area.
5. Negative space is sacred.
6. Every animation respects `prefers-reduced-motion`.
7. Every slide self-contained — vanilla CSS, no shared dependency.

## Critique mode

Top-tier polish: review like Jony Ive + NASA mission visualiser:
- Is typography hierarchy fightable?
- Does motion feel arbitrary?
- Spacings off-grid?
- Color palette restrained?
- Slide earns audience attention for full audio duration?
- Any AI-stock-template aesthetic?

If yes — fix it.

## Output format (unchanged from v2)

```html
<section class="slide" data-audio="NN">
  <style>/* scoped, brand tokens */</style>
  <div class="content">…</div>
  <script>/* optional, scoped */</script>
</section>
```

NO React. NO Tailwind. NO external CSS. Three.js via CDN is OK. Inline SVG is preferred over images.
