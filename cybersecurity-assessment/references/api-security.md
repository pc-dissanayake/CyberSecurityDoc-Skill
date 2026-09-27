# API Security

## Review areas

- authentication and token validation
- authorization checks and row-level access control
- rate limiting and abuse protection
- object enumeration and IDOR patterns
- input validation and schema enforcement
- SSRF from server-side fetches
- logging and monitoring for abuse
- sensitive data exposure in responses
- caching and cache poisoning behavior
- error handling and stack traces
- insecure direct object references

## Common weaknesses

- missing auth checks on privileged endpoints
- weak token validation or missing signing verification
- enumeration of internal IDs or resources
- excessive error detail in API responses
- no rate limiting or throttling to prevent brute force or abuse

## Safe validation

Use synthetic test accounts, non-destructive requests, and controlled proof-of-concept validation only within the authorized scope.
