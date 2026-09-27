# Server Security

Assessment of an individual server (host + its server software stack): operating
system hardening, the web/application server, services and daemons, accounts, and
the local security controls that protect the machine. This is narrower than
`infrastructure.md`, which looks at the network and fleet as a whole; use this
reference when the unit under review is a specific server.

## Review areas

### Operating system hardening
- patch level and unattended/managed update posture
- CIS Benchmark alignment for the OS (Linux/Windows)
- mandatory access control (SELinux, AppArmor) enabled and enforcing
- host firewall rules (iptables/nftables/ufw, Windows Firewall)
- kernel and sysctl hardening (ASLR, disabled unused modules)
- time synchronization (NTP) for reliable, correlatable logs

### Accounts and access
- default, unused, or shared accounts removed or disabled
- default/vendor credentials changed
- least-privilege for service accounts; no services running as root/SYSTEM without cause
- `sudo`/administrator group membership scoped and justified
- SSH/RDP hardening: key-based auth, disabled root login, restricted source ranges
- password and lockout policy on local accounts

### Server software configuration
- web/app server (nginx, Apache, IIS, Tomcat, etc.) version supported and patched
- server version/banner disclosure minimized
- directory listing disabled; no source, backup, or `.git`/`.env` files served
- default sample apps, admin consoles, and status pages removed or restricted
- secure TLS termination (see `cryptography.md`) and HSTS where appropriate
- security-relevant response headers set at the server layer
- request size, timeout, and connection limits set to resist resource exhaustion

### Services and daemons
- only required services enabled and listening
- listening services bound to the narrowest interface (localhost vs. 0.0.0.0)
- management/admin interfaces not exposed to untrusted networks
- inter-service authentication where services talk to each other

### File system and data
- correct ownership and permissions on config, key, and secret files
- world-readable secrets and credentials identified
- sensitive data at rest protected per policy
- temporary and upload directories not executable

### Detection and recovery
- host logging and audit (auditd/Event Log) capturing security-relevant events
- log shipping to a central, tamper-resistant store
- host-based protection (EDR/AV, file integrity monitoring) present and current
- backups exist, are protected, and restore has been validated

## Assessment questions

- Is the OS within a supported version and current on security patches?
- Are only the services the server actually needs running and reachable?
- Do services run under least-privilege identities rather than root/SYSTEM?
- Have default accounts, credentials, and sample content been removed?
- Are configuration and secret files protected by correct permissions?
- Would local logging and monitoring support detection and forensic review?

## Common findings

- unsupported or unpatched OS / server software
- default or unchanged administrative credentials
- verbose server banners and stack traces disclosing version and internals
- directory listing enabled or sensitive files (`.env`, backups, `.git`) served
- services listening on all interfaces when localhost would suffice
- world-readable private keys or configuration secrets
- host firewall and mandatory access control disabled

## Safe validation

Prefer authenticated configuration review, read-only inspection of running
services and file permissions, and comparison against a hardening benchmark.
Avoid destructive probing, exploitation, or broad scanning of the host without
explicit scope and approval. Treat public reachability of a service as a
question to investigate, not an automatic vulnerability — confirm whether the
exposure is intended and adequately controlled.
