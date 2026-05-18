# Mystical Islands - Asset Management Guide

This repository uses a selective tracking system to manage a large game project with an 8GB+ Assets folder. Only edited files are committed to GitHub, keeping the repository lightweight while sharing code changes with the team.

## Repository Structure

```
/home/localuser/Documents/Projects/RPG/
├── Assets/                    # Main project folder (mostly ignored by git)
│   ├── _git/                  # ✓ TRACKED: Only edited files go here
│   ├── Scenes/                # ✗ Not tracked (too large)
│   ├── Dragonsan/             # ✗ Not tracked (too large)
│   ├── Atavism demo/          # ✗ Not tracked (too large)
│   └── Resources/             # ✗ Not tracked (too large)
├── .gitignore                 # Whitelist rules for _git folder only
├── .git/hooks/pre-commit      # Auto-copies files on commit
└── README.md                  # This file
```

## How It Works

### The Git Hook (Automatic)

When you commit, a **pre-commit hook** automatically:
1. Detects which files you've staged for commit
2. **Copies them to `Assets/_git/`** preserving folder structure
3. Stages the copies automatically
4. Commits everything in one shot

**Result:** You edit files normally, commit normally, and only the edits get tracked.

---

## Workflow: Step by Step

### 1. Edit Files Normally

Edit your files anywhere in the `Assets/` folder as usual:

```bash
# Example: Edit a script in its normal location
vim Assets/Atavism\ demo/OtherPackages/SFBayStudios/SFB\ Demo\ Scripts/SFB_AudioManager.cs
```

### 2. Stage Your Changes

```bash
git add Assets/Atavism\ demo/OtherPackages/SFBayStudios/SFB\ Demo\ Scripts/SFB_AudioManager.cs
```

### 3. Commit (Hook Does the Magic)

```bash
git commit -m "Fixed audio manager Atavism namespace issue"
```

**What happens automatically:**
- ✓ File copied to: `Assets/_git/Atavism demo/OtherPackages/SFBayStudios/SFB Demo Scripts/SFB_AudioManager.cs`
- ✓ Folder structure **preserved**
- ✓ `.meta` file also tracked (if it exists)
- ✓ Both original and copy are staged
- ✓ Commit created with all files

### 4. Push to GitHub

```bash
git push origin master
```

---

## Important Rules

### ✓ DO (Follow These)

- **Edit files in their normal location** (e.g., `Assets/Scripts/MyScript.cs`)
- **Commit from their normal location** - the hook handles copying
- **Keep the full path when files end up in `_git/`** (this is automatic)
- **Commit message should describe the change**, not the file location

### ✗ DON'T (Avoid These)

- **Don't manually copy files to `_git/`** - the hook does this
- **Don't edit files in the `_git/` folder** directly - edit the originals
- **Don't forget to add/commit your changes** - just doing `git add Assets/yourfile.cs` and `git commit`

---

## File Path Examples

Here's how folder structure is preserved:

| Original Location | After Commit (in _git/) |
|---|---|
| `Assets/Scripts/Player.cs` | `Assets/_git/Scripts/Player.cs` |
| `Assets/Scenes/MainScene.meta` | `Assets/_git/Scenes/MainScene.meta` |
| `Assets/Atavism demo/OtherPackages/SFBayStudios/SFB Demo Scripts/SFB_AudioManager.cs` | `Assets/_git/Atavism demo/OtherPackages/SFBayStudios/SFB Demo Scripts/SFB_AudioManager.cs` |

**The full path is ALWAYS preserved** - this makes it crystal clear what was changed.

---

## Common Commands

### View what will be tracked
```bash
git status
```

### See the diff before committing
```bash
git diff Assets/YourFile.cs
```

### Commit with message
```bash
git add Assets/YourFile.cs
git commit -m "Your clear commit message here"
```

### Push changes to GitHub
```bash
git push origin master
```

### See commit history
```bash
git log --oneline
```

### Pull latest changes from team
```bash
git pull origin master
```

---

## For the Team: Cloning and Setup

When team members clone this repo for the first time:

```bash
# Clone the repo
git clone https://github.com/RunlevelSystems/mystical-islands.git
cd mystical-islands

# They will only get:
# - The _git folder with edited scripts
# - The .gitignore
# - This README

# To get the full Assets folder:
# 1. Copy the large Assets folder from our network/cloud storage
# 2. Merge the edits from _git/ back into Assets/ as needed
```

---

## Troubleshooting

### "Pre-commit hook failed"
- Check if the hook is executable: `chmod +x .git/hooks/pre-commit`
- Verify git is tracking your file correctly: `git status`

### "File isn't showing up in _git/"
- Make sure you used `git add` and `git commit`
- The hook only runs on `git commit`, not on `git add`

### "I edited _git/ instead of the original"
- Both will get synced, but edit the original `Assets/` file instead
- Delete the one in `_git/` and re-commit

### "I need to sync the full Assets folder to _git/"
```bash
# Manual one-time copy of everything (if needed)
cp -r Assets/* Assets/_git/
git add Assets/_git/
git commit -m "Synced full assets to tracking folder"
```

---

## Repository Statistics

- **GitHub Repo**: https://github.com/RunlevelSystems/mystical-islands.git
- **Tracked Files**: Only files in `Assets/_git/`
- **Ignored Size**: ~8GB of assets (not uploaded)
- **Repository Size**: Only code and edited files (~few MB)

---

## Quick Reference: Git Commands

```bash
# Stage a file
git add Assets/yourfile.cs

# Commit (hook auto-copies to _git/)
git commit -m "Your message"

# Push to GitHub
git push

# Pull latest from team
git pull

# Check what's staged
git status

# Undo unstaged changes
git checkout -- Assets/yourfile.cs

# Undo last commit (keep changes)
git reset --soft HEAD~1
```

---

## Questions?

If you have questions about the workflow:
1. Check `git log` to see how previous commits worked
2. Look at the folder structure in `Assets/_git/` to see what's tracked
3. Ask the team lead

Happy developing! 🎮
