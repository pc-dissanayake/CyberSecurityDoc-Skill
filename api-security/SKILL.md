---
name: api-security
description: Assess API security posture for REST, GraphQL, and backend services, focusing on auth, authorization, validation, rate limiting, abuse prevention, and sensitive data exposure.
---

# API Security

Assess the application's API surfaces using a defensive, evidence-based workflow.

## Focus areas

- authentication and authorization
- object-level access control
- rate limiting and abuse controls
- injection and unsafe parsing
- SSRF and outbound calls
- sensitive data exposure in responses
- schema validation and input sanitization
- caching and error handling
- dependency and version hygiene

## Safe validation

Use non-destructive testing, synthetic data, and controlled accounts only. Do not recommend destructive or data-exfiltration testing.

## Authoritative reference

This checklist is a quick entry point. The detailed, canonical guidance lives in the main assessment skill: `cybersecurity-assessment/references/api-security.md`. Keep substantive changes there to avoid drift.
