# Sprint 4 - Inventory & Costing

**Sprint Duration:** Week 23-32 (2026-04-05 - 2026-06-13)
**Sprint Goal:** Build complete inventory ledger, cost allocation system, and achieve ≤5% monthly inventory variance
**Status:** Planning

---

## Sprint Goal

Deliver comprehensive inventory management and cost allocation capabilities. Build full inventory ledger (receipts, transfers, blends, shrink, returns), implement cost allocation of inputs, labor, and machine hours to field/block/crop, enable reconciliation between issued and as-applied with target variance ≤5% monthly (targeting ≤2% by Week 52), and integrate product catalog with lot/batch tracking.

**Success Criteria:**
- Inventory ledger tracks all product movements with barcode/QR support
- Cost allocation accurately assigns input, labor, and machine costs to field/block/crop
- Reconciliation reports show issued vs as-applied variance ≤5% monthly
- Product catalog integrated with label database
- Tank mix tracking supports multi-product blends with compliance validation
- Landlord cost splits calculated accurately

---

## Sprint Capacity

**Available Days:** 50 working days (10 weeks)
**Capacity:** 400 hours (solo founder, full-time)

---

## Sprint Backlog

### High Priority (Must Complete)

#### Inventory Ledger

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-301 | Inventory data model | M | Solo | 📋 Todo | InventoryLot, Receipt, Transfer, Blend, Shrink, Return |
| US-302 | Product receipt entry | M | Solo | 📋 Todo | Record incoming products with lot/batch, quantity, cost |
| US-303 | Inventory transfer | M | Solo | 📋 Todo | Move products between locations (warehouse, truck, field) |
| US-304 | Tank mix/blend tracking | L | Solo | 📋 Todo | Multi-product blends with proportions, new lot created |
| US-305 | Shrink/loss recording | S | Solo | 📋 Todo | Record inventory losses with reason codes |
| US-306 | Product return entry | S | Solo | 📋 Todo | Return unused products, credit back to inventory |
| US-307 | Barcode/QR code support | M | Solo | 📋 Todo | Scan products for quick lookup and entry |
| US-308 | Inventory ledger report | M | Solo | 📋 Todo | View all movements per product, location, date range |
| US-309 | Current inventory balance | M | Solo | 📋 Todo | Real-time balance per product per location |
| US-310 | Low stock alerts | S | Solo | 📋 Todo | Notify when inventory below threshold |

#### Product Catalog

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-311 | Product catalog data model | M | Solo | 📋 Todo | Product, Category, Manufacturer, UOM, cost |
| US-312 | Product CRUD operations | M | Solo | 📋 Todo | Create, read, update, archive products |
| US-313 | Label database sync | L | Solo | 📋 Todo | Keep product labels current from CDMS/Greenbook |
| US-314 | Product search and filter | M | Solo | 📋 Todo | Search by name, category, manufacturer, EPA# |
| US-315 | Product pricing history | M | Solo | 📋 Todo | Track cost changes over time |
| US-316 | Unit of measure conversions | M | Solo | 📋 Todo | Convert gallons, pounds, ounces, liters, etc. |
| US-317 | Lot/batch tracking | M | Solo | 📋 Todo | Unique lot numbers, expiration dates, source |

#### Cost Allocation

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-318 | Cost data model | M | Solo | 📋 Todo | CostEntry linked to Field, Block, Crop, Season |
| US-319 | Input cost allocation | L | Solo | 📋 Todo | Allocate product costs to field/block based on as-applied |
| US-320 | Labor cost allocation | L | Solo | 📋 Todo | Allocate labor hours and rates to jobs |
| US-321 | Machine cost allocation | L | Solo | 📋 Todo | Allocate equipment hours and rates to jobs |
| US-322 | Overhead cost allocation | M | Solo | 📋 Todo | Allocate indirect costs (fuel, maintenance) |
| US-323 | Landlord split calculation | M | Solo | 📋 Todo | Calculate cost shares per landlord agreement |
| US-324 | Cost allocation report | M | Solo | 📋 Todo | View total costs per field/block/crop |
| US-325 | Cost per acre calculation | S | Solo | 📋 Todo | Normalize costs by field area |
| US-326 | Cost trends analysis | M | Solo | 📋 Todo | Compare costs across seasons, fields |

#### Reconciliation

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-327 | Reconciliation data model | M | Solo | 📋 Todo | Issued vs as-applied comparison |
| US-328 | Issued quantity calculation | M | Solo | 📋 Todo | Sum of products issued from inventory for jobs |
| US-329 | As-applied quantity extraction | M | Solo | 📋 Todo | Extract actual applied quantities from job telemetry |
| US-330 | Variance calculation | M | Solo | 📋 Todo | Calculate difference, percentage variance |
| US-331 | Variance threshold alerts | S | Solo | 📋 Todo | Alert if variance exceeds acceptable range |
| US-332 | Reconciliation report | M | Solo | 📋 Todo | Detailed report per product, field, time period |
| US-333 | Variance reason codes | S | Solo | 📋 Todo | Categorize reasons (spillage, calibration, measurement error) |
| US-334 | Variance resolution workflow | M | Solo | 📋 Todo | Adjust inventory or investigate anomalies |
| US-335 | Monthly reconciliation cycle | M | Solo | 📋 Todo | Automated monthly reconciliation with notifications |

#### Tank Mix & Blending

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-336 | Tank mix data model | M | Solo | 📋 Todo | Multi-product blend with proportions |
| US-337 | Tank mix builder UI | L | Solo | 📋 Todo | Select products, enter quantities, calculate proportions |
| US-338 | Tank mix compliance check | M | Solo | 📋 Todo | Validate mix against label restrictions |
| US-339 | Tank mix lot creation | M | Solo | 📋 Todo | Create new inventory lot for blended product |
| US-340 | Tank mix label generation | M | Solo | 📋 Todo | Generate label with all constituent products |
| US-341 | Tank mix cost tracking | M | Solo | 📋 Todo | Aggregate costs from constituent products |

### Medium Priority (Should Complete)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-342 | Inventory import from CSV | M | Solo | 📋 Todo | Bulk import existing inventory records |
| US-343 | Cycle count workflow | M | Solo | 📋 Todo | Physical inventory counts, variance resolution |
| US-344 | Inventory valuation methods | L | Solo | 📋 Todo | FIFO, LIFO, weighted average |
| US-345 | Expiration date tracking | S | Solo | 📋 Todo | Alert on expiring products |
| US-346 | Inventory audit trail | M | Solo | 📋 Todo | Complete history of all inventory transactions |
| US-347 | Cost allocation templates | M | Solo | 📋 Todo | Pre-configured allocation rules for common scenarios |
| US-348 | Landlord agreement management | M | Solo | 📋 Todo | Store and manage split percentages |

### Low Priority (Nice to Have)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-349 | Inventory forecasting | L | Solo | 📋 Todo | Predict usage based on historical patterns |
| US-350 | Purchase order integration | M | Solo | 📋 Todo | Link receipts to POs |
| US-351 | Vendor catalog integration | M | Solo | 📋 Todo | Import product catalogs from suppliers |
| US-352 | Mobile inventory scanning | L | Solo | 📋 Todo | Barcode scanning on mobile devices |

---

## Technical Debt / Maintenance

- [ ] Optimize cost allocation queries if slow for large datasets
- [ ] Add database indexes for inventory ledger queries
- [ ] Review UOM conversion accuracy with edge cases

---

## Sprint Metrics

### Planned vs Actual
- **Planned:** 52 stories, ~400 hours
- **Completed:** TBD
- **Completion Rate:** TBD

### Velocity
- **Previous Sprint:** 53 stories (Sprint 3)
- **This Sprint:** TBD
- **Trend:** TBD

---

## Key Decisions

| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-04-05 | Weighted average for inventory valuation | Simpler than FIFO/LIFO, accurate enough for ag operations |
| 2026-04-05 | Barcode/QR optional for MVP | Manual entry acceptable, add scanning later if needed |
| 2026-04-05 | 5% variance threshold for alerts | Industry standard for ag inventory |
| 2026-04-05 | Tank mix creates new lot | Compliance requirement, enables full traceability |

---

## Risks & Mitigation

| Risk | Impact | Mitigation |
|------|--------|------------|
| Inventory variance >5% in pilot | High | Work with pilots on calibration, measurement accuracy |
| Complex landlord split scenarios | Medium | Start with simple percentage splits, add complexity later |
| Tank mix compliance too restrictive | Medium | Configurable rules, allow overrides with warnings |
| Cost allocation rules too complex | Medium | Template common scenarios, allow custom rules |
| UOM conversions inaccurate | Medium | Use standard conversion library, validate with pilots |

---

## Mini-Milestones (Internal Checkpoints)

| Week | Milestone | Deliverables |
|------|-----------|--------------|
| Week 23-24 | Inventory ledger foundation | Data model, receipts, transfers, balance reports |
| Week 25-26 | Product catalog integration | Label sync, lot/batch tracking, search |
| Week 27-28 | Cost allocation engine | Input, labor, machine cost allocation |
| Week 29-30 | Reconciliation system | Issued vs as-applied variance reporting |
| Week 31-32 | Tank mix & polish | Blending, compliance checks, final testing |

---

## Success Metrics (End of Sprint)

| Metric | Target | Status |
|--------|--------|--------|
| Monthly inventory variance | ≤5% | 🔵 Not Started |
| Inventory transactions tracked | 100% | 🔵 Not Started |
| Cost allocation accuracy | ≥95% | 🔵 Not Started |
| Tank mix compliance validation | 100% | 🔵 Not Started |
| Reconciliation report generation | <5 minutes | 🔵 Not Started |

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
- Record product receipt
- Create tank mix
- Allocate costs to field
- Run reconciliation report showing variance

**Feedback Received:**
- TBD (end of sprint)

---

## Links & References

- Product Roadmap: `product/roadmap/2025-2026-fms-roadmap.md`
- Previous Sprint: `sprint-03-compliance-audit.md`
- Next Sprint: `sprint-05-field-to-finance.md` (Phase 4, Weeks 33-44)
- PRDs to create:
  - Inventory Ledger & Product Catalog
  - Cost Allocation Engine
  - Reconciliation System
  - Tank Mix & Blending

---

## Notes

**Critical Path:**
1. Inventory data model (US-301) → Blocks all inventory work
2. Product catalog (US-311-317) → Required for inventory ledger
3. Cost allocation (US-318-326) → Builds on job completion data from Sprints 2-3
4. Reconciliation (US-327-335) → Requires both inventory and as-applied data

**Dependencies on Sprint 3:**
- Job completion data with as-applied quantities
- Traceability graph for linking jobs to product lots
- Pilot usage data for reconciliation testing

**Post-Sprint Deliverables:**
- Complete inventory ledger system
- Cost allocation working for pilots
- First monthly reconciliation reports
- Sprint 4 retrospective and variance analysis
