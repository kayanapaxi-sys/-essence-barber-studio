# ESSENCE Barber Studio — V3

## Lo nuevo
- `index.html`: panel administrativo.
- `reservar.html`: página pública para que un cliente solicite una cita.
- La reserva puede continuar por WhatsApp usando el número que el cliente seleccione/complete; no se guarda ningún número personal dentro del código.
- Preparado para Supabase Auth + PostgreSQL.
- Los datos de citas incluyen estado `Solicitada`, para que el administrador pueda confirmarlas.
- La arquitectura está lista para añadir comisiones por barbero y permisos por usuario.

## Para ponerlo online
1. Crea un proyecto en Supabase.
2. Abre SQL Editor.
3. Ejecuta `supabase-schema.sql`.
4. En Authentication crea el usuario administrador.
5. Abre el panel y pulsa Configurar conexión.
6. Coloca la Project URL y la Publishable/Anon Key.
7. Publica la carpeta en un hosting estático.
8. Comparte el enlace `/reservar.html` con tus clientes.

## Importante
- Usa solo la Publishable/Anon Key en el navegador.
- Nunca pongas una `service_role` o secret key en los archivos públicos.
- Para una versión de producción, las reservas públicas deberían tener una política RLS específica para insertar solo solicitudes permitidas y no dar acceso público a clientes/ventas.
