# Sprint 3 - Compliance & Audit

**Sprint Duration:** Week 13-22 (2026-01-25 - 2026-04-04)
**Sprint Goal:** Build compliance engine, immutable audit packs, traceability graph, and achieve pilot milestone at Week 26
**Status:** Planning

---

## Sprint Goal

Deliver comprehensive compliance and audit capabilities to achieve ≥85% first-attempt audit pass rate (targeting ≥90%). Build label rules evaluator, REI/PHI timers, restricted material checks, immutable audit pack generation, traceability graph, and proof-of-work flows. Launch production pilot with 2 customers at Week 26 and conduct first audit submissions.

**Success Criteria:**
- Compliance engine validates jobs against label rules and regulatory requirements
- Audit pack generation creates immutable packages with job facts, weather, labels, certs, signatures, photos in <2 minutes
- Traceability graph links field → job → product lot → as-applied → audit submission
- GAP/GlobalG.A.P. export working for one-click audit submissions
- Proof-of-work flow captures work order → telemetry → photos → e-signatures
- **🎯 Pilot Milestone (Week 26): 2 customers in production, first audit submissions, ≥85% pass rate**

---

## Sprint Capacity

**Available Days:** 50 working days (10 weeks)
**Capacity:** 400 hours (solo founder, full-time)

---

## Sprint Backlog

### High Priority (Must Complete)

#### Compliance Engine

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-201 | Label database integration | L | Solo | 📋 Todo | Integrate CDMS or Greenbook for label data |
| US-202 | Label rules data model | M | Solo | 📋 Todo | Store rules per product, jurisdiction, crop |
| US-203 | Label rules evaluator engine | XL | Solo | 📋 Todo | Validate jobs against label rules (rate, timing, crop) |
| US-204 | REI (Re-Entry Interval) timer | M | Solo | 📋 Todo | Calculate and display REI countdown per field/block |
| US-205 | PHI (Pre-Harvest Interval) timer | M | Solo | 📋 Todo | Calculate and display PHI countdown per field/block |
| US-206 | Restricted material checks | M | Solo | 📋 Todo | Validate operator permits for restricted products |
| US-207 | Compliance validation API | M | Solo | 📋 Todo | POST /jobs/:id/validate returns pass/fail with reasons |
| US-208 | Compliance violation UI | M | Solo | 📋 Todo | Show violations with clear remediation steps |
| US-209 | Buffer zone validation | M | Solo | 📋 Todo | Check spatial constraints near water, structures, etc. |

#### Audit Pack Generation

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-210 | Audit pack data model | M | Solo | 📋 Todo | Immutable JSON structure with all required fields |
| US-211 | Job facts collector | M | Solo | 📋 Todo | Extract job details, products, rates, timing, operator |
| US-212 | Weather snapshot integration | M | Solo | 📋 Todo | Fetch weather at job time from API (archive data) |
| US-213 | Label snapshot | S | Solo | 📋 Todo | Attach product labels as of job date |
| US-214 | Operator cert validation | M | Solo | 📋 Todo | Verify operator certifications are current |
| US-215 | E-signature capture | M | Solo | 📋 Todo | Digital signature with timestamp and hash |
| US-216 | Photo attachment | S | Solo | 📋 Todo | Attach photos from mobile (field conditions, equipment) |
| US-217 | Audit pack generator | L | Solo | 📋 Todo | Assemble all data, generate PDF + JSON, <2 min target |
| US-218 | Audit pack storage (immutable) | M | Solo | 📋 Todo | Content-addressed storage, tamper-evident hashing |
| US-219 | Audit pack viewer UI | M | Solo | 📋 Todo | Display audit pack with all sections |

#### Traceability Graph

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-220 | Traceability data model | M | Solo | 📋 Todo | Graph linking Field → Job → ProductLot → AsApplied → AuditSubmission |
| US-221 | Forward traceability | M | Solo | 📋 Todo | From product lot, find all applications (where applied) |
| US-222 | Backward traceability | M | Solo | 📋 Todo | From field, find all products applied with dates |
| US-223 | Traceability query API | M | Solo | 📋 Todo | GraphQL API for complex traceability queries |
| US-224 | Traceability visualization UI | L | Solo | 📋 Todo | Graph view showing relationships |
| US-225 | Recall simulation | S | Solo | 📋 Todo | Given product lot, find all affected fields |

#### GAP/GlobalG.A.P. Export

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-226 | GAP audit format research | M | Solo | 📋 Todo | Understand GAP/GlobalG.A.P. submission formats |
| US-227 | Audit submission data model | S | Solo | 📋 Todo | Store submission history, status, outcome |
| US-228 | GAP export generator | L | Solo | 📋 Todo | Generate GAP-compliant submission package |
| US-229 | GlobalG.A.P. export generator | L | Solo | 📋 Todo | Generate GlobalG.A.P.-compliant submission |
| US-230 | One-click export UI | M | Solo | 📋 Todo | Select jobs, generate submission, download |
| US-231 | Jurisdiction-specific rules | M | Solo | 📋 Todo | Support state/country-specific requirements |

#### Proof-of-Work

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-232 | Work order generation | M | Solo | 📋 Todo | Create work order from job with instructions |
| US-233 | Telemetry ingestion | L | Solo | 📋 Todo | Ingest machine telemetry during job execution |
| US-234 | Photo capture flow | M | Solo | 📋 Todo | Mobile photo upload with GPS, timestamp |
| US-235 | E-signature flow | M | Solo | 📋 Todo | Operator + supervisor signatures with intent |
| US-236 | Proof-of-work package | M | Solo | 📋 Todo | Bundle work order + telemetry + photos + signatures |
| US-237 | Proof-of-work verification | M | Solo | 📋 Todo | Verify completeness and authenticity |

#### Pilot Preparation & Launch

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-238 | Pilot onboarding flow | M | Solo | 📋 Todo | Tenant setup, user creation, initial data import |
| US-239 | Pilot training materials | M | Solo | 📋 Todo | User guides, video walkthroughs |
| US-240 | Pilot support channel | S | Solo | 📋 Todo | Set up email/Slack for pilot support |
| US-241 | Production hosting setup | L | Solo | 📋 Todo | AWS/GCP deployment, monitoring, backups |
| US-242 | Pilot kickoff meeting | S | Solo | 📋 Todo | Week 13: Demo system, set expectations |
| US-243 | **Pilot go-live (Week 26)** | M | Solo | 📋 Todo | Deploy to production, switch pilots to live system |
| US-244 | First audit submission test | M | Solo | 📋 Todo | Submit first audit, track outcome |
| US-245 | Pilot feedback collection | S | Solo | 📋 Todo | Weekly check-ins, bug tracking, feature requests |

### Medium Priority (Should Complete)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-246 | Weather API redundancy | M | Solo | 📋 Todo | Multiple weather providers for reliability |
| US-247 | Operator certification management | M | Solo | 📋 Todo | CRUD for operator certs with expiration tracking |
| US-248 | Compliance dashboard | L | Solo | 📋 Todo | Overview of REI/PHI timers, violations, audit readiness |
| US-249 | Automated compliance tests | L | Solo | 📋 Todo | Test suite for label rules, REI/PHI, buffer zones |
| US-250 | Audit pack versioning | M | Solo | 📋 Todo | Support updates to audit pack format over time |

### Low Priority (Nice to Have)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-251 | SMS notifications for REI/PHI | S | Solo | 📋 Todo | Alerts when fields are safe to re-enter or harvest |
| US-252 | Mobile-optimized audit pack viewer | M | Solo | 📋 Todo | View audit packs on mobile devices |
| US-253 | Compliance report templates | M | Solo | 📋 Todo | Pre-built reports for common audit scenarios |

---

## Technical Debt / Maintenance

- [ ] Optimize audit pack generation if >2 min for large jobs
- [ ] Refactor compliance rules engine if adding new rules becomes cumbersome
- [ ] Review telemetry ingestion performance under high load

---

## Sprint Metrics

### Planned vs Actual
- **Planned:** 53 stories, ~400 hours
- **Completed:** TBD
- **Completion Rate:** TBD

### Velocity
- **Previous Sprint:** 58 stories (Sprint 2)
- **This Sprint:** TBD
- **Trend:** TBD

---

## Key Decisions

| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-01-25 | CDMS for label database | Most comprehensive ag label database, well-supported API |
| 2026-01-25 | Weather Underground API | Historical weather data, reliable for audit snapshots |
| 2026-01-25 | PDF + JSON for audit packs | PDF for human review, JSON for programmatic verification |
| 2026-01-25 | SHA-256 hashing for tamper evidence | Standard, secure, verifiable |
| 2026-01-25 | Pilot go-live at Week 26 | Gives 4 weeks for onboarding, training, initial usage before audit submissions |

---

## Risks & Mitigation

| Risk | Impact | Mitigation |
|------|--------|------------|
| Label database API instability | High | Cache label data, fallback to manual entry if API down |
| Weather API historical data gaps | Medium | Multiple providers, interpolate missing data if needed |
| Pilot customers not ready by Week 26 | High | Start onboarding at Week 13, weekly check-ins, assist with data migration |
| First audit fails (<85% pass rate) | Critical | Work closely with pilots to understand failures, rapid iteration |
| Compliance rules too complex | High | Start with most common rules, defer edge cases to Phase 3+ |
| E-signature legal validity | Medium | Research state/country requirements, partner with DocuSign if needed |

---

## Mini-Milestones (Internal Checkpoints)

| Week | Milestone | Deliverables |
|------|-----------|--------------|
| Week 13-14 | Compliance engine foundation | Label integration, rules evaluator, REI/PHI timers |
| Week 15-16 | Audit pack MVP | Job facts, weather, labels, PDF generation |
| Week 17-18 | Traceability + proof-of-work | Graph model, telemetry ingestion, e-signatures |
| Week 19-20 | GAP/GlobalG.A.P. export | One-click submission generation |
| Week 21-22 | Pilot onboarding | Training, data migration, production hosting |
| **Week 26** | **🎯 Pilot go-live** | **2 customers live, first jobs with compliance validation** |

---

## Pilot Success Criteria (Week 26)

| Metric | Target | Status |
|--------|--------|--------|
| Customers in production | 2 | 🔵 Not Started |
| Jobs created with compliance validation | ≥20 per customer | 🔵 Not Started |
| Audit packs generated | ≥5 per customer | 🔵 Not Started |
| First-attempt audit pass rate | ≥85% | 🔵 Not Started |
| Cross-brand file round-trip accuracy | ≥95% | 🔵 Not Started |
| Offline job completion | 99.9% | 🔵 Not Started |
| Zero data loss in offline scenarios | 100% | 🔵 Not Started |

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

**Demo to Pilots (Week 26):**
- Create job with compliance validation
- Generate audit pack
- Show traceability graph
- Export GAP submission

**Feedback Received:**
- TBD (end of sprint)

---

## Links & References

- Product Roadmap: `product/roadmap/2025-2026-fms-roadmap.md`
- Previous Sprint: `sprint-02-interop-core.md`
- Next Sprint: `sprint-04-inventory-costing.md` (Phase 3, Weeks 23-32)
- PRDs to create:
  - Compliance Engine & Label Rules
  - Audit Pack Generation
  - Traceability Graph
  - GAP/GlobalG.A.P. Export

---

## Notes

**Critical Path:**
1. Label database integration (US-201) → Blocks compliance rules
2. Audit pack generator (US-217) → Core pilot value
3. Pilot onboarding (US-238-242) → Must start early
4. Pilot go-live (US-243) → Hard deadline at Week 26

**Dependencies on Sprint 2:**
- Job engine must be stable and battle-tested
- Offline sync must be reliable for pilot usage
- Spatial data model must support buffer zone validation

**Post-Sprint Deliverables:**
- Compliance engine live in production
- Audit packs generated for pilot jobs
- First audit submissions to GAP/GlobalG.A.P.
- Pilot feedback report
- Sprint 3 retrospective with pilot learnings
