# KoL HTML Matrix

A local-first, single-file KoLmafia scripting knowledge matrix for humans and coding agents.

The repository installs two coordinated planes:

- **Human / Relay UI** — the full interactive HTML5 matrix under KoLmafia's `relay/` tree.
- **Agent / data plane** — exact machine-readable payloads extracted from the matrix plus an agent bootstrap/readme under KoLmafia's `data/` tree.

The matrix UI is preserved byte-for-byte from the Project source artifact.

## Install with KoLmafia Git

Run in the KoLmafia gCLI:

```text
git checkout donCannoli-burns/kol-html-matrix
```

Update later with:

```text
git update kol-html-matrix
```

Remove with:

```text
git delete kol-html-matrix
```

KoLmafia's current script installer recognizes the repository-root `relay/` and `data/` directories and syncs them into the KoLmafia home.

## Open the human UI

Refresh/reopen the Relay Browser top menu after install and choose:

```text
-run script- → html matrix
```

KoLmafia's Relay menu scans the **top level** of the relay directory for `relay_*.ash` / `relay_*.js`. This repository therefore installs a tiny top-level launcher:

```text
~/.kolmafia/relay/relay_html_matrix.ash
```

which opens the namespaced matrix:

```text
~/.kolmafia/relay/html-matrix/index.html
```

Direct local Relay URL:

```text
http://127.0.0.1:60080/html-matrix/index.html
```

## Installed layout

```text
~/.kolmafia/
├── relay/
│   ├── relay_html_matrix.ash
│   └── html-matrix/
│       └── index.html
└── data/
    └── html-matrix/
        ├── FOR-AGENT.html
        ├── README.md
        ├── agent-master-index.json
        ├── hyper-data.json
        └── source-manifest.json
```

## Agent plane

Agents should begin with:

```text
~/.kolmafia/data/html-matrix/FOR-AGENT.html
```

Machine-readable files:

- `agent-master-index.json` — compact bootstrap, runtime description, source inventory, authority invariants, and the matrix's agent-start rule.
- `hyper-data.json` — the full embedded retrieval plane: **665 nodes**, **13 workflows**, and **29 use cases**, including stable `mem://` pointers, tags, related-node links, source provenance, and authority metadata.
- `source-manifest.json` — matrix identity, SHA-256, extraction metadata, source list, and data-plane hashes.

`agent-master-index.json` and `hyper-data.json` are exact extractions of the corresponding embedded `application/json` blocks in the HTML matrix. They are not independently rewritten summaries.

### Recommended agent retrieval protocol

1. Read `agent-master-index.json` first.
2. Search `hyper-data.json` by `id`, `name`, `description`, `tags`, `category`, `surface`, workflow, or use-case intent.
3. Preserve exact node IDs and `mem://` pointers for evidence used.
4. Follow `related` links or a named workflow when more context is needed.
5. Treat the matrix as reference/index material, **not execution authority**.
6. Resolve live or version-sensitive facts against installed-runtime evidence (`version`, `help`, `ashref`, `jsref`, `prefref`, `which`, debug/session evidence) and current KoLmafia source.
7. After mutation, verify resulting state independently; a successful call alone is not proof of the intended transition.

## Matrix authority invariants

The embedded matrix declares:

- Observation evidence does not authorize execution.
- T3 / structural-deny classifications are immutable in the learning overlay.
- T2/mutation candidates require explicit human review outside auto-run.
- Nested executors are classified by effective downstream action.
- Successful tool return is not equivalent to verified state transition.

The matrix describes itself as **agent-first, local-first, provenance-aware** and uses an LLM Memory Wiki-compatible object model with stable `mem://` pointers.

## Source provenance

The embedded master index records **13 source artifacts**. These include KoLmafia-specific ASH, gCLI, JS/TS/Relay, and operation indexes plus runtime/design sources for memory, graph, vector, browser tooling, worksheet handling, NanoClock, and the Offworld presentation system.

See `data/html-matrix/source-manifest.json` for recorded source filenames, source hashes, roles, matrix identity, and extracted-plane hashes.

## Current artifact identity

```text
Schema:        kolmafia-llm-scripting-hyper-matrix/v1
Workspace:     kol-hmx-a76056c0e3f8e1f4
Generated:     2026-09-27T04:38:00-05:00
Matrix bytes:  964274
Matrix SHA256: 37c4f92d0d24d2b4b7212e2f2c3bbe3999eef5f745c72544be9d398f91e7c8cd
Nodes:         665
Workflows:     13
Use cases:     29
```

## Why two planes?

The Relay UI is optimized for human browsing: master routing, tree navigation, memory-wiki inspection, graph/vector views, runtime context, learner overlay, and sources.

The `data/html-matrix` plane avoids forcing agents to scrape the presentation DOM. It exposes the embedded retrieval data directly while preserving the original UI artifact for humans and integrity checks.

## Verification

After install:

```text
verify relay/relay_html_matrix.ash
```

Then open the Relay Browser and confirm `html matrix` appears in `-run script-`.

To verify the UI artifact itself, compare `relay/html-matrix/index.html` to the SHA-256 recorded above or in `data/html-matrix/source-manifest.json`.
