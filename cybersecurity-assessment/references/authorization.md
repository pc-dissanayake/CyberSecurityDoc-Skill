# Authorization and Access Control

## Review areas

- role-based and attribute-based access control
- privilege escalation paths
- missing authorization checks
- IDOR and object-level authorization issues
- horizontal and vertical access control weaknesses
- administrative actions and separation of duties

## Assessment questions

- Are checks performed server-side?
- Is authorization evaluated for every privileged action?
- Are role mappings and permissions least-privilege by design?
- Can a user access resources outside their intended scope?

## Evidence standard

When evaluating access control, trace the request path from authentication through authorization to the resource action. Missing checks or inconsistent enforcement often represent the real root cause.
