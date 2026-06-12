# ATCHÉ Visuals — Revenue Stream Addendum

*To be added to ATCHE-Expanded-Business-Model.docx as a new revenue stream.*

## Overview

ATCHÉ Visuals is an on-demand nightlife photography and performance-reel service operating in DC nightlife venues. It serves three purposes simultaneously: immediate cash flow, a recruitment funnel into The Circle, and a content engine for ATCHÉ's own brand and partner pitches.

## The Offer

**Walkaround Photography (volume play)**
- Quick Shot — $5: one digital photo, delivered within 24h
- Photo Bundle — $20: up to 8 edited photos from the night

**Spotlight & Table Packages (VIP / influencer play)**
- Spotlight Package — $40: 5–10 curated photos + one short vertical clip edited for Stories/Reels — for guests who are already "on" for the night (VIP sections, micro-influencers, anyone building their own content). These are often the highest-value Circle leads in the room.
- Table Package — $60: photos + a quick group reel covering a whole table — one pitch, one sale, built for bottle service groups.

**Performance Reels (relationship play, pre-booked with performers/DJs/hosts)**
- Basic — $50: 60–90 second highlight reel + 5 photos
- Premium — $100: full edit, color grade, captions, multi-angle feel + 10 photos — built for the performer to post and self-promote

## Why It Works for ATCHÉ

**1. Recruitment funnel.** Every delivery is a natural first touch with exactly the people ATCHÉ wants in The Circle — dancers, hosts, photographers, DJs, content creators. The handoff includes an invite to apply to The Circle, replacing cold outreach with a warm, work-based introduction.

**2. Cash flow + content engine.** Funds operations while events and partnerships ramp up. Every shoot feeds @atcheofficial's organic growth and builds the portfolio used in brand/venue pitches (e.g., Spicy Water).

**3. Venue relationships.** Becoming "the photographer" at a venue is a low-cost entry point into venue-partnership conversations (Network tier, $150–500/mo), using the same proof-of-concept structure as the Spicy Water pitch.

## Scaling Path

The real scalability isn't Xavier shooting more — it's turning this into a **Circle photographer service line**: ATCHÉ trains, brands, and equips Circle photographers to run this playbook at different venues simultaneously. ATCHÉ takes the standard 15–20% booking cut already defined in the core revenue model. This becomes a built-in "first paid gig" for new Circle members, reinforcing the "pay first, perks second" positioning.

## Operational Notes

- **Consent:** A visible "scan for your photo" sign or quick verbal opt-in covers consent for walkaround shots.
- **Performer packages must be pre-booked**, not opportunistic — pitch before the set, same as a venue pitch.
- **Watermarked previews:** every upload generates a watermarked, lower-res preview automatically — the gallery shows only that until payment, so a screenshot isn't a substitute for the paid deliverable. Full-resolution originals unlock on download. (Details in `ATCHE-Visuals-Setup.md`.)
- **Delivery tool — two doors, one Supabase backend (shared with the rest of ATCHÉ):**
  - **Studio (`atche-visuals-studio.html`)** — photographer-facing. Log in with your ATCHÉ account, start a session per client/performer, upload their shots, and get a unique link + QR code. Dashboard tracks tonight's sessions, paid total, and pending payments in real time.
  - **Client Gallery (`atche-visuals.html?s=CODE`)** — client-facing. Opens on the client's own phone via the link/QR. Shows only their photos/reel, lets them pick a package, pay via Cash App (QR + deep link), and download their content. Includes a built-in Circle recruitment CTA. If opened with no code, shows a friendly "ask your photographer for your link" landing page.
  - One-time Supabase setup (table + storage bucket + policies) documented in `ATCHE-Visuals-Setup.md`.

## The Venue Partnership Flywheel

ATCHÉ Visuals isn't just a revenue line — it's the entry point into a repeatable pipeline that turns venues into long-term ATCHÉ partners. The pipeline has three stages, each one de-risking the next for the venue while building ATCHÉ's leverage.

**Stage 1 — Pilot Night (free, proof-of-concept).** Same structure as the Spicy Water pitch: ATCHÉ brings 3-4 Circle women plus a photographer for one night, at no cost to the venue. The venue gets content (Reels/photos of a packed, well-dressed room), ATCHÉ gets real footage for its own portfolio and @atcheofficial, and the women get their first paid gig. No ask, no contract — just a demonstration.

**Stage 2 — Perks & Access (informal, relationship-building).** Once a venue sees the lift — more women in the room, better content, a livelier floor — ATCHÉ proposes an ongoing informal arrangement: the venue offers Circle members comped or discounted entry, a reserved area, or VIP treatment on recurring nights, in exchange for ATCHÉ continuing to bring activity and content. No invoices yet. This is the "foot in the door" — low commitment, low cost to the venue, but it locks in a recurring presence and a steady content pipeline.

**Stage 3 — Tiered Paid Partnership (the Network tier).** Once the relationship and the content library are established, ATCHÉ converts the venue to a paid partner using the generalized Spicy Water tier structure:
- **Starter — $800/mo:** monthly content package (photos + reels), Circle presence on 1 recurring night
- **Standard — $1,800/mo:** weekly content + 2 recurring nights, Circle hosts supporting table sales
- **Full Partnership — $3,500/mo:** dedicated content cadence, multiple nights/week, Circle hosts embedded for table/bottle service support, co-branded events

This mirrors the existing Network tier pricing ($150-500/mo) but priced for venues with an actual marketing/events budget rather than the scraped-together cash of a single bar — the goal is to move ATCHÉ's venue relationships out of "favor economy" and into "line item."

### Why It's a Flywheel

Each piece feeds the next: ATCHÉ's presence at a venue generates content → content attracts more women to apply to The Circle → a larger, more active Circle makes ATCHÉ's offer to venues stronger (more hosts, more photographers, more reach) → stronger venue relationships generate more paid partnerships and more content → repeat. The venue partnership isn't a separate business line from The Circle — it's the mechanism that funds and grows it.

### Volume-First Geography

Rather than chasing the highest-prestige venues first, the rollout prioritizes high-foot-traffic nightlife corridors — **U Street and Adams Morgan** are the starting points — where volume of guests (and therefore volume of content, leads, and word-of-mouth) offsets a lower per-venue price point. As the Circle roster and content library grow, ATCHÉ can be more selective about which venues to pursue and can support pricing closer to the $1,800-$3,500 tiers from the start.

### Operational Notes for Venue Deals

- **Transparency with venues:** as the relationship moves from Stage 1 to Stage 3, be explicit with the venue about what's being offered and what's expected — informal perks arrangements should be framed as a trial of the paid partnership, not presented as permanent freebies.
- **Content ownership/usage rights:** define upfront who can use what. Default position: ATCHÉ retains rights to use content for its own marketing (@atcheofficial, pitch decks, Circle recruitment) regardless of tier; the venue gets a license to repost/use content for its own marketing as part of the paid tiers. This should be written into the partnership agreement once a venue reaches Stage 3.
- **Hand-off to venue-crm.html:** once a venue enters Stage 2 (perks/access), it should be tracked in the Venue CRM with status reflecting its stage, so follow-up and tier-conversion timing isn't lost to memory.

## Suggested Placement

Add as Revenue Stream #10 in ATCHE-Expanded-Business-Model.docx, after the AI Likeness Licensing stream (#9). The Venue Partnership Flywheel section above should be included as part of this addition, since it explains how Visuals connects to the Network-tier partner revenue stream.
