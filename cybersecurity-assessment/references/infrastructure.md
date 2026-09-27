# Infrastructure Security

## Review areas

- exposed services and ports
- firewall segmentation and network design
- SSH, RDP, and remote admin exposure
- configuration drift and hardening posture
- OS patching and service patch status
- Linux and Windows security baselines
- backup integrity and restore readiness
- service accounts and privilege boundaries
- host-based protections
- logging and monitoring coverage

## Assessment questions

- Are only required ports exposed?
- Are administrative interfaces restricted?
- Are services using least-privilege identities?
- Are secrets managed outside of configuration files?
- Is logging sufficient for detection and forensic review?

## Safe validation

Use passive inspection and controlled configuration review when validating infrastructure posture. Avoid destructive probing or broad scanning without explicit scope and approval.
