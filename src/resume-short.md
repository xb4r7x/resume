# Bartholomew W. Scully

Denver Metropolitan Area | 240-444-3439 | scully.bart@gmail.com | [linkedin.com/in/bartscully](https://www.linkedin.com/in/bartscully)

## SENIOR SITE RELIABILITY ENGINEER / DEVOPS ENGINEER / INFRASTRUCTURE ENGINEER

Senior Site Reliability Engineer with 15 years of experience in infrastructure automation, secrets management, container security, and compliance engineering. Primary owner of HashiCorp Vault and Terraform for a FedRAMP cloud platform spanning two datacenters and 43+ hardened container images. Early adopter of AI-assisted engineering (Claude, GPT, Gemini, Grok, GitHub Copilot), achieving a 3x increase in commit velocity while maintaining quality. Background in high-security environments with a former TS//SCI clearance.

---

## PROFESSIONAL EXPERIENCE

### F5 Networks -- Remote

**Senior Site Reliability Engineer** (FedRAMP InfraOps) | Aug 2024 - Present

_AI-Assisted Engineering_

- Early adopter of AI-assisted infrastructure development using Claude, GPT, Gemini, Grok, and GitHub Copilot.
- Applied AI agents to Terraform development, CVE remediation, CI pipeline design, and GitLab/Jira API automation.
- Built structured context files and custom AI agent skills to give language models immediate awareness of the FedRAMP environment.
- Achieved a 3x increase in commit velocity during AI-assisted peak months while maintaining code quality and review standards.
- Designed and deployed a shared test harness across 30+ container images using AI-assisted development, producing 130+ automated security and compliance checks.

_Infrastructure-as-Code & Secrets Management_

- Primary owner of HashiCorp Vault Enterprise (FIPS) and all Terraform for the FedRAMP boundary.
- Built the complete staging environment: 3-tier PKI hierarchy (root, intermediate, and issuing CAs), 17 Vault policies, 6 AppRole auth methods, OIDC/EntraID integration, AWS and Azure secrets engines.
- Implemented CI-driven terraform plan on merge requests and terraform apply on merge, with GitLab JWT authentication to Vault.
- Automated proxy certificate renewal and DNS certificate renewal through scheduled CI pipelines, eliminating recurring manual tasks.

_Container Image Fleet & Security Compliance_

- Managed a fleet of 43+ FIPS-compliant hardened container images built on RHEL UBI 9 Micro.
- Remediated 1,123 CVEs with a 100% closure rate (586 High-severity under 30-day SLA) across 30 container images.
- Managed the image promotion pipeline: Azure ACR to AWS ECR GovCloud (staging and production), signed with Notation.
- Created FedRAMP Deviation Request documentation for vendor-dependent vulnerabilities.

_CI/CD Pipeline Engineering_

- Built shared GitLab CI pipeline templates used by 40+ container image repositories.
- Integrated static analysis tooling (hadolint, shellcheck, detect-secrets, yamllint) into the shared pipeline.
- Implemented Change Advisory Board (CAB) ticket gating for production Terraform applies.
- Built automated monthly version-check-and-rebuild pipelines for Vault and Terraform images.

_Configuration Management & Operations_

- Managed Ansible playbooks and roles across two datacenters, parameterized for staging and production domains.
- Deployed and configured Vault, Fluent Bit, Unbound DNS, LDAP, and other core services to staging infrastructure.
- Authored 95 merge requests (82 merged) and 171 commits across core infrastructure repos. Reviewed and merged 65 MRs as a technical gatekeeper.

**Site Reliability Engineer** | Aug 2023 - Aug 2024

- Subject matter expert on HashiCorp Vault secrets management and certificate generation across multiple teams.
- Automated the creation and configuration of a FedRAMP-compliant Vault cluster.
- Managed Zabbix monitoring and alerting configuration for production infrastructure.
- Administered a large ELK logging cluster serving multiple product teams.

**DevOps Engineer III** | Sep 2021 - Aug 2023

- Provided tier 3 technical support for customer escalations on the F5 XC product line.
- On-call for after-hours system outage remediation.
- Wrote and maintained technical documentation for Vault, monitoring, and logging systems.
- Maintained focus and delivery through 6 organizational restructurings.

---

### Ivanti (formerly Cherwell Software) -- Remote

**DevOps Engineer** | Sep 2019 - Sep 2021

- Created and maintained CI/CD pipelines with Jenkins for the development organization.
- Maintained a large fleet of virtual machines supporting development and build infrastructure.
- Troubleshot and resolved deployment system failures across multiple environments.

---

### Daxko / Zen Planner -- Highlands Ranch, CO

**Senior DevOps Engineer** | Aug 2019 - Sep 2019

**DevOps Engineer** | Jan 2018 - Sep 2019

**Senior System Administrator** | Jul 2017 - Jan 2018

- Automated the provisioning and teardown of an AWS EKS cluster using Terraform and custom scripts.
- Automated the provisioning and teardown of a production RabbitMQ cluster in AWS using Terraform.
- Rebuilt and migrated all production systems to a new hosting provider with minimal downtime.
- Enforced PCI compliance requirements across all production infrastructure.
- Managed monitoring systems for high availability and wrote Ansible playbooks for repeatable configuration.

---

### Next Century Corporation -- Annapolis Junction, MD

**IT Team Lead / Senior Systems Administrator** | Sep 2011 - Jul 2017

- Led a team of 7 IT staff across two offices in two states, supporting 130+ employees.
- Planned and executed two office buildouts and datacenter relocations with under 6 hours of downtime.
- Managed 8 VMware vSphere hosts, 3 Active Directory domains, and all associated infrastructure.

---

### Rochester Institute of Technology

**Senior Desktop Support Representative** (ITS) | Sep 2010 - Aug 2011

**FAST Helpdesk Manager** (Finance & Administration) | Dec 2009 - Aug 2010

---

## SKILLS & TECHNOLOGIES

**Infrastructure & IaC:** Terraform, Ansible, HashiCorp Vault (Enterprise, FIPS), HCL, Jinja2
**Containers & Image Security:** Docker, Podman, Buildah, Skopeo, Notation (image signing), FIPS 140-3, DISA STIG
**Cloud:** AWS GovCloud (ECR, KMS, IAM, S3, Route 53), Azure (ACR, Blob Storage), EKS
**CI/CD:** GitLab CI/CD, Jenkins, GitHub Actions
**Monitoring & Observability:** Prometheus, Grafana, Alertmanager, Thanos, Fluent Bit, Vector, Zabbix
**Languages & Scripting:** Bash, Python, Go (read/modify), HCL, YAML
**AI & Automation:** Claude (Opus, Sonnet), GPT, Gemini, Grok, GitHub Copilot, prompt engineering, AI agent context design
**Networking & DNS:** NSD, Unbound, DNSSEC, OpenLDAP, BIG-IP, NGINX / NGINX Plus, Keepalived (VRRP)
**Compliance:** FedRAMP, FIPS 140-3, CVE/POAM lifecycle management, AWS Inspector
**Operating Systems:** RHEL 9 / UBI 9, Ubuntu, CentOS, macOS

---

## EDUCATION & CERTIFICATIONS

**Bachelor of Science, Information Technology** -- Rochester Institute of Technology (2011)
**HashiCorp Certified: Vault Associate (003)** -- Issued Aug 2025, Expires Aug 2027
**F5 Accredited Technical Specialist, Distributed Cloud Secure Multi-Cloud Networking** -- Issued May 2024
**CompTIA Security+** -- Expired Dec 2016

---

## SECURITY CLEARANCE

Formerly held: Department of Defense TS//SCI
