# Mandarin Flashcards · AQA GCSE

A single-page flashcard site for the 749 words in the AQA GCSE Mandarin vocabulary list.
Open `index.html` in a browser, or use the hosted copy at https://quartzmtd.github.io/8673/.
Without an account, progress is saved in the browser. With an account, it is saved online and syncs across devices.

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

## Accounts (log in / sign up)

Accounts use [Supabase](https://supabase.com) for email + password logins and to store each person's progress.
Until `config.js` is filled in, the site runs without accounts. To turn them on:

1. Create a free project at https://supabase.com/dashboard.
2. In the project, open **SQL Editor → New query**, paste the contents of `supabase/schema.sql`, and click **Run**.
   This creates a `progress` table where each person can only read and write their own row.
3. Open **Authentication → URL Configuration**. Set **Site URL** to `https://quartzmtd.github.io/8673/`
   and add the same address under **Redirect URLs**. Confirmation and password-reset emails link back here.
4. Open **Project Settings → API**. Copy the **Project URL** and the **anon / publishable key** into `config.js`,
   then commit and push. Both values are meant to be public; the table's security rules protect the data.

Optional: to let people log in straight away without confirming their email, turn off
**Authentication → Sign In / Providers → Email → Confirm email**.

When someone logs in for the first time, the progress already in their browser is copied into their new account.
Logging out switches back to the browser's own guest progress.

## Editing

`index.html` is generated. Edit `template.html` (the app) or `vocab.json` (the words), then run:

```bash
python3 build.py
```
