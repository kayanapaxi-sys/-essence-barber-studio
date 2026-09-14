-- ESSENCE BARBER STUDIO — Supabase / PostgreSQL
-- Ejecuta este SQL en Supabase > SQL Editor.
create extension if not exists "pgcrypto";

create table if not exists public.clients (
 id uuid primary key default gen_random_uuid(),
 name text not null,
 phone text,
 last date,
 notes text,
 created_at timestamptz not null default now()
);
create table if not exists public.barbers (
 id uuid primary key default gen_random_uuid(),
 name text not null,
 hours text,
 status text default 'Disponible',
 created_at timestamptz not null default now()
);
create table if not exists public.services (
 id uuid primary key default gen_random_uuid(),
 name text not null,
 price numeric(10,2) not null default 0,
 duration integer not null default 45,
 created_at timestamptz not null default now()
);
create table if not exists public.appointments (
 id uuid primary key default gen_random_uuid(),
 client_name text not null,
 service_name text not null,
 barber_name text not null,
 date date not null,
 time time not null,
 status text not null default 'Confirmada',
 created_at timestamptz not null default now()
);
create table if not exists public.sales (
 id uuid primary key default gen_random_uuid(),
 date date not null default current_date,
 client_name text,
 concept text not null,
 total numeric(10,2) not null default 0,
 created_at timestamptz not null default now()
);
create table if not exists public.products (
 id uuid primary key default gen_random_uuid(),
 name text not null,
 stock integer not null default 0,
 price numeric(10,2) not null default 0,
 created_at timestamptz not null default now()
);

alter table public.clients enable row level security;
alter table public.barbers enable row level security;
alter table public.services enable row level security;
alter table public.appointments enable row level security;
alter table public.sales enable row level security;
alter table public.products enable row level security;

-- Para la primera instalación: solo usuarios autenticados pueden leer/escribir.
do $$ begin
  create policy "auth clients" on public.clients for all to authenticated using (true) with check (true);
exception when duplicate_object then null; end $$;
do $$ begin
  create policy "auth barbers" on public.barbers for all to authenticated using (true) with check (true);
exception when duplicate_object then null; end $$;
do $$ begin
  create policy "auth services" on public.services for all to authenticated using (true) with check (true);
exception when duplicate_object then null; end $$;
do $$ begin
  create policy "auth appointments" on public.appointments for all to authenticated using (true) with check (true);
exception when duplicate_object then null; end $$;
do $$ begin
  create policy "auth sales" on public.sales for all to authenticated using (true) with check (true);
exception when duplicate_object then null; end $$;
do $$ begin
  create policy "auth products" on public.products for all to authenticated using (true) with check (true);
exception when duplicate_object then null; end $$;

insert into public.services(name,price,duration) values
('Corte',50,45),('Barba',30,30),('Limpieza facial',70,45),('Ondulado',150,90)
on conflict do nothing;
