# Product Roadmap - Farm Management System (FMS) V1

**Period:** 2025-2026 (52 weeks)
**Owner:** Solo Founder
**Last Updated:** 2025-10-31
**Status:** Approved

---

## Vision & Strategy

### Product Vision

Deliver a mixed-fleet, verification-grade Farm Management System that solves interoperability, offline reliability, multi-party workflows, compliance, inventory, costing, and field-to-finance integration. The system will enable growers, managers, agronomists, and retailers to work seamlessly across John Deere, CNH, AGCO, and custom applicator equipment with ≥95% cross-brand file round-trip accuracy, 99.9% offline job completion, and month-end close in ≤3 business days.

This is a **complete build approach**: All 5 phases will be developed over 52 weeks before V1 launch. A production pilot with 2 customers will validate the system at 6 months (Week 26).

### Strategic Themes

1. **Mixed-Fleet Interoperability** - Eliminate data chaos across Deere, CNH, AGCO equipment via ISOXML and ADAPT conversion
2. **Offline-First Architecture** - 99.9% job creation and completion offline with deterministic sync
3. **Compliance & Audit** - ≥90% first-attempt audit pass rate with immutable audit packs
4. **Field-to-Finance Integration** - Close books in ≤3 business days with complete traceability
5. **Enterprise-Grade Reliability** - Production-ready SRE, security, and operational telemetry

---

## Roadmap Overview

### Phase 0: Beachhead & Foundation (Weeks 0-2)

**Focus:** Choose pilot customer, baseline KPIs, spike critical integrations

| Initiative | Description | Target Date | Priority |
|------------|-------------|-------------|----------|
| Beachhead selection | Select 2 pilot customers with mixed fleets | Week 1 | P0 |
| Integration matrix | Compile OEM data sources, formats, APIs | Week 1 | P0 |
| ISOXML conversion spike | Validate round-trip prescription conversion | Week 2 | P0 |
| ADAPT spike | Test ADAPT payload import/export | Week 2 | P0 |
| Data collection kit setup | Deploy templates/CSV schemas to pilot sites | Week 2 | P0 |

### Phase 1: Interop Core & Foundation (Weeks 3-12)

**Focus:** File conversion, job engine, IAM, offline engine, OEM importers

| Feature/Initiative | Description | Target Date | Priority |
|--------------------|-------------|-------------|----------|
| ISOXML/ADAPT converters | Production-grade import/export with ≥95% round-trip | Week 8 | P0 |
| Job engine | Create, assign, execute, complete jobs with multi-party workflow | Week 10 | P0 |
| Offline-first engine | SQLite + CRDT merges, vector clocks, conflict resolution UI | Week 10 | P0 |
| IAM & multi-tenant | Row-level security, org/user/role model, SCIM/SAML ready | Week 8 | P0 |
| OEM importers | Deere Operations Center, CNH, AGCO bulk import | Week 12 | P0 |
| Spatial data foundation | PostGIS boundaries, as-applied polygons, field/block model | Week 9 | P0 |

**Tech Stack:**
- Backend: Python + FastAPI, gRPC over HTTP/2
- Frontend: Next.js (React), responsive web
- Database: PostgreSQL + PostGIS
- Edge: SQLite with write-ahead log, Protobuf event log

### Phase 2: Compliance & Audit (Weeks 13-22)

**Focus:** Label rules, REI/PHI, audit packs, traceability, proof-of-work

| Feature/Initiative | Description | Target Date | Priority |
|--------------------|-------------|-------------|----------|
| Compliance engine | Label rules evaluator, REI/PHI timers, restricted material checks | Week 16 | P0 |
| Audit pack generation | Immutable job facts, weather, labels, certs, signatures, photos | Week 18 | P0 |
| Traceability graph | Field → job → product lot → as-applied → audit submission | Week 20 | P0 |
| GAP/GlobalG.A.P. export | One-click audit submission for jurisdictions | Week 22 | P0 |
| Proof-of-work | Work order → telemetry → photos → e-signatures | Week 21 | P0 |
| **🎯 Pilot Milestone** | 2 customers in production, first audit submissions | Week 26 | P0 |

**Pilot Success Criteria (Week 26):**
- ≥85% first-attempt audit pass rate (target ≥90% by Week 52)
- ≥95% cross-brand file round-trip accuracy
- Zero data loss in offline scenarios

### Phase 3: Inventory & Costing (Weeks 23-32)

**Focus:** Inventory ledger, cost allocation, reconciliation

| Feature/Initiative | Description | Target Date | Priority |
|--------------------|-------------|-------------|----------|
| Inventory ledger | Receipts, transfers, blends, shrink, returns with barcode/QR | Week 26 | P0 |
| Cost allocation | Inputs, labor, machine hours to field/block/crop with landlord splits | Week 28 | P0 |
| Reconciliation | Issued vs as-applied variance reporting (target ≤2% monthly) | Week 30 | P0 |
| Product catalog | Integrate label databases, lot/batch tracking | Week 27 | P0 |
| Tank mix tracking | Multi-product blends with compliance validation | Week 29 | P0 |

**Success Metrics:**
- Inventory variance ≤5% monthly (target ≤2% by Week 52)

### Phase 4: Field-to-Finance (Weeks 33-44)

**Focus:** GL mapping, accounting integration, settlements, lender view

| Feature/Initiative | Description | Target Date | Priority |
|--------------------|-------------|-------------|----------|
| GL mapping UI | Map field/block/crop costs to chart of accounts | Week 36 | P0 |
| QuickBooks/Xero export | Accruals, invoices, payments export | Week 38 | P0 |
| NetSuite adapter | Enterprise accounting integration | Week 42 | P0 |
| Landlord settlements | Split calculations, ACH file export | Week 40 | P0 |
| Lender view | Budgets vs actuals, collateral inventory, covenant monitor | Week 44 | P0 |
| Month-end close workflow | Automated close process with field-to-finance linkage | Week 43 | P0 |

**Success Metrics:**
- Month-end close in ≤5 business days (target ≤3 by Week 52)

### Phase 5: Mission Planner & SRE Hardening (Weeks 45-52)

**Focus:** Autonomous operations, telemetry, production readiness

| Feature/Initiative | Description | Target Date | Priority |
|--------------------|-------------|-------------|----------|
| Mission planner | Schedule manned + autonomous passes, geofences, refill stops | Week 48 | P0 |
| Telemetry broker | Real-time machine telemetry ingestion and display | Week 49 | P0 |
| SRE hardening | Monitoring, alerting, incident response, disaster recovery | Week 51 | P0 |
| Mobile apps (iOS/Android) | Offline-first native apps (React Native or Flutter TBD) | Week 50 | P1 |
| Public API documentation | REST/GraphQL API docs, SDKs, stable versioning | Week 51 | P0 |
| Historical import tool | 3 seasons of data in <4 hours | Week 50 | P1 |
| **🚀 V1 Launch** | Production release with 2 pilot customers validated | Week 52 | P0 |

---

## Detailed Feature Breakdown

### ISOXML/ADAPT Conversion Engine

**Problem:** Mixed-fleet operations create data chaos. Files from John Deere, CNH, AGCO equipment are incompatible.

**Solution:** Production-grade converters for ISOXML task files and ADAPT payloads with ≥95% round-trip accuracy. Bulk import from OEM portals and local USB/SD files.

**Impact:** Eliminates manual data reconciliation, enables cross-brand prescription sharing

**Effort:** Large (10 weeks Phase 0-1)

**Dependencies:** ISOXML/ADAPT specifications, OEM API access

**Status:** Not Started

**PRD:** [To be created in Sprint 1]

---

### Offline-First Job Engine

**Problem:** 99.9% of job creation and completion must work offline. Network is unreliable in fields.

**Solution:** SQLite edge database with write-ahead log, Protobuf event log, vector clocks, CRDT merges. Conflict resolution UI for human-readable diffs.

**Impact:** Guarantees zero data loss, deterministic sync, P95 convergence <5 minutes

**Effort:** Large (8 weeks Phase 1)

**Dependencies:** gRPC/HTTP2 sync service, content-addressed blob storage

**Status:** Not Started

**PRD:** [To be created in Sprint 1]

---

### Compliance Engine & Audit Packs

**Problem:** Compliance drag, traceability gaps, low first-attempt audit pass rates.

**Solution:** Label rules evaluator, REI/PHI timers, restricted material checks. Immutable audit pack: job facts, weather snapshot, labels, operator certs, signatures, photos. One-click export for GAP/GlobalG.A.P.

**Impact:** ≥90% first-attempt audit pass rate, eliminates compliance drag

**Effort:** Large (10 weeks Phase 2)

**Dependencies:** Label database integration, weather API, e-signature flow

**Status:** Not Started

**PRD:** [To be created in Sprint 3]

---

### Inventory Ledger & Cost Allocation

**Problem:** Inventory variance >5%, missing true COGS, weak landlord splits.

**Solution:** Full inventory ledger (receipts, transfers, blends, shrink, returns). Cost allocation of inputs, labor, machine hours to field/block/crop. Reconciliation: issued vs as-applied variance (target ≤2%).

**Impact:** Inventory variance ≤2% monthly, accurate COGS, transparent landlord settlements

**Effort:** Large (10 weeks Phase 3)

**Dependencies:** Job engine, as-applied data, product catalog

**Status:** Not Started

**PRD:** [To be created in Sprint 4]

---

### Field-to-Finance Integration

**Problem:** Weak lender linkage, slow month-end close (>7 days), manual reconciliation.

**Solution:** GL mapping UI, QuickBooks/Xero/NetSuite export, landlord settlements with ACH, lender view (budgets vs actuals, collateral, covenants).

**Impact:** Month-end close in ≤3 business days, automated lender reporting, transparent settlements

**Effort:** Large (12 weeks Phase 4)

**Dependencies:** Inventory ledger, cost allocation, accounting system APIs

**Status:** Not Started

**PRD:** [To be created in Sprint 5]

---

### Mission Planner

**Problem:** Mission planning for manned + autonomous operations is manual and error-prone.

**Solution:** Schedule passes with geofences, refill stops, constraint-based replans. Proof-of-work: work order → telemetry → photos → signatures.

**Impact:** Operational efficiency for autonomous fleets, verifiable proof-of-work

**Effort:** Medium (6 weeks Phase 5)

**Dependencies:** Telemetry broker, job engine, spatial data

**Status:** Not Started

**PRD:** [To be created in Sprint 6]

---

## Success Metrics

### Non-Negotiable Outcomes (V1 Acceptance)

| Metric | Target | Status |
|--------|--------|--------|
| Cross-brand file round-trip accuracy | ≥95% | 🔵 Not Started |
| Offline job completion | 99.9% | 🔵 Not Started |
| First-attempt audit pass rate | ≥90% | 🔵 Not Started |
| Monthly inventory variance | ≤2% | 🔵 Not Started |
| Month-end close time | ≤3 business days | 🔵 Not Started |
| Historical import (3 seasons) | <4 hours | 🔵 Not Started |

### Pilot Milestone Metrics (Week 26)

| Metric | Target | Status |
|--------|--------|--------|
| First-attempt audit pass rate | ≥85% | 🔵 Not Started |
| Inventory variance | ≤5% | 🔵 Not Started |
| Month-end close time | ≤5 business days | 🔵 Not Started |
| Pilot customers in production | 2 | 🔵 Not Started |

### Performance Targets

| Metric | Target | Status |
|--------|--------|--------|
| P95 page load (4G) | <2 seconds | 🔵 Not Started |
| P95 mobile sync (1,000 events) | <60 seconds | 🔵 Not Started |
| P95 sync convergence (offline → online) | <5 minutes | 🔵 Not Started |
| Audit pack generation | <2 minutes | 🔵 Not Started |

---

## Resource Allocation

### Team Capacity
- **Solo Founder:** Full-stack development, product, architecture
- **Consider hiring:** Backend engineer (Phase 2+), Mobile engineer (Phase 5)

### Effort Distribution (Estimated)
- 70% - Core feature development (Phases 1-5)
- 15% - Integration and data conversion (OEM APIs, ISOXML/ADAPT)
- 10% - Testing, QA, pilot support
- 5% - Documentation, operational readiness

---

## Risks and Dependencies

| Risk/Dependency | Impact | Mitigation | Phase |
|-----------------|--------|------------|-------|
| ISOXML/ADAPT spec complexity | High | Spike in Phase 0, validate round-trip with real files | Phase 0-1 |
| OEM API access (Deere, CNH, AGCO) | High | Early engagement with OEM developer programs, fallback to file import | Phase 1 |
| Offline sync conflicts | High | CRDT research, conflict resolution UI, extensive testing | Phase 1 |
| Label database integration | Medium | Identify commercial providers early (CDMS, Greenbook) | Phase 2 |
| Pilot customer availability | Medium | Select 2 customers in Phase 0, maintain close communication | Phase 2 |
| Accounting system APIs | Medium | Start with QuickBooks/Xero (well-documented), defer NetSuite if needed | Phase 4 |
| Solo founder capacity | High | Prioritize ruthlessly, consider hiring after pilot validation | All phases |
| Mobile app complexity | Medium | Evaluate React Native vs Flutter in Phase 1, defer to Phase 5 | Phase 5 |

---

## What We're NOT Doing (V1 Scope)

Explicitly out of scope for V1 to maintain focus:

- ❌ **Proprietary imagery processing** - Partner with existing providers instead
- ❌ **In-house agronomy consulting** - Focus on tooling, not services
- ❌ **Fancy dashboards beyond operational/finance KPIs** - Core workflows first
- ❌ **IoT sensor integrations** - Focus on machine data first
- ❌ **Multi-language UI** - English only for V1 (strings prepared for i18n)
- ❌ **Advanced analytics/ML** - Operational data collection first, analytics later

---

## Decision Log

| Date | Decision | Rationale |
|------|----------|-----------|
| 2025-10-31 | Complete build approach (52 weeks before V1) | Enterprise FMS requires full feature set for credibility. Pilot at 6 months validates, but V1 ships at 12 months with all 5 phases complete. |
| 2025-10-31 | Tech stack: Python + FastAPI, Next.js, PostgreSQL + PostGIS | FastAPI for modern async Python, Next.js for SSR and performance, PostgreSQL for spatial + enterprise reliability. |
| 2025-10-31 | Pilot users: Grower, Manager, Agronomist, Retailer | Focus on core field operations workflow. Auditor, Contractor, Landlord roles deferred to post-pilot. |
| 2025-10-31 | Mobile apps deferred to Phase 5 | Web-first for pilot validation. Mobile (React Native/Flutter) for production rollout. |

---

## Timeline Summary

| Phase | Weeks | Milestone | Success Criteria |
|-------|-------|-----------|------------------|
| **Phase 0** | 0-2 | Beachhead & spikes | Pilot selected, ISOXML/ADAPT validated |
| **Phase 1** | 3-12 | Interop core | Round-trip ≥95%, offline working, OEM imports live |
| **Phase 2** | 13-22 | Compliance | Audit packs, ≥85% pass rate |
| **🎯 Pilot** | **26** | **Production pilot** | **2 customers live, first audits passing** |
| **Phase 3** | 23-32 | Inventory | Variance ≤5%, cost allocation working |
| **Phase 4** | 33-44 | Finance | Month-end ≤5 days, GL export, lender view |
| **Phase 5** | 45-52 | Mission + SRE | Mission planner, telemetry, mobile apps, SRE hardening |
| **🚀 V1** | **52** | **Production launch** | **All non-negotiables met, 2 pilots validated** |

---

## Next Steps

1. **Sprint 1 (Weeks 0-2):** Beachhead selection, integration matrix, ISOXML/ADAPT spikes
2. **Create PRDs:** Start with ISOXML/ADAPT converter, offline job engine, IAM in Sprint 1
3. **Set up development environment:** FastAPI backend, Next.js frontend, PostgreSQL + PostGIS locally
4. **Pilot engagement:** Weekly check-ins with 2 pilot customers starting Week 1

---

## Revision History

| Date | Changes | Updated By |
|------|---------|------------|
| 2025-10-31 | Initial 52-week roadmap created | Solo Founder |
