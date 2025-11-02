# Quick Start Guide - Farm Management System (FMS)

**Welcome!** This guide will get you up and running in 30 minutes.

---

## 🎯 What is This Project?

A **verification-grade Farm Management System** that enables mixed-fleet operations across John Deere, CNH, and AGCO equipment with:
- ≥95% cross-brand file conversion accuracy (ISOXML/ADAPT)
- 99.9% offline job completion reliability
- Multi-tenant architecture from day 1

**Current Status:** Week 0 - Validation Sprint (16 weeks to pilot deployment)

---

## 📋 Prerequisites

Ensure you have these installed:

| Tool | Version | Check Command | Install |
|------|---------|---------------|---------|
| **Python** | 3.11+ | `python --version` | [python.org](https://python.org) |
| **Node.js** | 18+ | `node --version` | [nodejs.org](https://nodejs.org) |
| **Docker** | 20+ | `docker --version` | [docker.com](https://docker.com) |
| **Git** | Any | `git --version` | [git-scm.com](https://git-scm.com) |
| **Make** | Any | `make --version` | Windows: [chocolatey.org](https://chocolatey.org/packages/make) |

**Windows Users:** Install Make via Chocolatey: `choco install make`

---

## 🚀 First-Time Setup (10 minutes)

### 1. Clone and Navigate
```bash
git clone <repo-url>
cd saas202511
```

### 2. View Available Commands
```bash
make help
```

This shows all available commands. The most common ones:
- `make install` - Install dependencies
- `make dev` - Start development environment
- `make test` - Run tests
- `make lint` - Check code quality
- `make format` - Format code

### 3. Start Docker Services
```bash
make docker-up
```

This starts:
- **PostgreSQL** on port `5411`
- **Redis** on port `6411`

Verify with: `docker ps`

### 4. Install Dependencies

**⚠️ Note:** Backend and frontend directories don't exist yet (created in Sprint 1). This will show warnings, which is expected.

```bash
make install
```

---

## 📚 Key Documentation

| Document | Purpose | When to Read |
|----------|---------|--------------|
| **[CLAUDE.md](../CLAUDE.md)** | AI assistant guide, project conventions | Read this next |
| **[project-brief.md](../project-brief.md)** | Full product vision, requirements | Understanding the product |
| **[Roadmap](../product/roadmap/2025-2026-fms-roadmap.md)** | 16-week validation sprint plan | Planning work |
| **[Sprint 1 Plan](../sprints/current/sprint-01-beachhead-foundation.md)** | Current sprint (Weeks 0-2) | What to build now |
| **[OKRs](../business/2025-okrs.md)** | Success metrics | Understanding goals |
| **[Coding Standards](C:\devop\coding_standards.md)** | Code style and conventions | Before writing code |

---

## 🏗️ Project Structure

```
saas202511/
├── backend/              # FastAPI backend (to be created in Sprint 1)
├── frontend/             # Next.js frontend (to be created in Sprint 1)
├── product/              # Product planning (roadmap, PRDs)
│   ├── roadmap/          # Product roadmaps
│   └── PRDs/             # Product requirement documents
├── sprints/              # Sprint plans and user stories
│   └── current/          # Active sprint plans
├── business/             # OKRs, business planning
├── technical/            # Technical specs, ADRs, architecture
│   ├── adr/              # Architecture Decision Records
│   ├── api/              # API specifications
│   └── testing/          # Test plans
├── docs/                 # Additional documentation
├── scripts/              # Utility scripts
├── fundraising/          # Investor materials automation
├── docker-compose.yml    # Docker services configuration
├── Makefile              # Unified task runner
├── pyproject.toml        # Python tooling configuration
├── tsconfig.json         # TypeScript configuration
├── eslint.config.js      # ESLint configuration
└── .prettierrc           # Prettier configuration
```

---

## 🛠️ Development Workflow

### Daily Development

```bash
# 1. Start Docker services (PostgreSQL, Redis)
make docker-up

# 2. Start backend (FastAPI on port 8011)
make dev-backend

# 3. In another terminal, start frontend (Next.js on port 3011)
make dev-frontend

# OR start both at once:
make dev
```

### Before Committing Code

```bash
# Format code
make format

# Run linters
make lint

# Run type checkers
make typecheck

# Run tests
make test
```

### Stopping Services

```bash
# Stop Docker services
make docker-down

# Clean build artifacts
make clean
```

---

## 📖 Understanding the Project Approach

### 16-Week Validation Sprint

This project uses a **validation-first approach**:

| Phase | Weeks | Goal |
|-------|-------|------|
| **Phase 0** | 0-2 | Set up dev environment, spike ISOXML/ADAPT conversion |
| **Phase 1** | 3-10 | Build core interop features (converters, job engine, offline sync) |
| **Phase 1.5** | 11-16 | Deploy to 2 pilot customers, validate assumptions |
| **🎯 Week 12 Gate** | **12** | **Go/No-Go decision based on validation results** |

If Week 12 validation succeeds (≥90% round-trip accuracy, offline works), proceed to Phases 2-5 (Compliance, Inventory, Finance, Mission Planner).

### Tech Stack

| Layer | Technology | Why |
|-------|-----------|-----|
| **Backend** | Python 3.11+ + FastAPI | Modern async Python, fast development |
| **Frontend** | Next.js (React) | SSR, excellent performance, great DX |
| **Database** | PostgreSQL 16 + PostGIS | Spatial data support, enterprise reliability |
| **Offline** | SQLite + CRDT | Deterministic sync, conflict resolution |
| **Cache** | Redis | Session storage, job queues |

### Multi-Tenant Architecture

Every table (except system tables) includes `tenant_id`. All API endpoints are tenant-scoped by subdomain.

**Example:**
- `customer1.fms.com` → Tenant ID: `customer1`
- `customer2.fms.com` → Tenant ID: `customer2`

See: `technical/multi-tenant-architecture.md`

---

## 🎓 Your First 30 Minutes

**If you're new to this project, follow this path:**

1. **Read this file** (you're doing it!)
2. **Run `make help`** - See available commands
3. **Run `make docker-up`** - Start services
4. **Read `project-brief.md`** - Understand what we're building (10 min)
5. **Read `CLAUDE.md`** - Understand project conventions (15 min)
6. **Check current sprint** - `sprints/current/sprint-01-*` (5 min)
7. **Ready to code!** Start with Sprint 1 user stories

---

## 🔧 Tooling Reference

### Python (Backend)

| Tool | Purpose | Command |
|------|---------|---------|
| **Black** | Code formatting | `cd backend && black .` |
| **Ruff** | Linting + auto-fix | `cd backend && ruff check .` |
| **mypy** | Type checking | `cd backend && mypy .` |
| **pytest** | Testing | `cd backend && pytest` |

Configuration: `pyproject.toml`

### JavaScript/TypeScript (Frontend)

| Tool | Purpose | Command |
|------|---------|---------|
| **Prettier** | Code formatting | `cd frontend && npm run format` |
| **ESLint** | Linting | `cd frontend && npm run lint` |
| **TypeScript** | Type checking | `cd frontend && npm run typecheck` |

Configuration: `.prettierrc`, `eslint.config.js`, `tsconfig.json`

---

## ❓ FAQ

### Q: Backend and frontend directories don't exist yet?
**A:** Correct! They'll be created in **Sprint 1, Week 0** (this week). The planning phase is complete, now we build.

### Q: What should I work on first?
**A:** Check the current sprint plan: `sprints/current/sprint-01-beachhead-foundation.md`. Start with user story #1.

### Q: Where do I put PRDs and tech specs?
**A:**
- PRDs → `product/PRDs/`
- Tech specs → `technical/specs/`
- Architecture decisions → `technical/adr/`

### Q: How do I create a new sprint plan?
**A:** Copy `sprints/sprint-plan-template.md` and fill it out. Claude Code can help with this.

### Q: The `make` command doesn't work on Windows?
**A:** Install Make via Chocolatey: `choco install make`. Or use the commands directly (see `Makefile` for the actual commands).

### Q: How do I update the roadmap?
**A:** Edit `product/roadmap/2025-2026-fms-roadmap.md`. Commit and push changes.

---

## 🆘 Getting Help

1. **Documentation**: Check `docs/` folder first
2. **Claude Code**: Ask Claude to explain anything (it has full project context)
3. **Makefile**: Run `make help` to see all commands
4. **Git History**: `git log` to see recent changes

---

## 🎯 Next Steps

**Week 0 (This Week):**
1. Set up FastAPI backend project structure
2. Set up Next.js frontend project structure
3. Initialize PostgreSQL schemas (tenants, users, orgs)
4. Download sample ISOXML files for spike

**Week 1:**
5. Create integration matrix (OEM data sources)
6. Begin ISOXML conversion spike
7. Create first PRD (ISOXML/ADAPT Converter)

**Week 2:**
8. Complete ISOXML spike (validate round-trip)
9. Complete ADAPT spike
10. Begin Phase 1 development

---

## 📌 Important Notes

- **Code before committing:** Always run `make format && make lint && make test`
- **Multi-tenant always:** Every feature must consider tenant isolation
- **Validation focus:** Weeks 0-16 are about proving ISOXML/ADAPT works
- **Defer non-essentials:** No fancy UI, no advanced features yet
- **Ask Claude:** Claude Code has full project context and can help with anything

---

**Ready to start building? Run `make dev` and let's go! 🚀**
