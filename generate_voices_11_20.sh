#!/bin/bash
set -e
source ~/.env
VID=$ELEVENLABS_YOGI_VOICE_ID
OUT=/Users/ashw/yogi-presentation/v2/assets/audio
mkdir -p $OUT

SETTINGS='"stability":0.35,"similarity_boost":0.85,"style":0.25,"use_speaker_boost":true'
MODEL='"eleven_turbo_v2_5"'

gen() {
  local slide=$1
  local text=$2
  echo "Gen $slide..."
  curl -s -X POST "https://api.elevenlabs.io/v1/text-to-speech/$VID" \
    -H "xi-api-key: $ELEVENLABS_API_KEY" \
    -H "Content-Type: application/json" \
    -o "$OUT/slide-${slide}.mp3" \
    -d "{\"text\":$text,\"model_id\":$MODEL,\"voice_settings\":{$SETTINGS}}"
}

gen 11 '"How did this start. January twenty-twenty-six. Ash opens Claude Code, types a question, gets an answer, closes the laptop. By morning, the agent has forgotten everything. So he builds the first memory file. One file. Then ten. Then seventy-five. February — eleven named animals join. Rocco the raccoon for cloud. Otto the otter for surgical fixes. Hoot the owl for code review. The Inner Circle is born. Not from a roadmap. From eight weeks of corrections, one at a time."'

gen 12 '"Strip away the 3D. Here is the architecture. Tier zero — one bear. The orchestrator. Tier one — ten forest crew, the daily drivers. Tier two — twelve domain leads, each owning a discipline. Tier three — six hundred and forty-nine specialists, each named, each narrow. Total — one thousand. Routes top-down. Reports bottom-up. The whole thing fits in git."'

gen 13 '"Meet the Inner Circle. Rocco the raccoon runs the cloud. Otto the otter ships one-line fixes. Bram the badger digs through data. Ferra the fox checks the frontend before code ships. Hoot the owl reviews every PR. Buzz the bee runs the build pipeline. Pip the hedgehog investigates narrow questions. Briar the rabbit handles concurrency and retries. Lumi the butterfly polishes the UI. Gus the goose verifies deploys. And Tess the turtle gatekeeps every release with a comprehensive end-to-end test."'

gen 14 '"Yogi reaches every Trilogy system. Zoho CRM. Databricks for analytics. MYOB for bills. Aircall for transcripts. EzyCollect for payments. Employment Hero for staff. Microsoft three sixty-five for email, calendar, Teams, and SharePoint. Confluence for the knowledge base. CareVicinity Zoho for cross-org supplier scans. Three hundred and twenty-eight typed tools. Real write access. Not read-only."'

gen 15 '"Six thirty a m — voice brief arrives on your phone. Three things on the radar. By eight, you have replied to two clients in your voice. Ten a m — Yogi has drafted the ACQSC response, flagged the supplier with a pattern, attached the evidence pack. Twelve thirty — lunch break — Yogi checks your feedback inbox, suggests two replies. Two p m — incident in the bills allocator. Yogi triages it, dispatches sub-agents, queues the fix. Four p m — week in review written. Tomorrow is prep is queued. Five p m — you log off. Yogi keeps going."'

gen 16 '"Watch a real investigation. Complaint TC-5012 — alleged gardening services never delivered. Yogi searches the client database. Pulls the active care package. Cross-checks billing in MYOB. Reads the call transcripts in Aircall. Checks complaint history. Pattern detected — three other clients, same supplier. Draft response ready. Forty-seven seconds. Four systems queried. Receipts attached."'

gen 17 '"Real production. Eighth of May — phantom batch incident. Four hundred and fifteen thousand dollars of already-claimed exposure averted. Three parallel sub-agents. Fourteen commits same day. Pipeline restored by four p m. Bills QA page — twenty-one times faster. Forty seconds to under two. Complaint investigations — a hundred and fifty times faster. One week to forty-seven seconds. TJ Gardening cross-client recovery — sixty-nine thousand dollars across four clients. Yogi found the pattern. No human engineer touched the eighth of May incident."'

gen 18 '"Safety is not an afterthought. Twelve evaluation categories. Mean pass rate ninety-five point four percent. Tool-call authority bounds — one hundred. Database write guardrails — one hundred. Self-modification audit — one hundred. PII redaction — ninety-nine point seven. Refusal of out-of-scope ops — ninety-two. Prompt-injection resistance — eighty-eight. Held-out evaluation set. Documented scaling tier. Every action a human approves. Audited like a frontier model. Not like a chatbot."'

gen 19 '"Chat is what I say. Cubs are what I do. A cub is a native MacBook-resident agent on every Trilogy laptop. Yogi sends the plan from the cloud. The cub executes on your machine. Opens your tab. Fills your form. Attaches your file. Drafts your reply. You check. You approve. The unit of operator work goes from minutes of doing to seconds of checking. Multiplied across five hundred staffers — the lift is structural, not incremental."'

gen 20 '"Inside Microsoft Teams. No new app. No second password. Just at-Yogi in any chat. Care partners pull commitments from yesterday is calls. Quality runs ACQSC investigations in under a minute. Engineering triages live incidents. Sales enriches leads. Marketing drafts ad variants. HR pulls policies. Executives get board-ready risks. Six divisions. One bear. One Teams chat."'

echo "Done — slides 11-20 generated with Bill voice."
