# Mars Preserve — Project Plan

## Overview
Mars Preserve is a foundation and SaaS initiative to coordinate research, development, and services for our community projects. This document provides a concise plan covering governance, infrastructure, token supply, blockchain logging, and next steps.

## Mission & Vision
- Mission: Build an organized, transparent foundation to support research and product development using modern tooling and blockchain-based transparency.
- Vision: Provide secure infrastructure and simple tokenized mechanisms so teams can collaborate, fund work, and track resources on-chain.

## Key Principles
- Openness: public code and auditable records where possible.
- Security: least-privilege access, role-based badges, and logs.
- Transparency: clear tokenomics and blockchain records.
- Iteration: start small, test on testnets, then move to mainnet.

## Governance & Roles (Security Badges)
Define badge tiers and responsibilities. Badges map to access levels (examples below — adapt to your ACL system).

- TOP DIR SEC — Top Director of Project Security
  - Responsibilities: security policy, incident response lead, final sign-off on major changes.
  - Access: full security admin controls, audit logs.

- DIR ADMIN — Director / Admin of Project
  - Responsibilities: project administration, budgeting, approvals.
  - Access: admin panels, treasury actions (multisig).

- Staff
  - Responsibilities: day-to-day operations, development, testing.
  - Access: repo push rights (as appropriate), staging systems.

- Newbie
  - Responsibilities: learning, contributing under mentorship.
  - Access: read-only resources, training environments.

Badge issuance:
- Use a digital badge system (internal DB + signed JSON/Verifiable Credential) that links identity (email/GitHub/GPG key) to role and expiry.
- Record badge grants/revocations in an auditable log (both off-chain and, for transparency, a minimal on-chain event).

## Company Lab Research Access
Prerequisites for physical or virtual lab access:
- Approved safety training and sign-off.
- Background check (if required).
- Assigned supervisor and documented experiment plan.
- Access checklist: PPE, equipment list, emergency contact, data storage policy.

Access process:
1. Submit lab access request with purpose and timeline.
2. Supervisor approves and assigns badge level.
3. Account and physical access provisioning.
4. Periodic reviews and revocation when project ends.

## Network & Infrastructure Plans
High-level setup to support workflows:
- Environments: dev, staging, production.
- Hosting: cloud providers (with IaC) or on-premises as required.
- Networking: segmented VPCs, private subnets for sensitive services, bastion hosts, VPN for admin access.
- CI/CD: automated pipelines with build, test, and controlled deploy steps.
- Secrets management: vault (HashiCorp Vault / cloud secret manager).
- Monitoring & logging: centralized logs (ELK/Opentelemetry), alerting (PagerDuty/opsgenie).
- Backups & DR: scheduled backups, restore testing, and RTO/RPO targets.
- Access control: RBAC, MFA, least-privilege.

Suggested initial tasks:
- Create IaC templates for baseline infra.
- Harden host images and container runtimes.
- Add automated vulnerability scanning in CI.

## Token Supply (Tokenomics)
Design template (customize to foundation needs):

- Token name: Mars Preserve Token (MP)
- Suggested total supply example: 100,000,000 MP (adjust per needs)
- Allocation example (percentages):
  - Community & Grants: 40%
  - Treasury / Foundation: 25%
  - Team & Contributors: 15% (vesting recommended)
  - Ecosystem / Partners: 10%
  - Reserve & Liquidity: 10%

Minting model alternatives:
- Fixed supply minted at deployment.
- Mint-on-demand controlled by multisig/trusted contract (requires strict governance).

Best practices:
- Use audited ERC-20/ERC-20-compatible contracts (or token standard for chosen chain).
- Implement timelocks and multisig for treasury control.
- Vest team allocations and make vesting schedules public.

## Blockchain Supply Logs & Integration
Recording and tracking supplies:
- Deploy token contract on testnets first (Ropsten/Goerli or equivalent).
- Emit events for: mint, transfer, burn, grant, and revocation of badges (if represented on-chain).
- Use on-chain event logs for public auditing; mirror critical data to an off-chain indexer for fast queries (The Graph, custom indexer).

MetaMask & User Interaction:
- Provide clear instructions to connect MetaMask and switch networks.
- Display verified contract addresses and explorer links (Etherscan, etc.).
- Offer a read-only dashboard with token supply, treasury balance, and recent events.

Libraries/tools:
- ethers.js or web3.js for frontend integration.
- Hardhat/Foundry for development and testing.
- Use automated verification on block explorers after deployment.

## Donations & Funding Flow
Donation models:
- Direct crypto donations to a multisig/timelocked treasury.
- Donation-for-tokens: donors receive tokens in exchange (clearly documented).
- Grants program: allocate community tokens via transparent proposals.

Security & compliance:
- Track donations on-chain and maintain off-chain records for accounting.
- Consult legal counsel about token sales and donations in relevant jurisdictions.

Suggested flow for donation-for-tokens:
1. Donor sends ETH/accepted asset to a donation contract or multisig.
2. Contract mints or transfers pre-allocated tokens to donor address (if applicable).
3. Emit an event and record metadata (purpose, donor consent) off-chain.

## Roadmap & Next Steps
Short term (0–3 months)
- Finalize governance model and badge issuance process.
- Prepare basic IaC and CI/CD pipelines.
- Develop token contract prototype and test on testnet.
- Implement basic dashboards for token and logs.

Medium term (3–9 months)
- Deploy audited contracts to mainnet (if ready).
- Launch grants and community distribution.
- Establish lab access and onboarding for initial researchers.

Long term (9+ months)
- Expand ecosystem integrations.
- Continuous audits and security improvements.
- Explore cross-chain and DAO governance features.

## Resources & Links
- GitHub: https://github.com/marspreserve
- Suggested tools: Hardhat, ethers.js, The Graph, HashiCorp Vault

## Summary
This document provides a structured starting point. Next immediate actions: finalize governance rules, pick a token contract pattern, and set up testnet workflows. Keep iterations small and auditable; maintain clear records both on- and off-chain.
