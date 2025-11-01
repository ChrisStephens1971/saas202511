# OKRs - 2025-2026 Annual (52 Weeks)

**Period:** 2025-10-31 - 2026-10-17 (52 weeks)
**Owner:** Solo Founder
**Status:** Planning
**Last Updated:** 2025-10-31

---

## Company Vision & Strategy

**Vision:** Build the world's first mixed-fleet, verification-grade Farm Management System that eliminates data chaos across equipment brands, ensures 99.9% offline reliability, and enables farmers to close books in ≤3 business days with complete field-to-finance traceability.

**Annual Focus:** Complete V1 build with all 5 phases delivered, validate with 2 pilot customers, and achieve all non-negotiable outcomes for production launch.

---

## Objective 1: Ship Production-Ready V1 by Week 52

**Why this matters:** V1 launch validates the complete build approach and proves the FMS can solve critical farm operations, compliance, and financial pain points. Success de-risks future growth and establishes credibility with enterprise customers.

### Key Result 1.1: Complete all 5 phases on schedule
- **Target:** 100% of planned features shipped (Phases 0-5)
- **Current:** 0% (Week 0)
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** Medium (solo capacity risk)

**Milestones:**
- Week 2: Phase 0 complete (beachhead, spikes)
- Week 12: Phase 1 complete (interop core)
- Week 22: Phase 2 complete (compliance)
- Week 32: Phase 3 complete (inventory)
- Week 44: Phase 4 complete (finance)
- Week 52: Phase 5 complete (mission planner, SRE)

**Progress Updates:**
- 2025-10-31: Planning complete, roadmap and sprints defined

---

### Key Result 1.2: Launch 2 pilot customers in production by Week 26
- **Target:** 2 pilot customers live with production usage
- **Current:** 0 customers
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** Medium (customer readiness risk)

**Milestones:**
- Week 1: Pilot customers selected
- Week 13: Pilot onboarding begins
- Week 21-22: Pilot training and data migration
- Week 26: Pilot go-live (production usage)

**Progress Updates:**
- 2025-10-31: Planning to select pilots in Sprint 1

---

### Key Result 1.3: Mobile apps (iOS + Android) in app stores by Week 52
- **Target:** Both apps approved and live in app stores
- **Current:** 0 apps
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** Low-Medium (mobile complexity risk)

**Milestones:**
- Week 47: Mobile framework chosen, architecture defined
- Week 48: Core workflows implemented
- Week 49: TestFlight and Play Store beta
- Week 51: Final submission for app store approval
- Week 52: Apps approved and live

**Progress Updates:**
- 2025-10-31: Deferred to Phase 5 (Weeks 45-52)

---

## Objective 2: Achieve All Non-Negotiable Technical Outcomes

**Why this matters:** These metrics define production readiness and customer value. Failing any of these means V1 is not viable for commercial launch.

### Key Result 2.1: Cross-brand file round-trip ≥95% accuracy
- **Target:** ≥95% operational equivalence on prescription round-trips (ISOXML/ADAPT)
- **Current:** 0% (not tested)
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** Medium (spec complexity risk)

**Validation:**
- Week 2: Spike validates feasibility
- Week 8: Converter achieves ≥90% in development
- Week 10: Converter achieves ≥95% with pilot data
- Week 51: Acceptance test confirms ≥95%

**Progress Updates:**
- 2025-10-31: ISOXML/ADAPT spike planned for Sprint 1

---

### Key Result 2.2: Offline job completion 99.9% success rate
- **Target:** 99.9% of jobs created and completed offline with zero data loss
- **Current:** 0% (not tested)
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** Medium (CRDT complexity risk)

**Validation:**
- Week 10: Offline engine working in development
- Week 22: Pilot customers validate offline workflow
- Week 51: Acceptance test (100 jobs, airplane mode, zero data loss)

**Progress Updates:**
- 2025-10-31: Offline-first architecture planned for Phase 1

---

### Key Result 2.3: First-attempt audit pass rate ≥90%
- **Target:** ≥90% of audit submissions pass on first attempt
- **Current:** 0% (not tested)
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** Medium (compliance rules complexity)

**Validation:**
- Week 18: Audit pack generation working
- Week 26: Pilot milestone target ≥85% pass rate
- Week 52: Production target ≥90% pass rate

**Progress Updates:**
- 2025-10-31: Compliance engine planned for Phase 2

---

## Objective 3: Achieve Operational Excellence Metrics

**Why this matters:** These operational metrics prove the FMS delivers tangible value to farmers and distinguishes it from competitors.

### Key Result 3.1: Monthly inventory variance ≤2%
- **Target:** ≤2% variance between issued and as-applied quantities
- **Current:** Baseline TBD (Week 26)
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** Medium (measurement accuracy risk)

**Milestones:**
- Week 30: Reconciliation system working
- Week 32: Pilot data shows ≤5% variance
- Week 52: Production target ≤2% variance achieved

**Progress Updates:**
- 2025-10-31: Inventory ledger and reconciliation planned for Phase 3

---

### Key Result 3.2: Month-end close in ≤3 business days
- **Target:** Complete month-end close in ≤3 business days
- **Current:** Baseline TBD (Week 38)
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** Medium (accounting integration complexity)

**Milestones:**
- Week 44: Month-end close workflow complete
- Week 44: Pilot achieves ≤5 business days
- Week 52: Production target ≤3 business days achieved

**Progress Updates:**
- 2025-10-31: Field-to-finance integration planned for Phase 4

---

### Key Result 3.3: Historical import (3 seasons) in <4 hours
- **Target:** Import 3 seasons of historical data in <4 hours
- **Current:** 0 hours (not built)
- **Progress:** 0% 🔵
- **Owner:** Solo Founder
- **Confidence:** High (straightforward bulk import)

**Validation:**
- Week 50: Import tool built
- Week 51: Performance test with pilot data confirms <4 hours
- Week 52: Production ready

**Progress Updates:**
- 2025-10-31: Historical import tool planned for Phase 5

---

## Supporting Initiatives

Projects and work that support the OKRs but aren't KRs themselves:

- **Development Environment Setup**
  - Supports: Objective 1
  - Status: Not Started (Sprint 2, Week 3)

- **Pilot Customer Selection & Agreements**
  - Supports: Objective 1, KR 1.2
  - Status: Not Started (Sprint 1, Week 0-1)

- **Integration Matrix (OEM APIs)**
  - Supports: Objective 2, KR 2.1
  - Status: Not Started (Sprint 1, Week 0-2)

- **Label Database Integration (CDMS/Greenbook)**
  - Supports: Objective 2, KR 2.3
  - Status: Not Started (Sprint 3, Week 13-14)

- **SRE Hardening (Monitoring, DR, Security)**
  - Supports: Objective 1
  - Status: Not Started (Sprint 6, Week 49-50)

- **Public API Documentation & Developer Portal**
  - Supports: Objective 1
  - Status: Not Started (Sprint 6, Week 51)

---

## Quarterly Check-ins

### Q4 2025 (Weeks 0-13) - Phases 0-1

**Target Objectives:**
- Phase 0 complete (beachhead, spikes)
- Phase 1 complete (interop core, job engine, offline, IAM, OEM importers)

**Status:** TBD

---

### Q1 2026 (Weeks 14-26) - Phase 2

**Target Objectives:**
- Phase 2 complete (compliance, audit packs, traceability)
- **🎯 Pilot Milestone:** 2 customers live, first audit submissions, ≥85% pass rate

**Status:** TBD

---

### Q2 2026 (Weeks 27-39) - Phases 3-4

**Target Objectives:**
- Phase 3 complete (inventory, costing, reconciliation)
- Phase 4 in progress (GL mapping, QuickBooks/Xero, landlord settlements)

**Status:** TBD

---

### Q3 2026 (Weeks 40-52) - Phases 4-5 + V1 Launch

**Target Objectives:**
- Phase 4 complete (field-to-finance)
- Phase 5 complete (mission planner, telemetry, mobile apps, SRE)
- **🚀 V1 Launch:** All non-negotiables met, production ready

**Status:** TBD

---

## End of Year Review (Week 52)

### Final Scores

| Objective | Score | Notes |
|-----------|-------|-------|
| Objective 1: Ship V1 | TBD | All phases complete, mobile apps live, pilots validated |
| Objective 2: Non-Negotiables | TBD | Round-trip, offline, audit, measured and validated |
| Objective 3: Operational Excellence | TBD | Inventory, finance, import metrics achieved |

**Overall Score:** TBD

### Scoring Guide
- **1.0:** Achieved everything and more
- **0.7-0.9:** Mostly achieved, great progress
- **0.4-0.6:** Made progress but fell short
- **0.0-0.3:** Little to no progress

---

## Retrospective

### What Went Well
- TBD (end of year)

### What Didn't Go Well
- TBD (end of year)

### Learnings
- TBD (end of year)

### Adjustments for V1.1 and Beyond
- [ ] TBD

---

## Risk Tracking

| Risk | Impact | Mitigation | Status |
|------|--------|------------|--------|
| Solo founder capacity (52-week sprint) | Critical | Ruthless prioritization, consider hiring after pilot validation | 🟡 Monitoring |
| ISOXML/ADAPT spec complexity | High | Early spike, contractor specialist if needed | 🟡 Monitoring |
| Pilot customer availability | High | Select and engage early, weekly check-ins | 🟡 Monitoring |
| OEM API access restrictions | High | Fallback to file import, engage developer programs | 🟡 Monitoring |
| Mobile app complexity | Medium | Defer to Phase 5, focus on web first | 🟢 Mitigated |
| First audit fails (<90% pass rate) | Critical | Pilot feedback loops, rapid iteration | 🟡 Monitoring |

---

## Related Links

- Product Roadmap: `product/roadmap/2025-2026-fms-roadmap.md`
- Sprint Plans: `sprints/current/sprint-01-beachhead-foundation.md` (and sprints 2-6)
- Project Brief: `project-brief.md`
- Weekly Reviews: `business/weekly-reviews/` (to be created)

---

## Notes

**For Solo Founder:**
- These OKRs are simplified to focus on critical launch milestones and non-negotiable outcomes
- Weekly tracking recommended but not required - focus on delivery
- Reassess at each quarterly boundary (Weeks 13, 26, 39)
- Consider hiring after pilot validation (Week 26+) if capacity becomes critical blocker
- V1.1 OKRs will shift to growth, optimization, and customer acquisition post-launch
