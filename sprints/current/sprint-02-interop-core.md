# Sprint 2 - Interop Core & Foundation

**Sprint Duration:** Week 3-12 (2025-11-15 - 2026-01-24)
**Sprint Goal:** Build production-grade ISOXML/ADAPT converters, offline-first job engine, IAM foundation, and OEM data importers
**Status:** Planning

---

## Sprint Goal

Deliver the core interoperability and offline-first foundation for the FMS. Build production-grade ISOXML and ADAPT converters with ≥95% round-trip accuracy, implement the offline job engine with CRDT merges and conflict resolution, establish multi-tenant IAM with row-level security, integrate spatial data with PostGIS, and deploy OEM importers for Deere, CNH, and AGCO.

**Success Criteria:**
- ISOXML/ADAPT converters achieve ≥95% round-trip accuracy on pilot data
- Job engine supports create, assign, execute, complete with multi-party workflow
- Offline engine handles 100 test jobs with airplane mode toggles, zero data loss
- IAM foundation with org/user/role model, row-level security, SAML/SCIM ready
- OEM importers working for Deere Operations Center, CNH, AGCO
- Spatial data model with PostGIS boundaries and as-applied polygons

---

## Sprint Capacity

**Available Days:** 50 working days (10 weeks)
**Capacity:** 400 hours (solo founder, full-time)
**Commitments/Time Off:** Holiday break (Dec 20-Jan 3 = 2 weeks) → Adjust to 320 hours effective capacity

---

## Sprint Backlog

### High Priority (Must Complete)

#### Foundational Infrastructure

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-101 | Set up FastAPI project structure | M | Solo | 📋 Todo | Async, Pydantic v2, SQLAlchemy 2.0 |
| US-102 | Set up Next.js frontend | M | Solo | 📋 Todo | App router, TypeScript, Tailwind CSS |
| US-103 | Configure PostgreSQL + PostGIS | M | Solo | 📋 Todo | Docker setup, migrations with Alembic |
| US-104 | Set up gRPC over HTTP/2 for sync | L | Solo | 📋 Todo | Protocol buffer definitions, client/server |
| US-105 | Multi-tenant schema with tenant_id | M | Solo | 📋 Todo | All tables except system tables include tenant_id |
| US-106 | Row-level security policies | L | Solo | 📋 Todo | PostgreSQL RLS, tenant isolation testing |

#### ISOXML/ADAPT Conversion Engine

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-107 | ISOXML parser (prescriptions) | XL | Solo | 📋 Todo | Parse task files, extract prescriptions |
| US-108 | ISOXML exporter (prescriptions) | XL | Solo | 📋 Todo | Generate valid ISOXML task files |
| US-109 | ISOXML round-trip tests | L | Solo | 📋 Todo | ≥95% accuracy target on pilot data |
| US-110 | ISOXML as-applied parser | XL | Solo | 📋 Todo | Parse completed job data |
| US-111 | ADAPT payload parser | L | Solo | 📋 Todo | Parse ADAPT JSON format |
| US-112 | ADAPT payload exporter | L | Solo | 📋 Todo | Generate ADAPT JSON |
| US-113 | ADAPT round-trip tests | M | Solo | 📋 Todo | Validate conversion accuracy |
| US-114 | File conversion API endpoints | M | Solo | 📋 Todo | REST endpoints for upload, convert, download |
| US-115 | Conversion error taxonomy | S | Solo | 📋 Todo | Categorize failure reasons for telemetry |

#### Job Engine (Multi-Party Workflow)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-116 | Job data model (Postgres) | M | Solo | 📋 Todo | Job, Task, Event, WorkOrder entities |
| US-117 | Create job API | M | Solo | 📋 Todo | POST /jobs with field, products, operations |
| US-118 | Assign job to user/role | S | Solo | 📋 Todo | Multi-party assignment (grower, applicator, agronomist) |
| US-119 | Execute job (start) | S | Solo | 📋 Todo | PATCH /jobs/:id/start |
| US-120 | Complete job (with as-applied) | M | Solo | 📋 Todo | PATCH /jobs/:id/complete, attach data |
| US-121 | Job status workflow | M | Solo | 📋 Todo | Draft → Assigned → In Progress → Completed → Verified |
| US-122 | Job timeline view | M | Solo | 📋 Todo | UI showing job history with events |

#### Offline-First Engine

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-123 | SQLite edge database schema | M | Solo | 📋 Todo | Write-ahead log enabled |
| US-124 | Protobuf event log | L | Solo | 📋 Todo | Append-only event log for sync |
| US-125 | Vector clock implementation | L | Solo | 📋 Todo | Causality tracking for CRDT merges |
| US-126 | CRDT merge logic | XL | Solo | 📋 Todo | Last-write-wins with conflict detection |
| US-127 | Conflict resolution UI | L | Solo | 📋 Todo | Human-readable diffs for jobs, inventory, boundaries |
| US-128 | Idempotent sync upserts | M | Solo | 📋 Todo | At-least-once delivery guarantee |
| US-129 | Content-addressed blob storage | M | Solo | 📋 Todo | For large files (ISOXML, images, PDFs) |
| US-130 | Offline acceptance test | L | Solo | 📋 Todo | 100 jobs with airplane mode toggles, zero data loss |

#### Identity & Access Management

| Story | Description | Assignee | Status | Notes |
|-------|-------------|----------|--------|-------|
| US-131 | Org/User/Role data model | M | Solo | 📋 Todo | Multi-tenant orgs, users, role-based access |
| US-132 | User registration & login | M | Solo | 📋 Todo | Email/password, JWT tokens |
| US-133 | OAuth2/OIDC foundation | L | Solo | 📋 Todo | Prep for SAML/SCIM integration later |
| US-134 | Role definitions | S | Solo | 📋 Todo | Grower, Manager, Agronomist, Retailer, Auditor, Contractor, Landlord |
| US-135 | Permission model | M | Solo | 📋 Todo | Read/write/admin per resource type |
| US-136 | Tenant onboarding flow | M | Solo | 📋 Todo | Create org, admin user, initial setup |

#### Spatial Data (PostGIS)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-137 | Field/Block data model | M | Solo | 📋 Todo | Polygons with PostGIS geometry |
| US-138 | Boundary import (GeoJSON, Shapefile) | M | Solo | 📋 Todo | Parse and validate spatial data |
| US-139 | As-applied data model | M | Solo | 📋 Todo | Time-stamped polygons with product + rate |
| US-140 | Spatial query API | M | Solo | 📋 Todo | Intersects, within, area calculations |
| US-141 | Map view UI (basic) | L | Solo | 📋 Todo | Leaflet or Mapbox GL, display fields/boundaries |

#### OEM Importers

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-142 | Deere Operations Center OAuth | M | Solo | 📋 Todo | Implement OAuth flow, token refresh |
| US-143 | Deere API: list fields | M | Solo | 📋 Todo | Fetch field boundaries |
| US-144 | Deere API: import prescriptions | L | Solo | 📋 Todo | Download prescriptions, convert to internal format |
| US-145 | Deere API: import as-applied | L | Solo | 📋 Todo | Download as-applied data |
| US-146 | CNH data importer | L | Solo | 📋 Todo | API or file-based, depends on integration matrix |
| US-147 | AGCO data importer | L | Solo | 📋 Todo | API or file-based, depends on integration matrix |
| US-148 | USB/SD file ingest tool | M | Solo | 📋 Todo | Local file picker, upload to server |

### Medium Priority (Should Complete)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-149 | API documentation (OpenAPI/Swagger) | M | Solo | 📋 Todo | Auto-generated from FastAPI |
| US-150 | Basic unit tests (80% coverage target) | L | Solo | 📋 Todo | pytest, coverage tracking |
| US-151 | CI/CD pipeline setup | M | Solo | 📋 Todo | GitHub Actions, run tests on push |
| US-152 | Machine data model | S | Solo | 📋 Todo | Equipment inventory (make, model, serial) |
| US-153 | Product catalog foundation | S | Solo | 📋 Todo | Products table, basic CRUD |
| US-154 | Telemetry schema design | M | Solo | 📋 Todo | Offline duration, conflict count, conversion success/fail |

### Low Priority (Nice to Have)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-155 | GraphQL API (complement REST) | L | Solo | 📋 Todo | Strawberry or Graphene for Python |
| US-156 | WebSocket support for real-time updates | M | Solo | 📋 Todo | FastAPI WebSockets |
| US-157 | Audit log foundation | M | Solo | 📋 Todo | Log all mutations with user, timestamp |
| US-158 | Docker Compose for local dev | S | Solo | 📋 Todo | Postgres, Redis, backend, frontend |

---

## Technical Debt / Maintenance

- [ ] Optimize ISOXML parser performance if conversion takes >30s per file
- [ ] Refactor CRDT merge logic if complexity becomes unmaintainable
- [ ] Review security audit checklist (OWASP top 10)

---

## Sprint Metrics

### Planned vs Actual
- **Planned:** 58 stories, ~320 hours (accounting for holiday break)
- **Completed:** TBD
- **Completion Rate:** TBD

### Velocity
- **Previous Sprint:** 16 stories (Sprint 1)
- **This Sprint:** TBD
- **Trend:** TBD

---

## Key Decisions

| Date | Decision | Rationale |
|------|----------|-----------|
| 2025-11-15 | SQLAlchemy 2.0 with async | Modern async patterns, performance for high-concurrency sync |
| 2025-11-15 | Pydantic v2 for validation | Type safety, performance, auto-generated OpenAPI docs |
| 2025-11-15 | Alembic for migrations | Standard Python DB migration tool |
| 2025-11-15 | Leaflet for maps (defer Mapbox) | Open-source, lower cost for MVP, upgrade later if needed |
| 2025-11-15 | JWT tokens for auth (defer SAML) | Simpler for pilot, SAML/SCIM added in Phase 2+ |

---

## Risks & Mitigation

| Risk | Impact | Mitigation |
|------|--------|------------|
| ISOXML spec complexity underestimated | Critical | Allocate 2 extra weeks buffer, consider hiring contractor specialist |
| Offline CRDT merge conflicts | High | Extensive testing, conflict resolution UI must be intuitive |
| OEM API rate limits | Medium | Cache aggressively, batch requests, queue background jobs |
| Solo founder burnout (10-week sprint) | High | Break into 2-week mini-milestones, reassess scope at Week 6 |
| Holiday break disrupts momentum | Medium | Ship foundational pieces before break, resume with OEM integrations |

---

## Mini-Milestones (Internal Checkpoints)

| Week | Milestone | Deliverables |
|------|-----------|--------------|
| Week 3-4 | Infrastructure ready | FastAPI, Next.js, Postgres + PostGIS, gRPC setup |
| Week 5-6 | ISOXML converter working | Parse and export prescriptions with basic round-trip |
| Week 7-8 | Job engine + offline foundation | Create, assign, complete jobs; SQLite + event log |
| Week 9-10 | IAM + spatial data | Org/user/role, boundaries, map view |
| Week 11-12 | OEM importers + polish | Deere/CNH/AGCO import, acceptance tests, documentation |

---

## Wins & Learnings

### What Went Well
- TBD (end of sprint)

### What Could Be Improved
- TBD (end of sprint)

### Action Items for Next Sprint
- [ ] TBD

---

## Sprint Review Notes

**What We Shipped:**
- TBD (end of sprint)

**Demo to Pilots:**
- Import prescriptions from Deere Operations Center
- Create job and complete offline
- Sync when back online
- Show conflict resolution UI

**Feedback Received:**
- TBD (end of sprint)

---

## Links & References

- Product Roadmap: `product/roadmap/2025-2026-fms-roadmap.md`
- Previous Sprint: `sprint-01-beachhead-foundation.md`
- Next Sprint: `sprint-03-compliance-audit.md` (Phase 2, Weeks 13-22)
- PRDs to create:
  - ISOXML/ADAPT Conversion Engine
  - Offline Job Engine
  - Multi-Tenant IAM
  - OEM Data Importers

---

## Notes

**Critical Path:**
1. Infrastructure setup (US-101-106) → Blocks everything
2. ISOXML converter (US-107-115) → Core value prop
3. Offline engine (US-123-130) → Non-negotiable requirement
4. Job engine (US-116-122) → Enables workflow validation

**Dependencies on Sprint 1:**
- Integration matrix must be complete before starting OEM importers
- Pilot customers provide test files for ISOXML/ADAPT validation

**Post-Sprint Deliverables:**
- Running FastAPI + Next.js application
- ISOXML/ADAPT converter library
- Offline sync demonstration
- OEM import working for at least Deere Operations Center
- Sprint 2 retrospective and velocity analysis
