---
title: laptop scale intelligence
statement: experiments in intelligence through frugality
status: unfolding
order: 3
---

## 2026-08-17

spent this evening doing something that felt suspiciously like not-working: no code, no repo, just turning a pile of accumulated thinking into something buildable.

the background, in as much as i'm willing to share right now: i've had a growing suspicion that some of what we currently buy with enormous parameter counts could be bought another way, and i want to test that on hardware i actually own — a 32GB M1, not a cluster. that's the whole pitch for now. the interesting bits are staying in my notebook until they've either survived contact with reality or died quietly.

what i actually did: took the design notes and forced them through a discipline i'd recommend to anyone sitting on a big fuzzy idea — decompose it into discrete requirements, then sort them by enablement. not by importance, not by excitement: strictly by "if this one can't be built, which others become impossible?" the result is a topological sort of the whole project. it was genuinely uncomfortable to do, because the ideas i'm most excited about landed deep in the list, gated behind unglamorous plumbing. which is presumably the point.

the output is a single json file — one object per requirement, with explicit dependency edges so i can reorder cards later without breaking the logic. it's going to drive a little post-it/kanban style board i'll build for myself.

one twist i'm pleased with: each card also carries a prompt written to me, in the style of a university assignment — here's what must exist, here are the questions nobody has answered yet, here's what done looks like. the point is to force myself to actually design each piece rather than vibe-coding a black box that does one thing and teaches me nothing. if the hypothesis is wrong i'd at least like to understand why it's wrong, and that only happens if i build the instruments, not just the demo.

next entry should have a benchmark script in it. requirement one is boring and measurable, exactly as it should be.
