# MEMORIA PERMANENTE — ALMACENAMIENTO AUTORITATIVO Y VERIFICACIÓN

La campaña **Jack Wilson Original Campaign** usa un flujo obligatorio de dos etapas:

1. **GitHub = área temporal de verificación.**
2. **Google Drive = almacenamiento autoritativo permanente.**

## Reglas obligatorias

1. Nunca usar un ZIP como única fuente del estado del mundo.
2. Todo dato autoritativo debe existir descomprimido y accesible individualmente en Google Drive.
3. Los ZIP solo pueden servir como respaldo, snapshot, distribución o recuperación.
4. Antes de copiar cualquier archivo nuevo o modificado a Google Drive, colocarlo primero en el repositorio temporal de GitHub para verificarlo.
5. En GitHub se debe validar, como mínimo:
   - sintaxis JSON/Markdown aplicable;
   - nombres y rutas;
   - IDs únicos y estables;
   - referencias cruzadas;
   - cronología;
   - límites de tamaño;
   - SHA-256;
   - manifiesto;
   - ausencia de archivos duplicados exactos;
   - ausencia de contenido prohibido o copiado de la novela de referencia;
   - compatibilidad con el canon existente.
6. Solo los archivos que pasen todas las verificaciones pueden copiarse a Google Drive.
7. Después de copiarlos a Google Drive, volver a verificar nombres, tamaños, hashes y ubicación.
8. Google Drive se convierte en la fuente autoritativa únicamente después de esa segunda verificación.
9. GitHub nunca será la única copia permanente del canon.
10. El contenido temporal de GitHub puede eliminarse después de confirmar la integridad en Google Drive y conservar los reportes de auditoría necesarios.
11. Nunca eliminar un archivo autoritativo de Google Drive antes de que exista un reemplazo verificado y una vía de rollback.
12. Cada archivo autoritativo debe poder abrirse, leerse, modificarse, verificarse y reemplazarse individualmente.
13. Mantener archivos pequeños y temáticos, no bases monolíticas innecesarias.
14. Cada archivo debe registrar, cuando aplique:
   - ID estable;
   - versión;
   - autoridad;
   - fecha de creación;
   - fecha de modificación;
   - dependencias;
   - referencias;
   - historial o migración;
   - SHA-256.
15. Si el destino tiene un límite de 100 MiB, ningún archivo puede superar 90 MiB (94,371,840 bytes).
16. Si un archivo puede superar ese límite, dividirlo antes de subirlo y generar:
   - `MANIFEST.json`;
   - `checksums.sha256`;
   - tamaños exactos;
   - orden de reconstrucción;
   - instrucciones de reconstrucción;
   - informe de verificación.
17. No usar Git LFS, GitHub Actions pagadas, Codespaces pagados ni servicios con riesgo de cargos sin autorización explícita.
18. No crear relleno artificial para ocupar almacenamiento.
19. La campaña debe poder reconstruirse usando los archivos descomprimidos de Google Drive sin depender de los ZIP.
20. Toda nueva conversación debe leer primero esta política y el archivo de arranque antes de modificar canon o continuar la historia.

## Flujo obligatorio por lote

1. Generar archivos individuales.
2. Crear manifiesto y checksums.
3. Subir archivos individuales a GitHub temporal.
4. Ejecutar o realizar verificación estructural y canónica.
5. Registrar el resultado en un reporte de auditoría.
6. Corregir cualquier fallo.
7. Copiar los archivos aprobados a Google Drive en su carpeta temática.
8. Verificar nuevamente Drive contra el manifiesto aprobado.
9. Marcar Google Drive como autoritativo para esa versión.
10. Conservar o eliminar el contenido temporal de GitHub según sea necesario, sin perder el reporte de auditoría.

## Estructura autoritativa recomendada en Google Drive

```text
Juego de chat gpt/
└── Jack_Wilson_Original_Campaign/
    ├── 00_BOOTSTRAP/
    ├── 01_CANON/
    ├── 02_WORLD/
    ├── 03_CHARACTERS/
    ├── 04_LOCATIONS/
    ├── 05_EVENTS/
    ├── 06_RELATIONSHIPS/
    ├── 07_QUESTS/
    ├── 08_ITEMS/
    ├── 09_ABILITIES/
    ├── 10_SYSTEMS/
    ├── 11_SIMULATION/
    ├── 12_VALIDATION/
    ├── 13_BATCH_HISTORY/
    └── 99_BACKUPS/
```

## Principio final

**GitHub verifica. Google Drive conserva y manda. Los ZIP respaldan, pero nunca sustituyen los archivos autoritativos descomprimidos.**
