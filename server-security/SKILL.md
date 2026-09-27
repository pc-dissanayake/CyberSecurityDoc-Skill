---
name: server-security
description: Assess the security posture of an individual server, covering operating system hardening, web/application server configuration, services and daemons, local accounts and privileges, file permissions, patching, and host logging and detection.
---

# Server Security

Review a specific server as a hardened host plus its server software stack. This
is narrower than infrastructure-security, which looks at the network and fleet;
use this skill when the unit under review is one machine.

## Review checklist

- OS hardening, patch level, and CIS Benchmark alignment
- host firewall and mandatory access control (SELinux/AppArmor)
- default and unused accounts, changed vendor credentials
- least-privilege service accounts (no needless root/SYSTEM)
- SSH/RDP hardening and restricted admin access
- web/app server version, banner disclosure, and directory listing
- exposed admin consoles, sample apps, and status pages
- TLS termination and server-layer security headers
- listening services bound to the narrowest interface needed
- file ownership and permissions on config, key, and secret files
- host logging, audit trails, EDR/file integrity monitoring
- backup existence, protection, and validated restore

## Assessment approach

Favor authenticated configuration review, read-only inspection of running
services and permissions, and comparison against a hardening benchmark. Avoid
destructive probing or exploitation without explicit scope and approval. Public
reachability of a service is a question to investigate, not an automatic finding.

## Authoritative reference

This checklist is a quick entry point. The detailed, canonical guidance lives in
the main assessment skill: `cybersecurity-assessment/references/server.md`. Keep
substantive changes there to avoid drift.
