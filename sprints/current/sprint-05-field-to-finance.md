# Sprint 5 - Field-to-Finance

**Sprint Duration:** Week 33-44 (2026-06-14 - 2026-08-29)
**Sprint Goal:** Build complete field-to-finance integration and achieve ≤5 business day month-end close
**Status:** Planning

---

## Sprint Goal

Deliver comprehensive field-to-finance integration enabling month-end close in ≤5 business days (targeting ≤3 days by Week 52). Build GL mapping UI, accounting system integrations (QuickBooks, Xero, NetSuite), landlord settlement calculations with ACH export, lender view with budget vs actuals and covenant monitoring, and automated month-end close workflow with complete field-to-finance traceability.

**Success Criteria:**
- GL mapping UI enables chart of accounts mapping for field/block/crop costs
- QuickBooks and Xero export working with accruals, invoices, payments
- Landlord settlements calculated accurately with ACH file export
- Lender view shows budgets vs actuals, collateral inventory, covenant compliance
- Month-end close workflow completes in ≤5 business days
- Complete field-to-finance linkage with audit trail

---

## Sprint Capacity

**Available Days:** 60 working days (12 weeks)
**Capacity:** 480 hours (solo founder, full-time)

---

## Sprint Backlog

### High Priority (Must Complete)

#### General Ledger (GL) Foundation

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-401 | Chart of accounts data model | M | Solo | 📋 Todo | Account structure, hierarchy, types |
| US-402 | GL mapping configuration | L | Solo | 📋 Todo | Map field/block/crop/cost-type to GL accounts |
| US-403 | GL mapping UI | L | Solo | 📋 Todo | Visual mapping interface, templates |
| US-404 | Journal entry data model | M | Solo | 📋 Todo | Debit, credit, description, reference |
| US-405 | Journal entry generation | L | Solo | 📋 Todo | Auto-generate from cost allocations |
| US-406 | GL posting workflow | M | Solo | 📋 Todo | Review, approve, post journal entries |
| US-407 | Trial balance report | M | Solo | 📋 Todo | Verify debits = credits |
| US-408 | GL dimension tracking | M | Solo | 📋 Todo | Track by field, crop, season, landlord |

#### QuickBooks Integration

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-409 | QuickBooks OAuth setup | M | Solo | 📋 Todo | QB Online OAuth 2.0 flow |
| US-410 | QuickBooks API client | M | Solo | 📋 Todo | API wrapper for QB operations |
| US-411 | Export chart of accounts | M | Solo | 📋 Todo | Push COA to QuickBooks |
| US-412 | Export journal entries | L | Solo | 📋 Todo | Create JEs in QuickBooks |
| US-413 | Export invoices | M | Solo | 📋 Todo | Customer invoices (landlords, contractors) |
| US-414 | Export bills/expenses | M | Solo | 📋 Todo | Vendor bills (input purchases) |
| US-415 | Export payments | M | Solo | 📋 Todo | Payment transactions |
| US-416 | QuickBooks sync status | S | Solo | 📋 Todo | Track what's been exported, errors |
| US-417 | QuickBooks error handling | M | Solo | 📋 Todo | Retry logic, error notifications |

#### Xero Integration

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-418 | Xero OAuth setup | M | Solo | 📋 Todo | Xero OAuth 2.0 flow |
| US-419 | Xero API client | M | Solo | 📋 Todo | API wrapper for Xero operations |
| US-420 | Export chart of accounts (Xero) | M | Solo | 📋 Todo | Push COA to Xero |
| US-421 | Export journal entries (Xero) | L | Solo | 📋 Todo | Create manual journals in Xero |
| US-422 | Export invoices (Xero) | M | Solo | 📋 Todo | Sales invoices |
| US-423 | Export bills (Xero) | M | Solo | 📋 Todo | Purchase bills |
| US-424 | Export payments (Xero) | M | Solo | 📋 Todo | Payment transactions |
| US-425 | Xero sync status | S | Solo | 📋 Todo | Track sync state |

#### NetSuite Integration (Defer if timeline tight)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-426 | NetSuite SuiteTalk setup | L | Solo | 📋 Todo | SOAP/REST API configuration |
| US-427 | NetSuite journal entry export | XL | Solo | 📋 Todo | More complex than QB/Xero |
| US-428 | NetSuite error handling | M | Solo | 📋 Todo | Robust error recovery |

#### Landlord Settlements

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-429 | Landlord data model | M | Solo | 📋 Todo | Landlord, agreement, split percentages |
| US-430 | Settlement calculation engine | L | Solo | 📋 Todo | Calculate revenue/cost splits per agreement |
| US-431 | Settlement statement generation | M | Solo | 📋 Todo | PDF statement with breakdown |
| US-432 | Settlement approval workflow | M | Solo | 📋 Todo | Review, approve, finalize settlements |
| US-433 | ACH file export | L | Solo | 📋 Todo | NACHA format for bank processing |
| US-434 | Settlement payment tracking | M | Solo | 📋 Todo | Track payment status, reconciliation |
| US-435 | Multi-landlord field support | M | Solo | 📋 Todo | Handle fields with multiple landlords |
| US-436 | Settlement history | S | Solo | 📋 Todo | View past settlements per landlord |

#### Lender View

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-437 | Budget data model | M | Solo | 📋 Todo | Budgeted costs per field/crop/season |
| US-438 | Budget entry UI | M | Solo | 📋 Todo | Create and edit budgets |
| US-439 | Budget vs actuals report | L | Solo | 📋 Todo | Compare budgeted to actual costs |
| US-440 | Variance analysis | M | Solo | 📋 Todo | Highlight over/under budget items |
| US-441 | Collateral inventory tracking | M | Solo | 📋 Todo | Track inventory value as collateral |
| US-442 | Covenant monitoring | L | Solo | 📋 Todo | Define and monitor loan covenants |
| US-443 | Lender report generation | M | Solo | 📋 Todo | Standardized lender reports |
| US-444 | Lender portal access (read-only) | M | Solo | 📋 Todo | Secure view for lenders |

#### Month-End Close Workflow

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-445 | Month-end close checklist | M | Solo | 📋 Todo | Define required steps |
| US-446 | Close period lock | M | Solo | 📋 Todo | Prevent changes to closed periods |
| US-447 | Accrual generation | L | Solo | 📋 Todo | Auto-generate accruals for WIP, inventory |
| US-448 | Closing entries automation | L | Solo | 📋 Todo | Auto-generate closing JEs |
| US-449 | Month-end close report | M | Solo | 📋 Todo | Summary of all close activities |
| US-450 | Close status dashboard | M | Solo | 📋 Todo | Track close progress, blockers |
| US-451 | Close notification workflow | S | Solo | 📋 Todo | Notify stakeholders of close status |
| US-452 | Field-to-finance audit trail | M | Solo | 📋 Todo | Complete linkage from field to GL |

### Medium Priority (Should Complete)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-453 | Multi-currency support | L | Solo | 📋 Todo | If needed for international operations |
| US-454 | Tax calculation | M | Solo | 📋 Todo | Sales tax on inputs |
| US-455 | Fixed asset tracking | M | Solo | 📋 Todo | Equipment depreciation |
| US-456 | Financial statement preview | L | Solo | 📋 Todo | P&L, balance sheet from FMS data |
| US-457 | Accounting period management | M | Solo | 📋 Todo | Define fiscal periods, quarters |
| US-458 | Intercompany transactions | M | Solo | 📋 Todo | If grower has multiple entities |

### Low Priority (Nice to Have)

| Story | Description | Estimate | Assignee | Status | Notes |
|-------|-------------|----------|----------|--------|-------|
| US-459 | Sage Intacct integration | XL | Solo | 📋 Todo | Another accounting system |
| US-460 | Custom financial reports | L | Solo | 📋 Todo | User-defined report builder |
| US-461 | Cash flow forecasting | L | Solo | 📋 Todo | Predict cash needs |

---

## Technical Debt / Maintenance

- [ ] Optimize journal entry generation for large datasets
- [ ] Add retry logic for all accounting API calls
- [ ] Review ACH file format compliance with bank requirements

---

## Sprint Metrics

### Planned vs Actual
- **Planned:** 61 stories, ~480 hours
- **Completed:** TBD
- **Completion Rate:** TBD

### Velocity
- **Previous Sprint:** 52 stories (Sprint 4)
- **This Sprint:** TBD
- **Trend:** TBD

---

## Key Decisions

| Date | Decision | Rationale |
|------|----------|-----------|
| 2026-06-14 | QuickBooks & Xero first, NetSuite optional | QB/Xero cover most small-medium farms, NetSuite for enterprise only |
| 2026-06-14 | NACHA format for ACH | Industry standard, widely supported by banks |
| 2026-06-14 | Journal entries as primary export | More flexible than direct transaction export |
| 2026-06-14 | 5 business day close target | Realistic for Phase 4, optimize to 3 days by Week 52 |
| 2026-06-14 | Lender view as read-only portal | Security, simplicity, lenders don't edit data |

---

## Risks & Mitigation

| Risk | Impact | Mitigation |
|------|--------|------------|
| Accounting system API changes | High | Version-lock APIs, monitor deprecation notices |
| Complex GL mapping for diverse operations | High | Provide templates, expert consulting for setup |
| Month-end close >5 days in pilot | Critical | Identify bottlenecks early, optimize workflow |
| ACH file rejected by bank | Medium | Validate format thoroughly, test with bank |
| Landlord settlement disputes | Medium | Clear statements, audit trail, approval workflow |
| NetSuite complexity exceeds timeline | Medium | Defer to post-V1, focus on QB/Xero |

---

## Mini-Milestones (Internal Checkpoints)

| Week | Milestone | Deliverables |
|------|-----------|--------------|
| Week 33-34 | GL foundation | COA, mapping UI, journal entry generation |
| Week 35-37 | QuickBooks integration | OAuth, export all transaction types |
| Week 38-40 | Xero integration + landlord settlements | Xero export, settlement calcs, ACH |
| Week 41-42 | Lender view | Budgets, actuals, covenants, reports |
| Week 43-44 | Month-end close workflow | Automated close, testing with pilot data |

---

## Success Metrics (End of Sprint)

| Metric | Target | Status |
|--------|--------|--------|
| Month-end close time | ≤5 business days | 🔵 Not Started |
| GL export accuracy | 100% | 🔵 Not Started |
| Landlord settlement accuracy | 100% | 🔵 Not Started |
| ACH file acceptance rate | 100% | 🔵 Not Started |
| Budget variance reporting | <1% error | 🔵 Not Started |

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
- Map field costs to GL accounts
- Export journal entries to QuickBooks
- Generate landlord settlement with ACH file
- Show lender view with budget vs actuals

**Feedback Received:**
- TBD (end of sprint)

---

## Links & References

- Product Roadmap: `product/roadmap/2025-2026-fms-roadmap.md`
- Previous Sprint: `sprint-04-inventory-costing.md`
- Next Sprint: `sprint-06-mission-planner-sre.md` (Phase 5, Weeks 45-52)
- PRDs to create:
  - GL Mapping & Journal Entry Generation
  - Accounting System Integrations (QB, Xero, NetSuite)
  - Landlord Settlements & ACH Export
  - Lender View & Covenant Monitoring
  - Month-End Close Workflow

---

## Notes

**Critical Path:**
1. GL mapping (US-402-403) → Required for all accounting exports
2. QuickBooks integration (US-409-417) → Most common accounting system
3. Month-end close workflow (US-445-452) → Core success metric

**Dependencies on Sprint 4:**
- Cost allocation must be accurate and complete
- Inventory valuation required for accruals
- Reconciliation data feeds into close process

**Post-Sprint Deliverables:**
- Complete QuickBooks and Xero integrations
- First landlord settlements processed
- First automated month-end close with pilot
- Sprint 5 retrospective and close time analysis
- Lender view deployed for pilot validation
