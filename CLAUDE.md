# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Homebrew tap repository (`homebrew-tap`). Homebrew taps are third-party repositories of formulae and/or casks for the Homebrew package manager on macOS/Linux.

## Repository Structure

- `Formula/` — Ruby formula files (`.rb`) defining how to install packages
- `Casks/` — Ruby cask files (`.rb`) for macOS GUI applications (if used)

## Common Commands

```bash
# Add this tap locally
brew tap joarhal/tap /Users/joarhal/repo/joarhal/hombrew-tap

# Test a formula
brew install --build-from-source <formula>
brew test <formula>
brew audit --strict <formula>

# Lint a formula
brew style Formula/<name>.rb
```

## Formula Conventions

- Formula class names are PascalCase versions of the filename
- Use `homepage`, `url`, `sha256`, and `license` at minimum
- Define `install`, and optionally `test`, methods
