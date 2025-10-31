# Linear ↔ GitHub Integration Guide

**Status:** ✅ Connected and Working
**Date:** 2025-10-26

---

## ✅ What's Working

- Linear GitHub App installed on: `ChrisStephens1971`
- Connected repositories: All SaaS projects (verdaio-dashboard, saas202501-saas202508)
- Auto-linking commits to Linear issues: **Enabled**
- Team: VER (Verdaio SaaS Projects)

**Test completed:** Issue VER-57 successfully shows GitHub commits

---

## 🚀 How to Use

### Link Commits to Linear Issues

Include the Linear issue ID in your commit message:

```bash
git commit -m "VER-123 Add user authentication feature"
git commit -m "VER-45 Fix navigation bug"
git commit -m "VER-89 Update dashboard styles"
```

**Format:** `VER-{number}` anywhere in the commit message

### View Commits in Linear

1. Open any Linear issue (e.g., VER-123)
2. Look for the **"GitHub"** section in the sidebar
3. You'll see all linked commits, PRs, and branches

### Link Pull Requests

When creating a PR, include the issue ID in:
- PR title: `VER-123: Add authentication`
- PR description: `Closes VER-123`
- Branch name: `feature/VER-123-authentication`

### Auto-Close Issues

Linear can auto-close issues when PRs are merged. Use these keywords:

```
Closes VER-123
Fixes VER-45
Resolves VER-89
```

---

## 📋 Connected Repositories

All these repos are connected to Linear:

- ✅ verdaio-dashboard
- ✅ saas202501 (Service Verge)
- ✅ saas202502 (Primpify)
- ✅ saas202503 (NailRoute)
- ✅ saas202504 (Communivo)
- ✅ saas202505 (Verdaio Sentinel)
- ✅ saas202506 (CareSouth Website Redesign)
- ✅ saas202507
- ✅ saas202508

---

## 🔧 Workflow Examples

### Feature Development

```bash
# 1. Create issue in Linear (e.g., VER-150)
# 2. Create branch
git checkout -b feature/VER-150-new-feature

# 3. Make commits (reference issue)
git commit -m "VER-150 Initial implementation"
git commit -m "VER-150 Add tests"

# 4. Push and create PR
git push origin feature/VER-150-new-feature
gh pr create --title "VER-150: Add new feature" --body "Closes VER-150"

# 5. Merge PR → Linear issue auto-closes
```

### Bug Fixes

```bash
# 1. Create bug in Linear (e.g., VER-200)
# 2. Fix and commit
git commit -m "VER-200 Fix login timeout bug"

# 3. Push
git push origin main
```

### Multiple Issues

```bash
# Reference multiple issues in one commit
git commit -m "VER-45 VER-46 VER-47 Refactor authentication system"
```

---

## 🎯 Best Practices

### DO:
- ✅ Always include VER-XXX in commit messages
- ✅ Link PRs to issues with "Closes VER-XXX"
- ✅ Use descriptive commit messages
- ✅ Create issues before starting work

### DON'T:
- ❌ Forget the VER- prefix (won't link)
- ❌ Use wrong issue numbers
- ❌ Make commits without issue context

---

## 🔍 Verification

### Check Integration Status

**In Linear:**
- Settings → Integrations → GitHub → Should show "Connected"

**In GitHub:**
- Settings → Integrations → Linear → Should list your repos

**Test it:**
```bash
# Make a test commit
git commit -m "VER-XXX Test integration" --allow-empty
git push

# Check Linear issue VER-XXX for the commit
```

---

## 📊 What Syncs

| Item | Syncs to Linear? | Notes |
|------|------------------|-------|
| Commits | ✅ Yes | Shows in issue sidebar |
| Pull Requests | ✅ Yes | Shows PR status |
| PR Reviews | ✅ Yes | Shows review status |
| PR Merges | ✅ Yes | Can auto-close issues |
| Branches | ✅ Yes | Shows linked branches |
| GitHub Issues | ❌ No | Use Linear for issues |
| GitHub Projects | ❌ No | Use Linear for projects |

---

## 🆘 Troubleshooting

### Commits not showing in Linear?

1. **Check issue ID:** Make sure you used correct VER-XXX format
2. **Check repo access:** Verify repo is in connected list
3. **Wait a moment:** Can take 10-30 seconds to sync
4. **Check Linear integration:** Settings → Integrations → GitHub

### Need to add more repos?

1. Go to: https://github.com/settings/installations
2. Find "Linear" → Configure
3. Select additional repositories
4. Save

### Need to reconnect?

1. Linear → Settings → Integrations → GitHub
2. Disconnect
3. Reconnect and reauthorize
4. Select repositories

---

## 📝 Configuration Files

**Linear Config:** `C:\devop\.config\linear-config.json`
**Team Key:** VER
**Workspace:** Verdaio SaaS Projects

---

## ✅ Quick Reference

**Format:** `VER-{number}` in commit messages
**Test Issue:** VER-57 (already has commits)
**Docs:** https://linear.app/docs/github

---

**Integration tested and confirmed working: 2025-10-26**
