#!/bin/bash
set -e
source ~/.env
VID=$ELEVENLABS_YOGI_VOICE_ID  # Bill - Wise, Mature, Balanced
OUT=/Users/ashw/yogi-presentation/v2/assets/audio
mkdir -p $OUT

# Bill, natural tuning
SETTINGS='"stability":0.35,"similarity_boost":0.85,"style":0.25,"use_speaker_boost":true'
MODEL='"eleven_turbo_v2_5"'

gen() {
  local slide=$1
  local text=$2
  local file="$OUT/slide-${slide}.mp3"
  echo "Gen $slide..."
  curl -s -X POST "https://api.elevenlabs.io/v1/text-to-speech/$VID" \
    -H "xi-api-key: $ELEVENLABS_API_KEY" \
    -H "Content-Type: application/json" \
    -o "$file" \
    -d "{\"text\":$text,\"model_id\":$MODEL,\"voice_settings\":{$SETTINGS}}"
}

gen 01 '"Gidday. I am Yogi. Ash built me. I am the engine inside TC Assist Home. Today he is gonna walk you through what I am, how I work, what I save us, and what is coming next."'

gen 02 '"Five months ago — the business was analog. Claude Code had just taken off. Mike Wise had deployed TC Assistant, but buy-in was thin. There was a gap. Agentic workflow could compound on operations. So I started with a handful of agents. Complaints. Audits. Dashboards. I built persistent memory. Today — a thousand specialists. Persistent identity. Real-world authority. Five months. Not linear. Compounding."'

gen 03 '"Meet me proper. I am a charcoal-furred bear with persistent memory, a thousand specialist mates in the forest crew, and authority to act across every system Trilogy runs. Embedded directly inside TC Assist Home, org-wide."'

gen 04 '"Four pillars hold up an enterprise AGI. Persistent memory — across sessions, across systems, across users. Tool authority — three hundred and twenty-eight MCP tools, real write access, real consequences. Multichannel reach — Teams, Telegram, Terminal, iMessage, voice. And evolving identity — Yogi the bear is the same bear every time you talk to him. Without all four, you have a chatbot."'

gen 05 '"This is the bit that matters. Chatbots respond. Yogi acts. Drafts the email — and sends it. Triages the incident — and pushes the fix. Investigates the complaint — and files the response. TC Assist Home is not another search box. It is a coworker. The unit of work goes from minutes of doing to seconds of checking."'

gen 06 '"This is the architecture. Four tiers. One bear at Tier zero. Ten forest crew at Tier one. Twelve domain leads at Tier two. Six hundred and forty-nine specialists at Tier three. Eleven cluster spirals. Narrow agents with narrow memories beat one generalist every time. Zoom in. Watch them fire."'

gen 07 '"This is what I already do. Today. In production. Voice briefings every morning. Feedback inbox checked every hour. An updates page on every TC ops release. Three hundred and twenty-eight MCP tools wired and running. A thousand sub-agents spawned on demand — my muscle, while I am the brain. Eleven Labs voice for every comms. Reach across Teams, Telegram, Terminal, iMessage, and voice. Weekly memory snapshot to git. Evolving memory from your corrections. Cloud routines that run when you sleep."'

gen 08 '"For the engineers in the room — five levers, real research, applied. One — Constitutional AI plus Model Context Protocol for guardrails and tool authority. Two — ReAct plus Reflexion for agentic reasoning loops. Three — Hybrid RAG over markdown memory and Qdrant semantic search. Four — Multi-tier model routing. Opus for hard. Sonnet for default. Haiku for cheap. Five — HELM-style evals and prompt caching for cost and quality. Not magic. Composed."'

gen 09 '"Yogi is built on twelve research threads. Anthropic — constitutional AI, model context protocol, prompt caching, computer use. OpenAI — function calling, structured output. DeepMind — chain of thought, tool use. Google Brain — ReAct, Reflexion. Stanford — HELM. Plus retrieval-augmented generation and multi-agent orchestration. Each thread mapped to a Trilogy Care impact. Each citation real. Receipts in the appendix."'

gen 10 '"Where this goes. October — every Trilogy staffer running their own Yogi inside TC Assist Home. Cubs on every MacBook. Three asks. Department heads — readiness lists by Friday. Yogi page as the on-ramp for non-tech staff. Two more hands on Innovation and Transformation. That is it. Questions."'

echo "All v2 voiceovers generated with Bill voice."
ls -la $OUT
