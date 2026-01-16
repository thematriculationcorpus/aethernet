AETHERNET serves as the Source of Truth for all components in the stack. It governs architecture, code, workflows, and documentation to ensure continuity, clarity, and control.

---

## Purpose

All system elements are documented, versioned, and reproducible.

---

## Build Sequence

1. **GitHub:** Establish the Source of Truth  
2. **Local AI:** Stabilize reasoning models  
3. **Edge:** Define minimal public interface  
4. **Containers:** Make everything portable  
5. **Automation:** Add workflows after clarity  
6. **Server:** Execution comes last  

---

## Core Rules

- **Local-first:** Everything must run locally first.
- **Versioned-only:** If it’s not versioned here, it’s not real.

---

## Architecture

```
AETHERNET/
├── agents/          # 50 specialized AI agents
├── docker/          # Container configurations
├── docs/            # Documentation
└── core/            # Core system files
```

---

## Quick Start

```bash
git clone https://github.com/thematriculationcorpus/aethernet.git

# Navigate to project directory
cd aethernet
docker-compose up
```

---

## Agent Roster

See [BELLADEX.md](BELLADEX.md) for the full agent roster, scopes, and system roles.

---

## Operator Onboarding

> 📚 Start with [d_ny5u5.md](d_ny5u5.md) for core operator/project standards.

---

## Status

🚧 Active Development — Local-first, version-controlled system  
[![BAE:005 Continuity Enforcement](https://img.shields.io/badge/BAE:005-Continuity%20Enforced-blueviolet)](./BAEs/BAE005/CONTINUITY.md)
