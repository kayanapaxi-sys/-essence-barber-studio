ESSENCE BARBER STUDIO — V5 PREMIUM
===================================

Incluye:
- Dashboard premium y responsive.
- Agenda y flujo de estados de citas.
- Clientes VIP: cumpleaños, visitas, gasto, nivel y WhatsApp.
- Barberos: desempeño y comisión estimada.
- Servicios.
- Ventas + caja + cierre diario.
- Inventario + stock mínimo + alertas.
- Fidelización ESSENCE / ESSENCE BLACK / ESSENCE VIP.
- Reportes y gráfico de 7 días.
- Centro de Inteligencia ESSENCE con recomendaciones calculadas desde los datos.
- Configuración del negocio.
- Página pública reservar.html.
- WhatsApp del negocio integrado en la reserva.
- Captura opcional de cumpleaños desde la reserva.
- Modo demo local: funciona sin Supabase y guarda los datos en el navegador.
- Preparación para Supabase con migración V5.

PARA USARLO
1. Abre index.html para probar el panel en modo demo.
2. Para nube/multidispositivo: crea un proyecto Supabase.
3. Ejecuta, en orden:
   supabase-schema.sql
   supabase-v3-migration.sql
   supabase-v4-upgrade.sql
   supabase-v5-premium.sql
4. En el panel > Configuración coloca Project URL + Publishable/Anon Key.
5. Publica la carpeta en Vercel u otro hosting estático.
6. Comparte reservar.html con tus clientes.

SEGURIDAD
- Nunca uses service_role/secret key en el navegador.
- Mantén RLS activo.
- Antes de producción, revisa las políticas de inserción pública de reservas.
- El modo demo es local al dispositivo; no sincroniza entre celulares.

WHATSAPP
- El botón de reserva abre el WhatsApp de ESSENCE con el detalle de la cita.
- El panel permite felicitar cumpleaños y recuperar clientes inactivos mediante WhatsApp.

NOTA
La "Inteligencia ESSENCE" de esta versión es analítica basada en reglas y datos del panel; no es un servicio de IA externo.
