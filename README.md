# Cybersecurity Assessment Skills

This repository contains a reusable cybersecurity assessment skill pack for authorized defensive security review work.

## Included skills

- `cybersecurity-assessment` — primary skill, with full references, templates, and an example
- `web-security` — web application entry point
- `api-security` — REST/GraphQL API entry point
- `cloud-security` — cloud environment entry point
- `infrastructure-security` — network and fleet entry point
- `server-security` — single-server (OS + server stack) entry point
- `security-reporting` — reporting entry point

The focused skills are lightweight entry points; their canonical guidance lives in the corresponding `cybersecurity-assessment/references/*` files, so substantive edits belong there to avoid drift.

## Repository layout

```text
cybersecurity-assessment/
├── SKILL.md
├── references/
│   ├── methodology.md
│   ├── web-application.md
│   ├── infrastructure.md
│   ├── server.md
│   ├── cloud.md
│   ├── api-security.md
│   ├── authentication.md
│   ├── authorization.md
│   ├── cryptography.md
│   ├── logging-monitoring.md
│   └── reporting.md
├── templates/
│   ├── executive-summary.md
│   ├── finding.md
│   ├── technical-report.md
│   └── remediation-plan.md
└── examples/
    └── sample-finding.md

web-security/SKILL.md
api-security/SKILL.md
cloud-security/SKILL.md
infrastructure-security/SKILL.md
server-security/SKILL.md
security-reporting/SKILL.md
```

## Install

Each skill is a directory containing a `SKILL.md` with YAML frontmatter (`name` + `description`) — this is [Anthropic's Agent Skills](https://docs.claude.com/en/docs/agents-and-tools/agent-skills/overview) format. **Claude Code loads it natively.** Codex CLI and Gemini CLI have no native skill loader, so for those you copy the same folders and add a one-line pointer in their context file.

### Quick install (any platform)

Use the bundled installer. By default it copies to `~/.skills`; pass a target directory to override.

<details>
<summary><b>Windows (PowerShell)</b></summary>

```powershell
# Default target (~/.skills)
powershell -ExecutionPolicy Bypass -File .\install.ps1

# Or install directly into Claude Code's skills folder
powershell -ExecutionPolicy Bypass -File .\install.ps1 "$HOME\.claude\skills"
```
</details>

<details>
<summary><b>macOS / Linux (bash)</b></summary>

```bash
chmod +x install.sh

# Default target (~/.skills)
./install.sh

# Or install directly into Claude Code's skills folder
./install.sh ~/.claude/skills
```
</details>

---

### Claude Code (native)

Claude Code auto-discovers skills in a `skills/` folder:

- **Personal (all projects):** `~/.claude/skills/`
- **Project (checked into repo):** `<project>/.claude/skills/`

```bash
cp -R cybersecurity-assessment web-security api-security cloud-security \
      infrastructure-security server-security security-reporting \
      ~/.claude/skills/
```

Run `/skills` in a session to confirm all seven appear. Claude loads `cybersecurity-assessment` automatically when a security task is described.

### Codex CLI (OpenAI)

Codex has no `SKILL.md` loader. Copy the skill folders into your project (e.g. `./skills/`), then point Codex at them via `AGENTS.md` (auto-read from the project root or `~/.codex/`):

```markdown
# AGENTS.md
For security assessment work, follow ./skills/cybersecurity-assessment/SKILL.md
and load the relevant file under ./skills/cybersecurity-assessment/references/
on demand.
```

Alternatively, drop a skill into `~/.codex/prompts/<name>.md` to invoke it as a `/<name>` slash prompt (flat file — you lose on-demand reference loading).

### Gemini CLI

Gemini CLI also has no native skill loader. Use its context file plus a custom command.

Add a pointer in `GEMINI.md` (project root or `~/.gemini/GEMINI.md`), same idea as `AGENTS.md` above. Then create `~/.gemini/commands/security.toml`:

```toml
description = "Load cybersecurity assessment skill"
prompt = "Follow @{skills/cybersecurity-assessment/SKILL.md} for this security assessment."
```

Invoke with `/security`. The `@{...}` inclusion pulls in the skill, and Gemini reads the referenced files on demand.

---

The installer copies each skill directory (any folder containing a `SKILL.md`) into the target skills folder, where a compatible skill runtime or host environment can reference it.

## Safety model

This skill pack is intentionally defensive and evidence-based:

- Focus on authorized assessment work
- Prefer passive review, source inspection, and safe validation
- Never recommend destructive, unauthorized, or high-risk testing
- Require evidence before asserting a vulnerability
- Separate confirmed findings from suspected or theoretical risks

## Typical usage

Use the primary cybersecurity assessment skill for broad reviews, then load a focused sub-skill when needed:

- web-security
- api-security
- cloud-security
- infrastructure-security
- server-security
- security-reporting

You can extend the pack with additional skill directories as your assessment scopes expand.

## Contributors

- [Claude](https://github.com/claude)
- [OpenAI Codex](https://openai.com/codex)
