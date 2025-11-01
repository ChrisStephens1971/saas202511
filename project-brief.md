# Project Brief: saas202511

**Created:** 2025-10-31
**Status:** Planning
**Last Updated:** 2025-10-31

---

## Initial Project Vision

Build the FMS
Objective

Deliver a mixed-fleet, verification-grade Farm Management System that solves interoperability, offline reliability, multi-party workflows, compliance, inventory, costing, and field-to-finance. Ship a production pilot in 6 months and full V1 in 12 months.

Scope

Platforms: Web, iOS, Android. Offline first.

Fleets: Deere, CNH, AGCO, custom applicators. Import/export ISOXML and ADAPT. USB/SD ingest supported.

Users: Grower, Manager, Agronomist, Retailer, Contractor, Auditor, Landlord.

Non-negotiable outcomes

≥95% cross-brand file round-trip without manual edits.

99.9% job creation and completion offline. Deterministic sync when back online.

Audit pass rate ≥90% on first attempt.

Inventory variance ≤2% monthly.

Close books in ≤3 business days with field-to-finance linkage.

Historical import: 3 seasons in <4 hours.

Top 15 pain points to eliminate

Mixed-fleet data chaos.

Offline failure.

Multi-party work orders break.

Compliance drag.

Traceability gaps.

Labor and piece-rate in specialty crops.

Inventory mismatch.

True COGS missing.

Lender and finance linkage weak.

Prescription QA late.

Mission planning for manned + autonomous.

Device onboarding of legacy files.

Data ownership and permissions unclear.

Reporting latency.

OEM API volatility.

Data you must collect during pilots

Use the provided kit. Files available:

templates/*.csv

schemas/*.json

schema.sql with PostGIS

README.md data dictionary
Domains:

Machine & ops: ISO11783 task files, ADAPT payloads, OEM telemetry, boundaries, prescriptions, as-applied, machine states, refuel/refill.

People & workflow: work-order timestamps, role, approvals, e-signatures, labor entries, QC samples.

Inputs & env: product catalogs, lot/batch, tank mix, weather snapshots, soil/imagery links.

Compliance: label rules, REI/PHI timers, restricted material permits, audit submissions and outcomes.

Finance: unit costs, accruals, settlements, invoices, payments, lender covenants.

Reliability meta: offline duration, sync conflicts, retry counts, conversion success/fail with reasons.

Architecture

Edge app: SQLite with write-ahead log. Protobuf event log. Vector clocks. CRDT merges.

Sync: gRPC over HTTP/2. Idempotent upserts. At-least-once delivery. Content-addressed blobs.

Services: Conversion, Job, Compliance, Inventory, Finance, Reporting, Mission Planner, Telemetry Broker.

Data: Postgres primary. PostGIS for fields. Object storage for raw files. Columnar store for analytics.

APIs: Public REST and GraphQL. Publish schemas. Stable versioning.

Security: Row-level security, per-org KMS keys, audit log, SCIM/SAML, least-privilege sharing, e-signature hashing only.

Core domain model

Entities: Org, User, Role, Field, Block, Season, Machine, Product, InventoryLot, Job, Task, Event, Document, WorkOrder, FinancialEntry, Permit, AuditSubmission.
Spatial: Boundaries as polygons. As-applied as time-stamped polygons with product and rate.

Interoperability requirements

Import/export ISOXML task files.

ADAPT plugin interface.

Bulk import from Deere, CNH, AGCO portals and local files.

Round-trip tests for prescriptions and as-applied.

Compliance engine

Label rules evaluator. REI and PHI timers. Restricted material checks.

Immutable audit pack: job facts, weather snapshot, labels, operator certs, signatures, photos.

One-click export for GAP/GlobalG.A.P. and jurisdictional submissions.

Inventory and costing

Inventory ledger with receipts, transfers, blends, shrink, returns. Barcode or QR optional.

Cost allocation of inputs, labor, machine hours to field/block and crop. Landlord splits.

Reconciliation: issued vs as-applied variance.

Field-to-finance

Map to GL. Export to QuickBooks, Xero, then Netsuite.

Settlements for landlords and partners. ACH file export.

Loan view: budgets vs actuals, collateral inventory, covenant monitor.

Mission planning

Schedule manned and autonomous passes. Geofences. Refill stops. Replans on constraints.

Proof-of-work: work order, telemetry, photos, signatures.

Offline rules

All create/update operations must succeed offline.

Conflict UI required: show human-readable diffs for jobs, inventory, and boundaries.

P95 sync convergence <5 minutes after connectivity returns.

UX primitives

Planning calendar. Dispatch board. Field timeline. Inventory ledger. Audit center. Finance hub.

Role-aware data scopes. E-sign flows. Multilingual strings ready.

Integrations in order

Deere Operations Center import/export

CNH and AGCO data flows

Weather snapshots and label databases

Accounting systems

Identity providers

Delivery plan

Phase 0, Weeks 0-2: Choose beachhead, compile integration matrix, baseline KPIs. Spike ISOXML and ADAPT conversion.
Phase 1, Weeks 3-12: Interop core, file conversion, job engine, IAM, offline engine, importers.
Phase 2, Weeks 13-22: Compliance, audit packs, traceability graph, proof-of-work.
Phase 3, Weeks 23-32: Inventory ledger, costing, reconciliation.
Phase 4, Weeks 33-44: Field-to-finance adapters, settlements, lender view.
Phase 5, Weeks 45-52: Mission planner, telemetry broker, SRE hardening.

Acceptance tests

Round-trip: import prescription → export → reimport to original OEM with binary-equivalent operational effect. Target ≥95%.

Offline: start, pause, complete 100 jobs with airplane mode toggles. Zero data loss.

Compliance: generate an audit pack from raw logs in <2 minutes. First-attempt pass ≥85% by Phase 2 and ≥90% by Phase 5.

Inventory: cycle count variance ≤5% by Phase 3 and ≤2% by Phase 5.

Finance: month-end close in ≤5 days by Phase 4 and ≤3 days by Phase 5.

Performance: P95 page load <2 s on 4G. P95 mobile sync <60 s for 1,000 events.

Security: row-level security verified by unit and integration tests. Tamper-evident audit log seeded per job.

Deliverables

Running SaaS with mobile apps.

Public API docs and SDKs.

Data import wizards and USB/SD ingest tool.

Compliance rule packs per jurisdiction.

Finance adapters with mapping UI.

Pilot reports: conversion rate, error taxonomy, latency, inventory accuracy, audit outcomes, finance latency, offline metrics.

Operational telemetry

Emit for each client: offline duration, conflict count, retry counts, conversion success flag, failure reason code, app version, OS version, device, location.

Out of scope for V1

Proprietary imagery processing.

In-house agronomy consulting.

Fancy dashboards beyond operational and finance KPIs.

Use the pilot data kit

Validate CSV rows with JSON Schemas.

Load schema.sql into Postgres with PostGIS.

Store raw files immutable. Reference paths in CSV.

Pseudonymize people. Keep key store separate.

Definition of done for V1

Meets all non-negotiable outcomes.

Passes acceptance tests.

Two pilot customers in production with mixed fleets and successful audits and month-end close.

[Add your project vision and starting information here]

---

## Quick Context

**Industry:**
**Target Market:**
**Key Differentiator:**
**MVP Timeline:**

---

## Notes

<!-- This file is your starting point. The Claude instance in this project will use this information to help you plan and build. -->
<!-- You can update this file at any time as your vision evolves. -->
