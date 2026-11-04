# English Academy v2 — B2 + Advanced Plus

## Archivos
Subí a la raíz del repositorio `crumalux/english-academy` los archivos `index.html` (reemplazar el existente), `higher.js` y `higher-data.js` (nuevos). **No es necesario reemplazar `app.js`, `config.js` ni `supabase.sql` si ya funcionan.**

## Qué incorpora
- 20 lecciones B2 (Upper-Intermediate Workbook), 16 lecciones de Advanced Plus (práctica avanzada).
- Explicaciones, ejemplos, reading, listening con voz del navegador y 2 preguntas gramaticales originales por lección.
- 18 exámenes por unidad (10 B2 y 8 Advanced Plus), repaso acumulativo y registro de respuestas.
- Conserva las lecciones y el historial B1 anteriores.

## Limitaciones importantes
- El material de práctica es original y se organiza por el índice de los libros; no copia sus actividades ni incluye audio editorial.
- La voz depende de speechSynthesis del navegador.
- La corrección de reading/listening por palabras clave puede marcar como incorrectas respuestas válidas.
- Los quizzes de dos preguntas por lección son una base inicial, no una evaluación CEFR certificada.
- El nuevo historial se guarda en localStorage con clave propia y, si Supabase está configurado y la sesión existe, se intenta registrar también en la tabla attempts. Para ver historial consolidado B1+B2+C1 hará falta una iteración adicional.
- GitHub Pages publica archivos públicamente; iniciar sesión con Supabase no convierte el código del sitio en privado.
