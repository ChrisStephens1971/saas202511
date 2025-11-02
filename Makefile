# Makefile for Farm Management System (FMS)
# Provides unified commands for development, testing, and deployment
# Works on Windows (with make), Mac, and Linux

.PHONY: help install install-backend install-frontend dev dev-backend dev-frontend test test-backend test-frontend build lint format clean docker-up docker-down docs

# Default target
help:
	@echo "Farm Management System - Development Commands"
	@echo ""
	@echo "Setup & Installation:"
	@echo "  make install          - Install all dependencies (backend + frontend)"
	@echo "  make install-backend  - Install Python backend dependencies"
	@echo "  make install-frontend - Install Node.js frontend dependencies"
	@echo ""
	@echo "Development:"
	@echo "  make dev              - Start full dev environment (Docker + backend + frontend)"
	@echo "  make dev-backend      - Start backend only (FastAPI)"
	@echo "  make dev-frontend     - Start frontend only (Next.js)"
	@echo ""
	@echo "Testing:"
	@echo "  make test             - Run all tests"
	@echo "  make test-backend     - Run backend tests (pytest)"
	@echo "  make test-frontend    - Run frontend tests"
	@echo ""
	@echo "Code Quality:"
	@echo "  make lint             - Run linters (Ruff, ESLint)"
	@echo "  make format           - Format code (Black, Prettier)"
	@echo "  make typecheck        - Run type checkers (mypy, tsc)"
	@echo ""
	@echo "Docker:"
	@echo "  make docker-up        - Start Docker services (PostgreSQL, Redis)"
	@echo "  make docker-down      - Stop Docker services"
	@echo ""
	@echo "Build & Deploy:"
	@echo "  make build            - Build production assets"
	@echo "  make docs             - Generate documentation (DOCX conversion)"
	@echo ""
	@echo "Maintenance:"
	@echo "  make clean            - Clean build artifacts and caches"

# Installation targets
install: install-backend install-frontend
	@echo "✅ All dependencies installed"

install-backend:
	@echo "📦 Installing Python backend dependencies..."
	@if [ -d "backend" ]; then \
		cd backend && pip install -r requirements.txt; \
	else \
		echo "⚠️  backend/ directory not found - will create in Sprint 1"; \
	fi

install-frontend:
	@echo "📦 Installing Node.js frontend dependencies..."
	@if [ -d "frontend" ]; then \
		cd frontend && npm install; \
	else \
		echo "⚠️  frontend/ directory not found - will create in Sprint 1"; \
	fi

# Development targets
dev: docker-up
	@echo "🚀 Starting full development environment..."
	@echo "   - Docker services: PostgreSQL (5411), Redis (6411)"
	@echo "   - Backend will be at: http://localhost:8011"
	@echo "   - Frontend will be at: http://localhost:3011"
	@if [ -d "backend" ] && [ -d "frontend" ]; then \
		$(MAKE) dev-backend & $(MAKE) dev-frontend; \
	else \
		echo "⚠️  Backend/frontend not yet created - run in Sprint 1"; \
	fi

dev-backend:
	@echo "🐍 Starting FastAPI backend..."
	@if [ -d "backend" ]; then \
		cd backend && uvicorn main:app --reload --host 0.0.0.0 --port 8011; \
	else \
		echo "⚠️  backend/ not found - create in Sprint 1"; \
	fi

dev-frontend:
	@echo "⚛️  Starting Next.js frontend..."
	@if [ -d "frontend" ]; then \
		cd frontend && npm run dev; \
	else \
		echo "⚠️  frontend/ not found - create in Sprint 1"; \
	fi

# Testing targets
test: test-backend test-frontend
	@echo "✅ All tests passed"

test-backend:
	@echo "🧪 Running backend tests..."
	@if [ -d "backend" ]; then \
		cd backend && pytest -v; \
	else \
		echo "⚠️  No backend tests yet"; \
	fi

test-frontend:
	@echo "🧪 Running frontend tests..."
	@if [ -d "frontend" ]; then \
		cd frontend && npm test; \
	else \
		echo "⚠️  No frontend tests yet"; \
	fi

# Code quality targets
lint:
	@echo "🔍 Running linters..."
	@if [ -d "backend" ]; then \
		echo "  Linting Python code..."; \
		cd backend && ruff check .; \
	fi
	@if [ -d "frontend" ]; then \
		echo "  Linting JavaScript/TypeScript code..."; \
		cd frontend && npm run lint; \
	fi

format:
	@echo "✨ Formatting code..."
	@if [ -d "backend" ]; then \
		echo "  Formatting Python code with Black..."; \
		cd backend && black .; \
		cd backend && ruff check --fix .; \
	fi
	@if [ -d "frontend" ]; then \
		echo "  Formatting JS/TS code with Prettier..."; \
		cd frontend && npm run format; \
	fi

typecheck:
	@echo "🔎 Running type checkers..."
	@if [ -d "backend" ]; then \
		echo "  Type checking Python code with mypy..."; \
		cd backend && mypy .; \
	fi
	@if [ -d "frontend" ]; then \
		echo "  Type checking TypeScript code..."; \
		cd frontend && npm run typecheck; \
	fi

# Docker targets
docker-up:
	@echo "🐳 Starting Docker services..."
	docker-compose up -d
	@echo "✅ PostgreSQL running on port 5411"
	@echo "✅ Redis running on port 6411"

docker-down:
	@echo "🛑 Stopping Docker services..."
	docker-compose down

# Build targets
build:
	@echo "🏗️  Building production assets..."
	@if [ -d "frontend" ]; then \
		cd frontend && npm run build; \
	fi
	@if [ -d "backend" ]; then \
		echo "Backend build complete (Python doesn't require compilation)"; \
	fi

# Documentation targets
docs:
	@echo "📚 Generating documentation..."
	@if command -v pwsh > /dev/null; then \
		pwsh scripts/convert-to-docx.ps1; \
	else \
		powershell -File scripts/convert-to-docx.ps1; \
	fi

# Maintenance targets
clean:
	@echo "🧹 Cleaning build artifacts and caches..."
	@find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".pytest_cache" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".mypy_cache" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".ruff_cache" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name "node_modules" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name ".next" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name "dist" -exec rm -rf {} + 2>/dev/null || true
	@find . -type d -name "build" -exec rm -rf {} + 2>/dev/null || true
	@echo "✅ Clean complete"
