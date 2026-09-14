ESSENCE BARBER STUDIO — V4

Esta versión agrega la estructura para operar como sistema real:
- Roles: owner, admin y barber.
- Configuración del WhatsApp del negocio.
- Flujo de citas: Solicitada → Confirmada → En curso → Completada / Cancelada / No asistió.
- Pago y método de pago por cita.
- Comisión automática del barbero al completar una cita.
- Vinculación opcional entre venta y cita.

CONFIGURACIÓN
1. Crea tu proyecto en Supabase.
2. Ejecuta primero supabase-schema.sql.
3. Ejecuta supabase-v3-migration.sql.
4. Ejecuta supabase-v4-upgrade.sql.
5. Crea tu usuario de acceso en Authentication.
6. En staff_profiles registra ese user_id como owner.
7. En shop_settings coloca el WhatsApp público de ESSENCE.
8. En el panel configura la URL y publishable/anon key de Supabase.

SEGURIDAD
- Nunca pongas una secret/service_role key dentro de index.html.
- La clave publicable/anon debe usarse junto con RLS.
- Antes de publicar, revisa las políticas y permisos de cada tabla.

WHATSAPP
El botón de reserva puede generar un mensaje listo para enviar al WhatsApp del negocio. El número se guarda en shop_settings para no tener que modificar el código cada vez.
