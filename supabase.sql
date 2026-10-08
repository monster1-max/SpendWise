-- SpendWise cloud database
create extension if not exists pgcrypto;
create table if not exists public.expenses (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  name text not null,
  amount numeric(14,2) not null check (amount > 0),
  expense_date date not null,
  category text not null,
  note text default '',
  created_at timestamptz not null default now()
);

alter table public.expenses enable row level security;

drop policy if exists "Users can view their own expenses" on public.expenses;
drop policy if exists "Users can insert their own expenses" on public.expenses;
drop policy if exists "Users can update their own expenses" on public.expenses;
drop policy if exists "Users can delete their own expenses" on public.expenses;

create policy "Users can view their own expenses" on public.expenses for select using (auth.uid() = user_id);
create policy "Users can insert their own expenses" on public.expenses for insert with check (auth.uid() = user_id);
create policy "Users can update their own expenses" on public.expenses for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "Users can delete their own expenses" on public.expenses for delete using (auth.uid() = user_id);

create index if not exists expenses_user_date_idx on public.expenses(user_id, expense_date desc);
