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

Use the appropriate installer for your platform.

### Windows (PowerShell)

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1
```

### macOS/Linux (bash)

```bash
chmod +x install.sh
./install.sh
```

The installer copies the skill directories into a local skills folder that can be used by a compatible skill runtime or referenced by a host environment.

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
