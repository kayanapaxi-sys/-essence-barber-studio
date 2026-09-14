-- ESSENCE V3: campos para solicitudes públicas y comisiones
alter table public.appointments add column if not exists phone text;
alter table public.barbers add column if not exists commission_percent numeric(5,2) default 0;
alter table public.sales add column if not exists barber_name text;

-- IMPORTANTE: la política pública solo permite crear solicitudes de cita.
-- No crea permiso de lectura público.
do $$ begin
  create policy "public can request appointments"
  on public.appointments
  for insert to anon
  with check (
    status = 'Solicitada'
    and length(trim(client_name)) between 2 and 100
    and length(trim(phone)) between 5 and 30
    and date >= current_date
  );
exception when duplicate_object then null; end $$;

-- Si ya tienes una política "auth appointments" de V2, los usuarios autenticados
-- seguirán trabajando con ella.
