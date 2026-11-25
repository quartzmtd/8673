# Mandarin Flashcards · AQA GCSE

A single-page flashcard site for the 749 words in the AQA GCSE Mandarin vocabulary list.
Open `index.html` in a browser — no server or install needed. Progress is saved in the browser.

## Decks

- **Initial** — new cards. English is shown; reveal the pinyin and hanzi, then choose
  *Know both*, *Know pinyin*, *Know hanzi*, *Know neither*, *Revise I* or *Revise II*.
  Forms you don't know go to LEARN; classified cards leave Initial.
- **LEARN** — forms you are learning. Filter by cards that need the pinyin only, the hanzi only, or both.
  Only the forms in the deck are tested; the other column is greyed out.
- **Revise I / Revise II** — same filters and buttons as LEARN. A form you don't know goes back to LEARN.

Also: topic filter, shuffled or list order, undo (Ctrl+Z), a searchable list of every card in the deck,
and a backup code for moving progress between browsers.
Keyboard: Space to reveal, 1–6 to choose.

## Editing

`index.html` is generated. Edit `template.html` (the app) or `vocab.json` (the words), then run:

```bash
python3 build.py
```
