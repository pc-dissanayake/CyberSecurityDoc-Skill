# Authentication

## Review areas

- password policy and brute force controls
- MFA enforcement
- session lifecycle and expiration
- token generation and storage
- credential recovery and reset flows
- account enumeration and lockout behavior
- SSO and federation validation
- secret rotation and recovery

## Security principles

- Prefer phishing-resistant MFA where feasible.
- Validate the trust model for external identity providers.
- Ensure password resets cannot be abused for account takeover.
- Review session fixation, rotation, and invalidation logic.
