# Builder agent toolkit

A curated directory of upstream agent projects. Entries link to their original maintainers; they are not vendored copies. Install only what the current task needs.

## Repositories

| Project | Best use | Upstream |
|---|---|---|
| Ponytail | Minimal implementation, reuse-first coding, senior-level diff review and audits | [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) |
| Unslop | Avoid generic AI-looking UI; critique spacing, typography, hierarchy and visual polish | [MoonDevil1/unslop](https://github.com/MoonDevil1/unslop) |
| UI UX Pro Max | UI/UX patterns, design systems and component direction | [nextlevelbuilder/ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill) |
| Impeccable | Interface critique, polish, simplification and accessibility-minded refinement | [pbakaus/impeccable](https://github.com/pbakaus/impeccable) |
| Superpowers | Planning, debugging, brainstorming and test-driven development | [obra/superpowers](https://github.com/obra/superpowers) |
| Graphify | Navigable map/knowledge graph for large or unfamiliar codebases | [Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify) |
| Agent Skills | Production engineering practices and development workflows | [addyosmani/agent-skills](https://github.com/addyosmani/agent-skills) |
| Security Audit Skill | Focused security review and threat-oriented checks | [cloudflare/security-audit-skill](https://github.com/cloudflare/security-audit-skill) |

## Recommended order

1. Start with Builder to inspect the project and define the smallest complete change.
2. Use Ponytail to avoid unnecessary code and review the diff.
3. Use Unslop, UI UX Pro Max, or Impeccable only for interface-related tasks.
4. Use Superpowers for multi-step planning, systematic debugging, or TDD.
5. Use Graphify when repository size or unfamiliar architecture makes navigation difficult.
6. Use Agent Skills for production engineering concerns.
7. Use Security Audit Skill for security-sensitive changes and before releases.

Do not load all skills for every task. Specialist instructions can overlap; Builder is the baseline.

## Install on Windows

Run from the repository root:

    Set-ExecutionPolicy -Scope Process Bypass
    .\scripts\install-agent-toolkit.ps1

The installer uses the community skills CLI to fetch upstream skills into the current workspace. Review the output and installed files. Agent hosts differ in supported skill locations and activation behavior.

## Trust, licensing and maintenance

- Ponytail package metadata declares MIT; verify its upstream license file again before redistributing any content.
- This catalog does not grant permission to copy, bundle, or relicense upstream content.
- Check each repository's current license, activity, dependencies, install instructions, and security posture before adoption.
- Prefer official repositories and pinned commits/releases for reproducible use.
- Never execute an upstream installer, binary, hook, or script blindly, especially if it can access files, credentials, shell commands, or the network.
- Remove projects that become abandoned, unsafe, redundant, or incompatible.