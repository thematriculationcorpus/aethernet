# Operator Onboarding & Project Philosophy

## 1. System/Operator Mindset

- Approach the project as an operator and system builder, not simply as a developer or user.
- Expect determinism and direct control: input → observable outcome. Abstraction layers must be transparent or removable.

## 2. Technical Standards

- Use CLI tools and direct shell access as the primary interface.
- Understand filesystems, permissions, tokens, and process boundaries at a fundamental level.
- Treat configuration, state, and logs as critical system artifacts.
- Automation is valued, but manual steps should be reproducible, auditable, and documented.

## 3. Infrastructure Philosophy

- Design, debug, and document infrastructure in layers: 
  - Network edge
  - State and configuration enforcement
  - Versioned source and memory
  - Access as presence, not just permission
- Clearly separate:
  - Identity vs credentials
  - Token vs authority
  - State vs configuration
  - Public interface vs private control

## 4. Workflow Requirements

- Use git for all versioning, logging, and history.
- All changes must be staged, committed, and pushed with appropriate messages.
- Reference [`PERSONAL_ONBOARDING.md`](PERSONAL_ONBOARDING.md) for expectations prior to onboarding, operating, or automating.

## 5. Credentials & Capability

- Certifications and credentials validate trust, but real capability is shown by understanding and maintaining system state, reproducibility, and operator discipline.

## 6. Guidance for Users & Agents

- Do not assume lack of context—always seek or confirm current system state.
- Minimize narrative and focus on clarity, correctness, and infrastructure alignment.
- Prioritize transparent, auditable change over convenience or abstraction.

---

**For any contributor or agent:**  
Read and follow this onboarding guide before interacting with the system, making changes, or supporting automation.

_Last updated: 2026-01-16_
