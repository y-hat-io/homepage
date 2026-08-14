---
title: placeholder-01
statement: A stand-in project so the board has something to render. Real projects replace these files.
status: hacking
order: 1
---

## 2026-08-14

Board is live. This note exists to prove the pipeline: one markdown file per
project, a `## date` heading per note, push to deploy. Total friction from
"thought" to "published": about a minute.

Code renders like this:

```python
def note(date, text):
    return f"## {date}\n\n{text}\n"
```

## 2026-08-12

Images drop in with one line of markdown. Testing with a file already in the
repo:

![Test image — a chat transcript screenshot](/assets/bigger_screenshot.webp)

## 2026-08-10

Older notes sink to the bottom. A panel with a long history scrolls inside
its own frame on desktop; the page itself stays one screen of panels.

## 2026-08-08

Lists work too:

- measured the thing
- it was worse than expected
- wrote down why
