# Cloud Security

## Focus areas

- IAM and role design
- least privilege and segregation of duties
- public exposure risks
- storage bucket permissions
- network firewall and security group rules
- secrets management
- KMS and encryption keys
- logging and audit trails
- cross-account trust and federation
- backup and disaster recovery

## Common pitfalls

- overly permissive IAM policies
- public read/write object storage
- open ingress rules beyond business need
- hardcoded secrets in infrastructure code or environment variables
- missing monitoring and alerting for privileged actions

## Risk framing

A cloud resource is not inherently vulnerable just because it is reachable. The real question is whether exposure is necessary, intended, and protected by appropriate controls.
