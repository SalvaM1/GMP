# rtk: comandos para dejarlo enganchado

[rtk](https://github.com/rtk-ai/rtk) (Rust Token Killer) filtra la salida de los comandos
antes de que la lea el modelo. El hook es lo que lo hace automático: sin hook hay que
escribir `rtk <comando>` a mano.

Ojo con el homónimo: `cargo install rtk` puede traer **Rust Type Kit**, que es otro
proyecto. La prueba de que tenés el correcto es que `rtk gain` responda.

## 1. Instalar

```bash
# Linux / macOS
curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/master/install.sh | sh

# macOS con Homebrew
brew install rtk

# Windows
winget install rtk-ai.rtk
```

Si el instalador corta con `GitHub API may be rate-limited` (pasa cuando la API de GitHub
responde 403, por ejemplo desde un contenedor), fijá la versión:

```bash
RTK_VERSION=v0.49.0 sh -c 'curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/master/install.sh | sh'
```

Queda en `~/.local/bin`. Si no está en el PATH:

```bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc   # o ~/.zshrc
```

Verificar:

```bash
rtk --version
rtk gain        # tiene que mostrar el panel de ahorro, no "command not found"
which rtk
```

## 2. Hook global (tu máquina, todos los proyectos)

```bash
rtk init -g
```

Pregunta `Patch existing ~/.claude/settings.json? [y/N]` → **respondé `y`**. Después
reiniciá Claude Code. Eso deja registrado:

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [{ "type": "command", "command": "rtk hook claude" }]
      }
    ]
  }
}
```

Si el comando corre sin terminal interactiva (o querés hacerlo a mano), el parche
equivalente con `jq`:

```bash
mkdir -p ~/.claude
touch ~/.claude/settings.json
[ -s ~/.claude/settings.json ] || echo '{}' > ~/.claude/settings.json
jq '.hooks.PreToolUse += [{"matcher":"Bash","hooks":[{"type":"command","command":"rtk hook claude"}]}]' \
  ~/.claude/settings.json > ~/.claude/settings.json.tmp && mv ~/.claude/settings.json.tmp ~/.claude/settings.json
jq -e '.hooks.PreToolUse[].hooks[].command' ~/.claude/settings.json   # validar
```

Comprobar que quedó activo: reiniciá Claude Code y corré `git status`. Si el hook
funciona, rtk reescribe el comando a `rtk git status`.

## 3. Hook del repositorio (lo que viaja a GitHub)

Ya está hecho en este repo. `rtk init` (sin `-g`) **no** instala el hook: solo agrega
las instrucciones al `CLAUDE.md`. El hook de proyecto hay que escribirlo en
`.claude/settings.json`, y es lo que hace que las sesiones en la nube también lo usen.

Archivos commiteados:

| Archivo | Para qué |
|---|---|
| `.claude/settings.json` | `SessionStart`: instala rtk si falta (versión fijada `v0.49.0`). `PreToolUse` con matcher `Bash`: corre `rtk hook claude`. |
| `CLAUDE.md` | Bloque `rtk-instructions`: le avisa al modelo que la salida viene condensada y cómo recuperarla (`rtk proxy <cmd>`). Lo generó `rtk init`. |
| `.rtk/filters.toml` | Filtros propios del proyecto (plantilla vacía con ejemplos). |

Los dos hooks son a prueba de fallos: si `rtk` no está en el PATH, el `PreToolUse`
termina en `exit 0` sin reescribir nada, así que ningún comando se rompe.

Para reproducirlo en otro repo:

```bash
rtk init                      # CLAUDE.md + .rtk/filters.toml
mkdir -p .claude
cat > .claude/settings.json <<'JSON'
{
  "hooks": {
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "if command -v rtk >/dev/null 2>&1; then exit 0; fi; RTK_VERSION=v0.49.0 curl -fsSL https://raw.githubusercontent.com/rtk-ai/rtk/master/install.sh | sh >/dev/null 2>&1; exit 0",
            "timeout": 120
          }
        ]
      }
    ],
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          { "type": "command", "command": "command -v rtk >/dev/null 2>&1 && rtk hook claude || exit 0" }
        ]
      }
    ]
  }
}
JSON
git add .claude/settings.json CLAUDE.md .rtk/filters.toml && git commit -m "Hook de rtk"
```

Antes de commitear, probá el hook sin esperar a que se dispare:

```bash
echo '{"tool_name":"Bash","tool_input":{"command":"git status"}}' \
  | sh -c "$(jq -r '.hooks.PreToolUse[0].hooks[0].command' .claude/settings.json)"
# tiene que imprimir updatedInput con "rtk git status"
```

El `SessionStart` baja y ejecuta el instalador de rtk desde GitHub en cada sesión nueva
que no tenga rtk. Si no querés eso, borrá ese bloque y dejá solo el `PreToolUse`: en una
máquina donde rtk ya está instalado alcanza.

## 4. Ver cuánto ahorra

```bash
rtk gain              # resumen e historial por comando
rtk cc-economics      # gasto (ccusage) contra ahorro de rtk
rtk discover          # comandos del historial donde rtk hubiera ahorrado
rtk config --show     # configuración actual
```

## 5. Otros agentes

Mismo comando, cambiando el destino:

```bash
rtk init -g --agent cursor        # claude (default), cursor, windsurf, cline,
                                  # kilocode, antigravity, kimi, pi, hermes,
                                  # droid, vibe, omp
rtk init -g --gemini              # Gemini CLI
rtk init -g --opencode            # plugin de OpenCode
```
