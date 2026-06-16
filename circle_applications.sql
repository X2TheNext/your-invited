-- ============================================================
-- ATCHÉ — circle_applications table
-- Run in Supabase → SQL Editor. Safe to re-run (idempotent).
-- Covers BOTH the Circle app and the Spicy Water casting form.
-- ============================================================

-- 1) Create the table if it doesn't exist yet
create table if not exists public.circle_applications (
  id           uuid primary key default gen_random_uuid(),
  created_at   timestamptz not null default now(),
  name         text,
  instagram    text,
  email        text,
  phone        text,
  tiktok       text,
  followers    text,
  roles        jsonb,          -- array of roles, e.g. ["Model","Host"]
  location     text,
  availability text,
  referral     text,           -- source tag, e.g. "Spicy Water Shoot — June 24"
  bio          text,
  portfolio    text,
  track        text,           -- 'circle' or 'studio'
  interests    jsonb,
  status       text default 'pending'
);

-- 2) If the table already exists, make sure every column is present
alter table public.circle_applications add column if not exists name         text;
alter table public.circle_applications add column if not exists instagram    text;
alter table public.circle_applications add column if not exists email        text;
alter table public.circle_applications add column if not exists phone        text;
alter table public.circle_applications add column if not exists tiktok       text;
alter table public.circle_applications add column if not exists followers    text;
alter table public.circle_applications add column if not exists roles        jsonb;
alter table public.circle_applications add column if not exists location     text;
alter table public.circle_applications add column if not exists availability text;
alter table public.circle_applications add column if not exists referral     text;
alter table public.circle_applications add column if not exists bio          text;
alter table public.circle_applications add column if not exists portfolio    text;
alter table public.circle_applications add column if not exists track        text;
alter table public.circle_applications add column if not exists interests    jsonb;
alter table public.circle_applications add column if not exists status       text default 'pending';
alter table public.circle_applications add column if not exists created_at   timestamptz default now();

-- 3) Row Level Security — REQUIRED so the public form can submit
alter table public.circle_applications enable row level security;

-- Allow anyone (anon + logged-in) to INSERT an application
drop policy if exists "public can submit applications" on public.circle_applications;
create policy "public can submit applications"
  on public.circle_applications
  for insert
  to anon, authenticated
  with check (true);

-- Do NOT add a public SELECT policy — that keeps applicants' info private.
-- You read submissions from the Supabase dashboard (service role bypasses RLS).

-- 4) Quick check: see your most recent submissions
-- select created_at, name, instagram, roles, availability, referral
-- from public.circle_applications order by created_at desc limit 50;
