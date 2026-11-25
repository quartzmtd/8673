-- Run this once in your Supabase project: SQL Editor → New query → paste → Run.
-- One row of progress per user; row-level security means each person can only see and change their own row.

create table if not exists public.progress (
  user_id    uuid primary key references auth.users (id) on delete cascade,
  data       jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.progress enable row level security;

drop policy if exists "Read own progress" on public.progress;
drop policy if exists "Insert own progress" on public.progress;
drop policy if exists "Update own progress" on public.progress;

create policy "Read own progress" on public.progress
  for select to authenticated using ((select auth.uid()) = user_id);
create policy "Insert own progress" on public.progress
  for insert to authenticated with check ((select auth.uid()) = user_id);
create policy "Update own progress" on public.progress
  for update to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);

-- Let logged-in users use the table (row-level security above still limits them to their own row),
-- then tell the API to pick up the new table straight away.
grant select, insert, update on public.progress to authenticated;
notify pgrst, 'reload schema';
