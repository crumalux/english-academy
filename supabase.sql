-- Run in Supabase SQL Editor. Keep RLS enabled.
create table if not exists public.attempts (
 id uuid primary key,
 user_id uuid not null references auth.users(id) on delete cascade,
 kind text not null,
 label text not null,
 score integer not null check(score between 0 and 100),
 answers jsonb not null default '[]'::jsonb,
 created_at timestamptz not null default now()
);
create index if not exists attempts_user_date on public.attempts(user_id,created_at desc);
alter table public.attempts enable row level security;
create policy "Users can read own attempts" on public.attempts for select to authenticated using ((select auth.uid())=user_id);
create policy "Users can insert own attempts" on public.attempts for insert to authenticated with check ((select auth.uid())=user_id);
create policy "Users can delete own attempts" on public.attempts for delete to authenticated using ((select auth.uid())=user_id);
