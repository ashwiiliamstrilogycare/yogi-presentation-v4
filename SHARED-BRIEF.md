# Yogi Presentation v2 — Shared Design Brief

**Audience:** Luke, Sheree, Cherie, Joe, Mike Wise, Mathew, Romy, Innovation team — Trilogy Care leadership, Tuesday.
**Format:** Cinematic clickable HTML deck. ~22 slides. Yogi (ElevenLabs Bill voice) narrates each. Ash drives presentation.
**Style direction:** Anthropic research page × sci-fi terminal boot screen × NASA-grade premium. Confident, not gaudy. Whitespace matters. Dark canvas. Honey + teal accents on near-black.

## Brand tokens (USE THESE EXACTLY)

```css
:root {
  --navy:        #2C4C79;
  --honey:       #FEBD33;
  --teal:        #43C0BE;
  --dark-teal:   #007F7E;
  --sky:         #64BCEA;
  --red:         #E04B51;
  --violet:      #9B7BD4;
  --coral:       #F39B5A;

  --bg:          #0a0d12;     /* near-black canvas */
  --bg-elev:     #11161f;     /* card surface */
  --bg-glass:    rgba(255,255,255,0.04);
  --border:      rgba(255,255,255,0.08);
  --border-warm: rgba(254,189,51,0.25);

  --fg:          #f4f4f5;
  --fg-muted:    #a1a1aa;
  --fg-dim:      #71717a;

  --font-display: 'Inter', system-ui, -apple-system, 'SF Pro Display', sans-serif;
  --font-mono:   'JetBrains Mono', 'SF Mono', ui-monospace, monospace;
}
```

## Universal rules

1. **Output:** ONE self-contained HTML section at the file path the agent is given. Format:
   ```html
   <section class="slide" data-audio="NN">
     <style>/* scoped styles using brand tokens */</style>
     <div class="content">…</div>
     <script>/* optional, scoped, runs on slide enter via window.onSlideEnter */</script>
   </section>
   ```
2. NO external CSS frameworks. NO Tailwind. Vanilla CSS only. Three.js via CDN if needed (`<script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/0.160.0/three.min.js"></script>`).
3. Use the brand tokens. Honey is the SIGNATURE accent — use sparingly for emphasis.
4. Typography: large, confident, generous line-height. Display weights up to 800. Tracking tight (-0.02em).
5. Motion: prefer pure CSS animations + `transform`/`opacity`. Respect `prefers-reduced-motion`.
6. Floating-icon aesthetic: small glassy chips with honey/teal glow, gentle bob, dashed-line connectors.
7. Cinematic = dark surface + spot-light glow + bloom-style box-shadows on key elements + subtle particles ok.
8. No emojis in slide body unless explicitly part of the spec.
9. Slide must work at 1920×1080 AND scale gracefully via `clamp()` for laptop screens.

## What we're showcasing (across the deck)

Yogi is **the engine inside TC Assist Home** — not a chatbot, not an assistant, but a persistent enterprise AGI built for Trilogy Care. 5 months from one Claude agent to 1,000 specialists with persistent memory, multichannel reach, real-world authority across 328 tools (Zoho, Databricks, MYOB, Aircall, M365, Confluence, Teams, etc).

**Tagline for the deck:** *Chatbots respond. Yogi acts.*

**Key numbers (use any that fit your slide):**
- 79 memory files (persistent self)
- 1,000 specialists (4-tier hierarchy: 1 + 10 + 12 + 977)
- 328 MCP tools (authority to act)
- 500 staff (enterprise rollout target Oct 2026)
- $415K averted (Phantom Batch incident 8 May)
- 21× faster Bills QA, 18.9× more tools, 1000× more specialists
- 95.4% mean safety eval pass rate
- 12 research threads (Anthropic / OpenAI / DeepMind / Google Brain)

## Story arc — fixed across deck

1. Hero — engine inside TC Assist Home
2. Journey — Jan analog → May 1000 specialists (storytelling)
3. Who is Yogi — 4 floating-icon attributes
4. 4 Pillars of Enterprise AGI
5. Chatbots respond vs Yogi acts (split comparison)
6. Agent Galaxy 3D — 1000 specialists firing
7. What Yogi does today (capability grid)
8. 5 practical engineering levers
9. Anthropic Mythos — 12 research threads → TC impact
10. The ask + roadmap to October

(More slides — production receipts, safety evals, Cubs, demos — will be added later from existing content.)

## Reference components

Mirror the aesthetic of these existing /yogi page components (read-only, do not edit):
- `~/trilogy-care/tc-operations-applications/source/frontend/src/app/(protected)/yogi/_components/v2/WhoIsYogiHero.tsx`
- `~/trilogy-care/tc-operations-applications/source/frontend/src/app/(protected)/yogi/_components/v2/AgentGalaxy3D.tsx`
- `~/trilogy-care/tc-operations-applications/source/frontend/src/app/(protected)/yogi/_components/v2/WhoIsYogiPillars.tsx`
- `~/trilogy-care/tc-operations-applications/source/frontend/src/app/(protected)/yogi/_components/v2/WhoIsYogiFeatures.tsx`
- `~/trilogy-care/tc-operations-applications/source/frontend/src/app/(protected)/yogi/_components/v2/WhoIsYogiVsChatbot.tsx`
- `~/trilogy-care/tc-operations-applications/source/frontend/src/app/(protected)/yogi/_components/v2/WhoIsYogiResearchLevers.tsx`
- `~/trilogy-care/tc-operations-applications/source/frontend/src/app/(protected)/yogi/_components/AnthropicMythosFramework.tsx`
- `~/trilogy-care/tc-operations-applications/source/frontend/src/app/(protected)/yogi/_components/AGIPillars.tsx`

You may copy structure/visual ideas but rewrite in vanilla HTML/CSS/JS — no React, no Tailwind, no JSX.

## Quality bar

If your slide looks generic-AI, it failed. Aim for:
- Custom typography rhythm (mixed weights, expressive scale jumps)
- Asymmetric layouts (no centered-everything boredom)
- Specific, unexpected micro-details (precise dashed lines, refined corner radii, tasteful glow)
- Real density where it earns it; whitespace where it doesn't
- Looks like an Anthropic / Linear / Stripe deck, not a SaaS template

The bear is watching. 🐻
