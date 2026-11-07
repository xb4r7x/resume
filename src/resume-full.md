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

- Created and maintained CI/CD pipelines using Jenkins for the development organization.
- Ensured deployment pipelines and tooling remained up-to-date and functional.
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
- Recreated production software deployment jobs with Jenkins for more stable and repeatable releases.
- Created numerous time-saving scripts and procedures for administering production systems.
- Performed all general Linux systems administrator duties: monthly patching, software installations, and configurations.
- Ensured tasks were repeatable using configuration management with Ansible.
- Participated in the interviewing and hiring process for new team members.
- Wrote and maintained technical documentation of production systems and practices.
- On-call for after-hours production issues every other week.
- Managed and tracked monitoring systems to ensure high availability.
- Worked closely with the development team to maintain application stability and performance.
- Assisted the internal IT team with senior-level support needs as required.
- Enforced PCI compliance requirements across all production infrastructure.

---

### Next Century Corporation -- Annapolis Junction, MD

**IT Team Lead / Senior Systems Administrator** | Sep 2011 - Jul 2017

Hired in 2011 as a Systems Administrator on a team of three managing all aspects of Information Technology. Became one of two lead administrators in 2015 as the team grew to 7 people. Led two successful office relocations with minimal downtime through months of careful planning and execution.

- Planned and executed two office buildouts and moves, including server room design (power, space, cooling), low-voltage cabling, and all audio/visual systems.
- Planned, tested, and executed the physical relocation of all IT infrastructure at headquarters, including 6 loaded server racks and 50+ workstations, with only 6 hours of network downtime.
- Planned, tested, and executed the physical relocation of all IT infrastructure at a satellite office, including a single server rack and 15+ workstations, with only 4 hours of network downtime.
- Interviewed, hired, supervised, and mentored junior-level Systems Administrators on the team.
- Planned and executed the migration of corporate email from locally hosted Microsoft Exchange 2003 to Microsoft Office 365 (Exchange Online).
- Installed and managed Ubiquiti UniFi wifi systems and Ubiquiti Video security camera systems at multiple sites.
- Managed and maintained 3 Active Directory domains and associated group policies across 3 sites.
- Managed and maintained 8 VMware vSphere hosts and 2 vSphere clusters.
- Managed multiple ShoreTel VOIP phone systems across multiple sites.
- Created, maintained, and tested backups of key systems using Acronis Backup and Recovery.
- Streamlined user creation and termination processes with PowerShell, saving hours per hire.
- Fully automated the backup of network switching infrastructure using bash.
- Wrote and maintained numerous time-saving scripts for repeatable administration tasks.
- Fully automated external DNS failover using Amazon AWS Route 53.
- Maintained all day-to-day systems: Active Directory, group policy, email, phones, backups, server infrastructure, network equipment, VMware hosts and VMs, firewalls, IPS/IDS, access control, camera systems, and end-user equipment.
- Handled purchasing of all IT hardware, software, and services.
- Provided daily and after-hours technical support for 130+ employees across offices in two states.
- Authored Ansible playbooks to automate repetitive tasks, including initial Linux workstation configuration and AWS EC2 instance creation for a company-sponsored college class.
- Monitored system and service uptime with Nagios and responded to critical alerts at all hours.
- Wrote and maintained technical documentation for all internal IT systems and processes.

---

### Rochester Institute of Technology

**Senior Desktop Support Representative** (Information and Technology Services) | Sep 2010 - Aug 2011

- Provided Tier 2 hardware and software technical support for RIT staff, working closely with a team to resolve technical problems.

**FAST Helpdesk Manager** (Finance and Administration) | Dec 2009 - Aug 2010

- Coordinated the efforts of 6-12 technicians to complete support request tickets quickly and effectively.
- Scheduled, hired, trained, and directed new student employees.

---

## SKILLS & TECHNOLOGIES

### Current

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

### Historical

**Virtualization:** VMware ESXi 5.5/6, vCenter Server, vSphere Client, VMware Workstation, Oracle VirtualBox
**Server Hardware:** Dell PowerEdge (2950, R710, R720xd)
**Networking Hardware:** Checkpoint Firewall IDS/IPS, HP ProCurve 2600 series switches, Ubiquiti Edge Router Pro, Ubiquiti AP Pro
**Storage:** Synology NAS devices
**Telephony:** ShoreTel IP Phones and voice switches
**Power:** APC Smart-UPS, Tripp Lite UPS Systems
**Security Hardware:** TrendNET IP Cameras, Ubiquiti Video IP Cameras
**Desktop OS:** Windows (XP, 7, 10), Mac OS X
**Server OS:** Windows Server (2003, 2008 R2, 2012)
**Scripting:** PowerShell, Batch, VBScript
**Software & Systems:** Microsoft Office 365, Active Directory, Group Policy, WDS, WSUS, Windows Print Services, Symantec Endpoint Protection, Atlassian Jira/Confluence, DokuWiki, Dell KACE, Acronis Backup and Recovery, Apache, IIS, Nagios, OpenVPN, Likewise/PBIS, DHCP, NAT, CloudPassage, New Relic, Rapid7, Logic Monitor, PRTG, RabbitMQ, IPAM

---

## EDUCATION & CERTIFICATIONS

**Bachelor of Science, Information Technology** -- Rochester Institute of Technology (2011)
**HashiCorp Certified: Vault Associate (003)** -- Issued Aug 2025, Expires Aug 2027
**F5 Accredited Technical Specialist, Distributed Cloud Secure Multi-Cloud Networking** -- Issued May 2024
**CompTIA Security+** -- Expired Dec 2016

---

## SECURITY CLEARANCE

Formerly held: Department of Defense TS//SCI
