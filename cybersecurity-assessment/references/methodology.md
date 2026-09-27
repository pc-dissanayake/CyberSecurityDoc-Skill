# Methodology and Frameworks

This reference provides the core assessment methodology used across the skill pack.

## Assessment model

1. Define scope and authorization
2. Inventory assets and trust boundaries
3. Evaluate architecture and controls
4. Review configuration, code, and deployment posture
5. Validate findings through supported evidence collection
6. Rate risk with likelihood and impact
7. Prioritize remediation and reporting

## Applicable frameworks

- OWASP ASVS: secure design and implementation controls
- OWASP Top 10: high-value web application risks
- OWASP API Security Top 10: API-specific weaknesses and abuse patterns
- CWE: weakness taxonomy and root-cause mapping
- CVE: known vulnerabilities in components and technologies
- CVSS: scoring for severity and exploitability
- NIST CSF: governance, protection, detection, response, recovery
- CIS Controls: operational control baselines
- CIS Benchmarks: configuration hardening guidance
- MITRE ATT&CK: attacker behaviors and tactics

## Risk interpretation

- A finding is not automatically exploitable just because it is present.
- Exposure alone does not imply compromise.
- A missing control is not equivalent to a confirmed vulnerability.
- Scanner output must be validated to become a defensible assessment finding.

## Evidence standard

For each finding, document:

- affected component or asset
- exact condition observed
- relevant configuration, code, or behavior
- actor or access path required
- impact on confidentiality, integrity, or availability
- remediation direction
- how the claim was verified

## Reporting standard

Every assessment should separate:

- confirmed findings
- probable findings
- potential risks requiring additional evidence
- informational observations

This avoids overstating certainty and maintains defensibility.
