ESSENCE BARBER STUDIO — V2
================================
Incluye:
- Inicio de sesión por correo/contraseña cuando se conecta Supabase.
- Panel responsive para celular y computadora.
- Clientes, barberos, servicios, citas, ventas y productos.
- Calendario y reportes básicos.
- Modo demo local para probar la interfaz antes de conectar la nube.

PARA HACERLO MULTIDISPOSITIVO:
1) Crea un proyecto en Supabase.
2) Abre SQL Editor y ejecuta supabase-schema.sql.
3) En Authentication crea el usuario administrador con correo y contraseña.
4) Abre index.html.
5) Pulsa "Configurar conexión" y coloca el Project URL y la Publishable/Anon Key.
6) Inicia sesión.

SEGURIDAD:
- El esquema activa Row Level Security.
- Usa únicamente la clave publishable/anon en el navegador.
- Nunca pongas una service_role/secret key dentro de index.html.

IMPORTANTE:
Esta versión todavía no incluye un servidor de WhatsApp ni pagos online. Las reservas se gestionan dentro del panel. El botón/enlace de WhatsApp y los roles finos por barbero son la siguiente etapa.
