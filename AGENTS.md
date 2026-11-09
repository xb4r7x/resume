# AGENTS.md -- Resume Repository

This repository contains the resume and CV for **Bart Scully**
(scully.bart@gmail.com). It is a markdown-sourced build pipeline that
produces styled PDFs via pandoc.

Any AI agent working on this repo should read this file in full before
making changes.

---

## Subject Profile

| Field                | Value                                   |
| -------------------- | --------------------------------------- |
| **Name**             | Bartholomew W. Scully                   |
| **Location**         | Denver Metropolitan Area (Conifer, CO)  |
| **Current title**    | Senior Site Reliability Engineer        |
| **Current employer** | F5 Networks (remote)                    |
| **Team**             | FedRAMP InfraOps |

| **Email (personal)** | scully.bart@gmail.com                   |
| **LinkedIn**         | linkedin.com/in/bartscully              |
| **Clearance**        | Formerly held: DoD TS//SCI              |

---

## Career Timeline

All titles and dates are confirmed from LinkedIn (Nov 2026):

| Title | Company | Dates | Notes |
|-------|---------|-------|-------|
| Senior Site Reliability Engineer | F5 Networks | Aug 2024 - Present | FedRAMP InfraOps team. Internal interview/promotion. |
| Site Reliability Engineer | F5 Networks | Aug 2023 - Aug 2024 | Title change only from DevOps III. Same team. |
| DevOps Engineer III | F5 Networks | Sep 2021 - Aug 2023 | Vault SME, Zabbix, ELK, tier 3 support. |
| DevOps Engineer | Ivanti (Cherwell) | Sep 2019 - Sep 2021 | Jenkins CI/CD, VM fleet. |
| Senior DevOps Engineer | Daxko / Zen Planner | Aug 2019 - Sep 2019 | Promotion. |
| DevOps Engineer | Daxko / Zen Planner | Jan 2018 - Sep 2019 | Terraform, EKS, Jenkins, PCI. |
| Senior System Administrator | Daxko / Zen Planner | Jul 2017 - Jan 2018 | Promotion from DevOps. |
| IT Team Lead / Sr. Sysadmin | Next Century Corp | Sep 2011 - Jul 2017 | Team of 7, two office buildouts, TS//SCI environment. |
| Sr. Desktop Support Rep | RIT (ITS) | Sep 2010 - Aug 2011 | |
| FAST Helpdesk Manager | RIT (Finance & Admin) | Dec 2009 - Aug 2010 | |

### Important distinctions

- The **DevOps III to SRE** transition at F5 was a title change only (same
  team, same responsibilities).
- The **SRE to Senior SRE** transition was a different internal position on
  the FedRAMP team, obtained through an internal interview.
- The **6 Vault clusters** mentioned in older resume versions were managed when
  Bart was on a different team at F5 (DevOps III era). He no longer manages
  those clusters. Do not claim current management of 6 clusters.

---

## Certifications

| Certification | Issuer | Status |
|---------------|--------|--------|
| HashiCorp Certified: Vault Associate (003) | HashiCorp | Active (Aug 2025 - Aug 2027) |
| F5 ATS, Distributed Cloud Secure MCN | F5 | Active (May 2024) |
| CompTIA Security+ | CompTIA | Expired Dec 2016 |

---

## Current Role: Key Responsibilities

Bart is the **primary owner** of HashiCorp Vault and Terraform for a
FedRAMP-compliant cloud infrastructure platform. The environment spans two
datacenters with staging and production domains.

### Core areas

1. **Infrastructure-as-Code & Secrets Management** -- Vault Enterprise (FIPS),
   Terraform, 3-tier PKI hierarchy, JWT auth, CI-driven plan/apply, automated
   certificate renewal.

2. **Container Image Fleet** -- 43+ FIPS-compliant hardened images (RHEL UBI 9
   Micro base), multi-stage Docker builds, image promotion through Azure ACR
   to AWS ECR GovCloud (staging/prod), Notation signing.

3. **Shared Test Harness** -- Designed and deployed a shared test suite with
   130+ automated security and compliance checks across 30+ container images.
   This was a major project done using AI-assisted development.

4. **CVE Remediation** -- FedRAMP continuous monitoring. Monthly remediation
   cycle across the image fleet. Deviation Requests for vendor-dependent CVEs.

5. **CI/CD Pipeline Engineering** -- Shared GitLab CI templates for 40+ repos,
   static analysis integration, CAB ticket gating, automated version-check
   pipelines.

6. **Configuration Management** -- Ansible across two datacenters,
   staging/production domain parameterization, service deployments.

7. **AI-Assisted Engineering** -- Early adopter. Uses Claude, GPT, Gemini,
   Grok, and GitHub Copilot for infrastructure development, CVE remediation,
   API automation, and documentation. Built AGENTS.md context files and custom
   AI agent skills. Achieved ~3x commit velocity increase.

---

## Key Metrics (as of Aug 17, 2026)

### All-time (Dec 2021 - Nov 2026)

| Metric | Value | Source |
|--------|-------|--------|
| Total commits | 2,008 across 67 repos | git log (deduplicated by SHA) |
| Repos contributed to | 67 | git log |
| MRs authored | 342 (284 merged) across 57 projects | GitLab API |

### 11-month reporting period (Oct 2025 - Aug 2026)

| Metric | Value | Source |
|--------|-------|--------|
| MR approvals given | 47 | Internal analytics report (5 core repos only) |
| MRs merged as reviewer | 65 | Internal analytics report (5 core repos only) |
| CVEs assigned | 1,123 | Internal analytics report |
| CVEs closed | 1,123 (100% closure rate) | Internal analytics report |
| CVE severity breakdown | 586 High (30-day SLA), 416 Moderate, 121 Low | Internal analytics report |
| Container images in CVE portfolio | 30 | Internal analytics report |
| Commit velocity increase (AI) | ~3x during Jun/Jul 2026 peak | git log monthly comparison |

**Note:** Approval and reviewer counts come from internal analytics covering
only 5 core repos. Actual review activity is higher.

**When updating metrics:** If newer data is available from internal analytics
reports, update the table above and the resume content. Always note the
reporting period so future agents know the freshness.

---

## Technology Stack

This is the comprehensive list confirmed from the work environment. Use this
as the source of truth for the Skills section.

| Category | Technologies |
|----------|-------------|
| Infrastructure & IaC | Terraform, Ansible, HashiCorp Vault (Enterprise, FIPS), HCL, Jinja2 |
| Containers & Image Security | Docker, Podman, Buildah, Skopeo, Notation (image signing), FIPS 140-3, DISA STIG |
| Cloud | AWS GovCloud (ECR, KMS, IAM, S3, Route 53), Azure (ACR, Blob Storage), EKS |
| CI/CD | GitLab CI/CD, Jenkins, GitHub Actions |
| Monitoring & Observability | Prometheus, Grafana, Alertmanager, Thanos, Fluent Bit, Vector, Zabbix |
| Languages & Scripting | Bash, Python, Go (read/modify), HCL, YAML |
| AI & Automation | Claude (Opus, Sonnet), GPT, Gemini, Grok, GitHub Copilot, prompt engineering, AI agent context design |
| Networking & DNS | NSD, Unbound, DNSSEC, OpenLDAP, BIG-IP, NGINX / NGINX Plus, Keepalived (VRRP) |
| Compliance | FedRAMP, FIPS 140-3, CVE/POAM lifecycle management, AWS Inspector |
| Operating Systems | RHEL 9 / UBI 9, Ubuntu, CentOS, macOS |

### Historical (full CV only)

VMware ESXi/vSphere, Active Directory, Windows Server, ShoreTel VOIP, Nagios,
Acronis, PowerShell, Dell PowerEdge, HP ProCurve, Ubiquiti, Checkpoint
Firewall, Symantec Endpoint Protection, Office 365, WSUS, WDS, and others.
See `src/resume-full.md` for the complete list.

---

## Writing Conventions

This resume was written using **STE-flavored** (Simplified Technical English)
principles. Follow these rules when editing:

### Do

- **Active voice.** "Built the staging environment." Not "The staging
  environment was built."
- **One claim per bullet.** Each bullet makes one point.
- **Plain verbs.** "Built", "Managed", "Automated", "Deployed", "Integrated".
- **Consistent terminology.** Use the same word for the same concept throughout.
  Do not rotate synonyms (e.g., always "image" not mixing "container image" /
  "artifact" / "Docker image" for the same thing).
- **Quantify where possible.** "1,123 CVEs" not "many CVEs". "43+ images" not
  "large fleet of images".
- **Short sentences.** Target 25 words or fewer per bullet.

### Do not

- **No marketing adjectives.** No "robust", "seamless", "cutting-edge",
  "powerful", "blazing-fast". Delete them or replace with a measurement.
- **No phrasal verbs.** "Start" not "spin up". "Deploy" not "roll out".
  "Begin" not "kick off". "Remove" not "take off".
- **No nominalization.** "Analyzed" not "performed an analysis of".
  "Remediated" not "performed remediation on".
- **No semicolons.** Split into separate sentences.
- **No hedge stacking.** "The process may fail" not "it is important to note
  that this may potentially fail".
- **Do not inflate claims.** If something was a team effort, do not claim sole
  credit. If a number is approximate, say "~" or "approximately".

---

## Repository Structure

```
resume/
  AGENTS.md               # This file
  Makefile                 # Build targets: make, make short, make full, etc.
  Brewfile                 # macOS: brew bundle (installs pandoc)
  src/
    resume-short.md        # 2-page resume (older roles trimmed)
    resume-full.md         # Full CV (all historical detail preserved)
  templates/
    resume.css             # Print stylesheet (letter size, page numbers, colors)
  scripts/
    build.sh               # pandoc + Chrome headless PDF builder
  output/                  # Build artifacts (gitignored)
```

### Build

```bash
make deps    # Install pandoc (one-time)
make check   # Verify prerequisites
make         # Build all PDFs
make short   # Build 2-page resume only
make full    # Build full CV only
make html    # Build HTML previews only
make clean   # Remove build output
```

PDF generation uses Chrome/Chromium headless (already on most machines).
Override with `PANDOC_PDF_ENGINE=weasyprint make` if preferred.

### Resume versions

- **resume-short.md** -- Targets a 2-page PDF. F5 section is fully expanded
  with all bullet groups. Older roles (Ivanti, Daxko, Next Century) are
  trimmed to 3-5 bullets each. RIT roles are title+dates only.

- **resume-full.md** -- Full CV with no length constraint. Same expanded F5
  section. All historical roles preserve their original bullet points. Skills
  section includes a "Historical" subsection with legacy technologies.

Both versions share the same header, summary, F5 section, certifications,
and clearance. Edits to these sections should be made in both files.

---

## Source Data

If the agent has access to the work environment, these data sources may be
available for gathering updated metrics or context:

- **Analytics reports** -- commit activity, MR activity, and CVE remediation
  reports with per-author metrics and monthly trends.
- **Session exports** -- JSON files from prior AI sessions containing full
  conversation history. Parse the `"text"` entries from message parts.
- **Per-repo documentation** -- deep-dive notes on individual repositories
  with build quirks, historical context, and operational notes.

---

## Maintenance

- **When metrics change:** Update the Key Metrics table in this file and the
  corresponding bullets in both `src/resume-short.md` and `src/resume-full.md`.
- **When a new role starts:** Add it to the Career Timeline table, then update
  both resume source files.
- **When certifications change:** Update the Certifications table and both
  resume source files.
- **When skills change:** Update the Technology Stack table and both resume
  source files.
- **After any content edit:** Run `make` and review the PDF output for page
  break issues, orphaned headings, or layout problems.
