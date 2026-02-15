# MAX

The MAX repository is a modular, phase‑based runtime system built around a unified engine, an orchestrator, and four progressively more capable GitHub Actions runtimes. The system is designed to scale from minimal execution to full orchestration, multi‑run batching, session logging, and metadata expansion.

---

## Repository Structure

MAX/
│
├── README.md
├── workflow.yml
├── orchestrator.sh
│
├── max-engine/
│   ├── engine.js
│   ├── engine.md
│   ├── metadata.js
│   ├── orchestrator-generator.js
│   └── modules/
│       ├── index.js
│       ├── module-01.js
│       ├── module-02.js
│       ├── module-03.js
│       ├── module-04.js
│       ├── module-05.js
│       ├── module-06.js
│       ├── module-07.js
│       ├── module-08.js
│       ├── module-09.js
│       ├── module-10.js
│       ├── module-11.js
│       ├── module-12.js
│       ├── module-13.js
│       ├── module-14.js
│       ├── module-15.js
│       ├── module-16.js
│       ├── module-17.js
│       ├── module-18.js
│       ├── module-19.js
│       ├── module-20.js
│       ├── module-21.js
│       ├── module-22.js
│       ├── module-23.js
│       ├── module-24.js
│       └── module-25.js
│
└── .github/
    └── workflows/
        ├── max-runtime-option-a.yml
        ├── max-runtime-option-b.yml
        ├── max-runtime-option-c.yml
        └── max-runtime-option-d.yml

---

## Overview

The MAX system evolves through four phases, each adding new capabilities while keeping the architecture clean and modular.

### Phase 1 — Foundation
A minimal repository containing:
- README.md  
- workflow.yml  
- a single runtime (Option A)

### Phase 2 — Engine Installation
Adds the MAX Engine v6:
- core execution (`engine.js`)
- documentation (`engine.md`)
- 25‑module stack
- metadata expansion layer

### Phase 3 — Orchestrator Installation
Adds:
- `orchestrator.sh`  
A universal entry point that routes input through the engine.

### Phase 4 — Runtime Expansion
Adds four GitHub Actions workflows:

#### Option A — Baseline Runtime
Runs the engine once with a single input.

#### Option B — Multi‑Run Runtime
Executes the engine multiple times in sequence.

#### Option C — Session‑Logging Runtime
Creates timestamped session folders and logs output.

#### Option D — Full Orchestration Runtime
Combines:
- multi‑run execution  
- session logging  
- run folders  
- aggregated output (`combined.json`)

This is the most advanced runtime mode.

---

## MAX Engine v6

The engine provides a unified execution model:

- runs input through a 25‑module stack  
- records before/after values for each module  
- enriches results with metadata  
- returns a structured, traceable output object  

The engine is stable, deterministic, and designed for orchestration.

---

## Module Stack

The `modules/` directory contains 25 modules.  
Each module:

- receives the current value  
- receives the execution context  
- returns a transformed value  

The stack is executed in order via `modules/index.js`.

---

## Metadata Layer

`metadata.js` enriches every run with:

- timestamps  
- duration  
- input/output types  
- module count  
- tags and notes  
- run identifiers  

This enables session analysis and future dashboard integration.

---

## Orchestrator

`orchestrator.sh` is the universal entry point for all runtime modes.  
It:

- accepts input  
- invokes the engine  
- prints structured JSON output  

All GitHub Actions workflows call this script.

---

## Orchestrator Generator

`orchestrator-generator.js` can generate new orchestrators automatically.  
This enables future expansion into specialized runtimes.

---

## Status

The MAX system is fully operational with all four runtime modes installed.  
The engine, orchestrator, metadata layer, and module stack are complete.  
The repository is now a platform capable of continuous expansion.

---

## Next Steps

Future expansions may include:

- MAX Dashboard (HTML/JSON hybrid)
- Session Indexer
- Run Analyzer
- Advanced module types (transformers, enrichers, validators, generators)
- Automated documentation generation

The system is ready for higher‑level tooling and visualization layers.

