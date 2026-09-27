---
name: web-security
description: Assess web application security issues including authentication, authorization, input validation, XSS, SSRF, CSRF, headers, session handling, and deployment posture.
---

# Web Security

Focus on web application attack surface and risk, including browser-facing flows, server-side trust boundaries, and session behavior.

## Review checklist

- auth flow and password handling
- session fixation and token hygiene
- security headers
- CSRF and clickjacking controls
- XSS and content injection
- SSRF and unsafe outbound requests
- CORS policy correctness
- rate limiting and abuse controls
- file upload/download handling
- business logic weaknesses

## Remediation mindset

Prefer defense-in-depth controls and evidence-backed remediation. Avoid recommending tests that could harm the application or user data.

## Authoritative reference

This checklist is a quick entry point. The detailed, canonical guidance lives in the main assessment skill: `cybersecurity-assessment/references/web-application.md`. Keep substantive changes there to avoid drift.
