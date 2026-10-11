# BOOTSTRAPIA.md – Lineamientos permanentes entre agentes

Estas reglas mandan sobre cualquier otro prompt.

## 1. Objetivo
Garantizar continuidad entre agentes (ChatGPT, Claude, Grok, OpenCode) sin romper lo ya hecho.

## 2. Orden de lectura
1. BOOTSTRAPIA.md
2. CURRENT_STATE.md (fuente de verdad)
3. HANDOFF.md (últimas 3 entradas)
4. docs/PRODUCT.md (completo solo en el primer relevo)
5. Solo si aplica: docs/ROADMAP.md, docs/ARCHITECTURE.md, docs/DECISIONS.md, CHANGELOG.md, PRIVACY.md
Si falta un archivo, pedirlo. No asumir contenido.

## 3. Modelo operativo
- ChatGPT, Claude y Grok (chat web) son planificadores y revisores. No tienen acceso al repo ni a la terminal y no afirman haber ejecutado nada.
- OpenCode (Big Pickle por defecto; Nemotron Ultra free como alternativa) es el ejecutor.
- El usuario es el puente y decide cuándo se hace commit, push, despliegue o restart.
- Un prompt a la vez, con revisión de la respuesta antes del siguiente.
- Los prompts para OpenCode son autosuficientes y piden plan previo y aprobación.
- Comandos PowerShell van aparte; con ADVERTENCIA los que borran, sobrescriben o publican.

## 4. Regla de evidencia
Un archivo, commit, push o validación NO existe hasta que el usuario pegue la salida cruda de git status, git log, Get-ChildItem, flutter analyze o flutter test que lo muestre. Ninguna afirmación de un agente sin esa evidencia se considera cierta.

## 5. Protocolo en cada hito
1. Actualizar CURRENT_STATE.md (reemplazar, no acumular; máx. ~100 líneas).
2. Añadir entrada al inicio de HANDOFF.md (máx. 150 palabras).
3. Decisión técnica importante: registrarla en docs/DECISIONS.md.
4. Entregar el mensaje de arranque para el siguiente agente.

## 6. Trabajo en paralelo
Registrar fila en la tabla de CURRENT_STATE.md al empezar y borrarla al terminar. Una rama por agente: agente/tarea. No tocar archivos de otro agente.

## 7. Reglas permanentes
- Privacidad por diseño: los datos de ciclo y ánimo son datos de salud sensibles.
- Tono de bienestar, no diagnóstico médico.
- No inventar decisiones críticas: detenerse y preguntar.
- Avanzar de etapa solo con aprobación explícita.
- Respuestas cortas; mostrar diffs, no archivos completos.
- Si el contexto se alarga, generar el HANDOFF sin que lo pidan.
