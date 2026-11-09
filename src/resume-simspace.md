# Bartholomew W. Scully

Denver Metropolitan Area | 240-444-3439 | scully.bart@gmail.com | [linkedin.com/in/bartscully](https://www.linkedin.com/in/bartscully)

## STAFF INFRASTRUCTURE ENGINEER / SENIOR SITE RELIABILITY ENGINEER

Infrastructure engineer with 15 years of experience in Ansible automation, virtualization, networking, image lifecycle management, and security-hardened environments. Maintained 47 Ansible roles and 125 playbooks managing 205 hosts across two datacenters, and served as primary owner of all Vault and Terraform infrastructure and the build, validation, and release pipeline for 50 container images. Early adopter of AI-assisted engineering, using agentic coding tools (OpenCode, Copilot) and multiple LLMs to accelerate infrastructure development by 3x. Experienced with VMware vSphere, Windows Server, Active Directory, Linux, and enterprise networking. Former TS//SCI clearance holder.

---

## PROFESSIONAL EXPERIENCE

### F5 Networks -- Remote

**Senior Site Reliability Engineer** (FedRAMP InfraOps) | Aug 2024 - Present

_Ansible & Configuration Management_

- Managed 47 Ansible roles and 125 playbooks across 205 hosts in two datacenters, covering hypervisors, VMs, Vault, LDAP, DNS, logging, monitoring, and network devices.
- Designed playbooks and roles to be modular, idempotent, and domain-parameterized, supporting both staging and production from a single codebase with no configuration drift.
- Maintained production and staging inventories (116 and 89 hosts) as independently versioned repositories with digest-pinned image tracking.
- Automated 7 scheduled CI pipelines for recurring operational tasks: certificate renewal, AWS IAM key rotation, Vault KMS key refresh, and hypervisor upgrades.
- Deployed and configured Vault, Fluent Bit, Unbound DNS, LDAP, and other core services.

_AI-Assisted Engineering_

- Early adopter of AI-assisted infrastructure development, integrating AI into daily engineering workflows across Terraform, Ansible, CI/CD, and vulnerability remediation.
- Used OpenCode (agentic coding harness) as the primary development interface, with Claude, GPT, Gemini, and Grok as backend models for infrastructure tasks.
- Built structured context files and custom AI agent skills to give models immediate awareness of the environment, reducing per-session onboarding to zero.
- Designed and deployed a shared test harness with 130+ automated checks across 30+ images, developing the entire project through AI-assisted workflows.
- Achieved a 3x increase in commit velocity during AI-assisted peak months while maintaining code quality and review standards.

_Image Lifecycle & Automated Validation_

- Managed the full lifecycle of 50 container images: build, validation, versioning, patching, release, deprecation, and replacement.
- Integrated static analysis (hadolint, shellcheck, detect-secrets, yamllint) into the shared CI pipeline, catching errors before builds start.
- Built automated monthly version-check-and-rebuild pipelines that detect upstream releases and trigger builds without manual intervention.

_Infrastructure-as-Code & Secrets Management_

- Primary owner of HashiCorp Vault Enterprise (FIPS) and all Terraform for the FedRAMP boundary.
- Built the complete staging Vault environment: 3-tier PKI hierarchy, 17 policies, 6 AppRole auth methods, OIDC/EntraID integration, AWS and Azure secrets engines.
- Implemented CI-driven terraform plan on merge requests and terraform apply on merge, with GitLab JWT authentication for secretless CI.

_Networking & Security_

- Configured and managed DNS infrastructure (NSD authoritative, Unbound recursive) with DNSSEC across both environments.
- Managed NGINX / NGINX Plus reverse proxies across staging and production environments.
- Remediated 1,123 CVEs at a 100% closure rate (586 High-severity under 30-day SLA) across 30 images.

_Technical Leadership_

- Authored over 2,000 commits across 67 repositories. Served as a code reviewer and technical gatekeeper.
- Designed shared pipeline templates, test harnesses, and automation standards adopted across the team.
- Created architecture guides, runbooks, and operational documentation to reduce single-person dependencies.
- Mentored engineers on Vault, Terraform, and Ansible workflows. Coordinated cross-team decisions with networking, SRE, and security teams.

**Site Reliability Engineer** | Aug 2023 - Aug 2024

- Vault subject matter expert across multiple teams. Automated the build and configuration of a FedRAMP-compliant Vault cluster.
- Managed Zabbix monitoring/alerting and a large ELK logging cluster.
- Maintained Puppet modules for Vault integration, mTLS certificate allow-lists, log rotation, and Filebeat configuration across production and lab environments.

**DevOps Engineer III** | Sep 2021 - Aug 2023

- Built Puppet modules for Vault cluster integration: certificate management, secrets lookups, license distribution, and automated token rotation.
- Tier 3 technical support for customer escalations. On-call for after-hours outage remediation.

---

### Ivanti (formerly Cherwell Software) -- Remote

**DevOps Engineer** | Sep 2019 - Sep 2021

- Built and maintained CI/CD pipelines (Jenkins). Managed a VM fleet for development and build infrastructure.

---

### Daxko / Zen Planner -- Highlands Ranch, CO

**Senior DevOps Engineer / DevOps Engineer / Senior System Administrator** | Jul 2017 - Sep 2019

- Automated AWS EKS and RabbitMQ cluster provisioning and teardown with Terraform. Wrote Ansible playbooks for repeatable configuration. Enforced PCI compliance.

---

### Next Century Corporation -- Annapolis Junction, MD

**IT Team Lead / Senior Systems Administrator** | Sep 2011 - Jul 2017

- Managed 8 VMware vSphere hosts, 2 vSphere clusters, and 3 Active Directory domains (group policies, DNS, DHCP, certificates, trusts) across 3 sites.
- Planned and executed two full office buildouts and datacenter relocations, including server room design (power, cooling, cabling), with under 6 hours of network downtime.
- Led a team of 7 IT staff across two offices in two states, supporting 130+ employees.
- Managed Checkpoint firewall IDS/IPS, HP ProCurve switching, and Ubiquiti wireless/VPN infrastructure.

---

## SKILLS & TECHNOLOGIES

**Automation & IaC:** Ansible, Puppet, Terraform, HashiCorp Vault (Enterprise, FIPS), HCL, Jinja2<br>
**Virtualization:** VMware vSphere / vCenter (ESXi 5.5-6), Docker, Podman, Buildah<br>
**Networking:** DNS (NSD, Unbound, DNSSEC), DHCP, NAT, VPN, Checkpoint IDS/IPS<br>
**Windows:** Windows Server (2003-2012), Active Directory, Group Policy, DNS, DHCP, certificates, trusts<br>
**Linux:** RHEL 9 / UBI 9, Ubuntu, CentOS, Debian<br>
**Image Lifecycle:** Multi-stage builds, automated validation, versioning, signing (Notation), registry promotion, CVE remediation<br>
**Cloud:** AWS GovCloud (ECR, EKS, KMS, IAM, S3, Route 53), Azure (ACR, Blob Storage), OIDC/EntraID<br>
**CI/CD:** GitLab CI/CD, Jenkins, GitHub Actions<br>
**Security & Compliance:** FedRAMP, FIPS 140-3, PKI/CA, DISA STIG, CVE/POAM lifecycle, AWS Inspector, secret detection<br>
**Monitoring:** Prometheus, Grafana, Alertmanager, Thanos, Fluent Bit, Vector, Zabbix, Nagios, ELK<br>
**Languages:** Bash, Python, Go (read/modify), HCL, YAML, PowerShell<br>
**AI & LLM Tooling:** OpenCode (agentic coding harness), GitHub Copilot, Hermes, Claude, GPT, Gemini, Grok, prompt engineering, AI agent context design

---

## EDUCATION & CERTIFICATIONS

**Bachelor of Science, Information Technology** -- Rochester Institute of Technology (2011)<br>
**HashiCorp Certified: Vault Associate (003)** -- Issued Aug 2025, Expires Aug 2027<br>
**F5 Accredited Technical Specialist, Distributed Cloud Secure MCN** -- Issued May 2024<br>
**CompTIA Security+** -- Expired Dec 2016

---

## SECURITY CLEARANCE

Formerly held: Department of Defense TS//SCI
