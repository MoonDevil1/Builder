param(
    [switch]$SkipPonytail, [switch]$SkipUnslop, [switch]$SkipUiUxProMax,
    [switch]$SkipImpeccable, [switch]$SkipSuperpowers, [switch]$SkipGraphify,
    [switch]$SkipAgentSkills, [switch]$SkipSecurityAudit
)
$ErrorActionPreference = 'Stop'
if (-not (Get-Command npx -ErrorAction SilentlyContinue)) { throw 'Node.js/npm is required. Install Node.js and reopen PowerShell.' }
$skills = @(
    @{ Name='Ponytail'; Repo='DietrichGebert/ponytail'; Skip=$SkipPonytail },
    @{ Name='Unslop'; Repo='MoonDevil1/unslop'; Skip=$SkipUnslop },
    @{ Name='UI UX Pro Max'; Repo='nextlevelbuilder/ui-ux-pro-max-skill'; Skip=$SkipUiUxProMax },
    @{ Name='Impeccable'; Repo='pbakaus/impeccable'; Skip=$SkipImpeccable },
    @{ Name='Superpowers'; Repo='obra/superpowers'; Skip=$SkipSuperpowers },
    @{ Name='Graphify'; Repo='Graphify-Labs/graphify'; Skip=$SkipGraphify },
    @{ Name='Agent Skills'; Repo='addyosmani/agent-skills'; Skip=$SkipAgentSkills },
    @{ Name='Cloudflare Security Audit'; Repo='cloudflare/security-audit-skill'; Skip=$SkipSecurityAudit }
)
foreach ($item in $skills) {
    if ($item.Skip) { continue }
    Write-Host "`n==> Installing $($item.Name) ($($item.Repo))" -ForegroundColor Cyan
    & npx -y skills add $item.Repo -y
    if ($LASTEXITCODE -ne 0) { Write-Warning "Install failed for $($item.Repo) (exit $LASTEXITCODE); continuing." }
}
Write-Host "`nInstall attempts finished. Review installed files and your agent host's supported skill locations." -ForegroundColor Green