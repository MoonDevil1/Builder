# Builder

A reusable agent workflow for building software with less bloat, stronger UI quality, and verifiable engineering.

## Included toolkit

- **Builder workflow** — understand, plan, design, implement, test, review, deliver.
- **Ponytail** — minimal, reuse-first coding and senior-level code review.
- **Unslop** — avoid generic AI-looking interfaces and improve visual quality.
- **UI UX Pro Max + Impeccable** — design systems, interface critique and polish.
- **Superpowers** — structured planning, debugging and test-driven development.
- **Graphify** — codebase mapping for large or unfamiliar repositories.
- **Agent Skills** — production engineering practices.
- **Cloudflare Security Audit** — focused security reviews.

Upstream projects remain maintained by their original authors. Builder references and installs them as optional skills instead of copying their source here.

## Quick start (Windows)

Requirements: Node.js/npm and a skill-compatible coding agent.

    Set-ExecutionPolicy -Scope Process Bypass
    .\scripts\install-agent-toolkit.ps1

Selective install example:

    .\scripts\install-agent-toolkit.ps1 -SkipGraphify -SkipAgentSkills -SkipSecurityAudit

## Documentation

- Core workflow: [.agents/skills/builder/SKILL.md](.agents/skills/builder/SKILL.md)
- Upstream catalog, recommended order, installation and trust notes: [docs/AGENT_TOOLKIT.md](docs/AGENT_TOOLKIT.md)

## Important

Installing skills does not permanently change ChatGPT or another hosted model. It adds instruction files to a compatible project/agent workspace. Agent hosts differ in skill formats and activation behavior. Review upstream code and licenses before running or redistributing anything.