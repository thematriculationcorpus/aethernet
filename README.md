# AETHERNET

## Purpose
AETHERNET serves as the Source of Truth for all components in the stack. It governs architecture, code, workflows, and documentation to ensure continuity, clarity, and control.

## Build Sequence
1. GitHub → Establish the Source of Truth
2. Local AI → Stabilize reasoning models
3. Edge → Define a minimal public interface
4. Containers → Make everything portable
5. Automation → Add workflows after clarity
6. Server → Execution comes last

## Core Rules
1. Local-first: Everything must run locally first.
2. Versioned-only: If it’s not versioned here, it’s not real.
# Add, commit, push
git add README.md
git commit -m "Add AETHER documentation"
git push
## Architecture

```
AETHERNET/
├── agents/          # 50 specialized AI agents
├── docker/          # Container configurations
├── docs/            # Documentation
└── core/            # Core system files
```

## Quick Start

```bash
# Clone repository
git clone https://github.com/thematriculationcorpus/aethernet.git

# Navigate to project
cd aethernet

# Run locally (Docker required)
docker-compose up
```

## Agent Roster

See [AGENT_ROSTER.md](AGENT_ROSTER.md) for complete agent documentation.
## Purpose
AETHERNET serves as the Source of Truth for all components in the stack. It governs architecture, code, workflows, and documentation to ensure continuity, clarity, and control.

## Build Sequence
1. **GitHub** → Establish the Source of Truth
2. **Local AI** → Stabilize reasoning models
3. **Edge** → Define a minimal public interface
4. **Containers** → Make everything portable
5. **Automation** → Add workflows after clarity
6. **Server** → Execution comes last

## Core Rules
1. **Local-first:** Everything must run locally first.
2. **Versioned-only:** If it’s not versioned here, it’s not real.

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
# Clone repository
git clone https://github.com/thematriculationcorpus/aethernet.git

# Navigate to project
cd aethernet

# Run locally (Docker required)
docker-compose up
```

---

## Agent Roster

See [AGENT_ROSTER.md](AGENT_ROSTER.md) for complete agent documentation.

---

## Status

🚧 Active Development - Local-first, version-controlled system  
[![BAE:005 Continuity Enforcement](https://img.shields.io/badge/BAE:005-Continuity%20Enforced-blueviolet)](./BAEs/BAE005/CONTINUITY.md)
## Status

🚧 Active Development - Local-first, version-controlled system
[![BAE:005 Continuity Enforcement](https://img.shields.io/badge/BAE:005-Continuity%20Enforced-blueviolet)](./BAEs/BAE005/CONTINUITY.md)
