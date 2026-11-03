# Changelog

Notable changes to this setup. Format based on
[Keep a Changelog](https://keepachangelog.com/en/1.1.0/); entries are grouped by date
rather than version numbers.

## [Unreleased]

## 2026-11-03

First version, built and tested on Ubuntu 26.04 with GNOME 50.

### Added

- **Terminal**: zsh as the default shell, Oh My Zsh with the `af-magic` theme and the
  `git`, `fzf`, `zsh-autosuggestions` and `zsh-syntax-highlighting` plugins.
- **Terminal tools**: zoxide, eza, bat, ripgrep, fd, fzf (with fd and bat previews),
  tldr, btop, lazygit and git-delta, configured in `configs/tools.zsh`.
- `try-theme` command for previewing Oh My Zsh themes in a temporary shell.
- Nord color palette for the Ptyxis terminal.
- Optional Powerlevel10k theme with the MesloLGS NF font, and its saved style in
  `configs/p10k.zsh`.
- **Desktop**: Super+Enter (terminal) and Super+E (Home folder) shortcuts.
- GNOME extensions: Clipboard Indicator (Super+Shift+V), Caffeine (always-visible icon),
  Vitals and Tiling Shell, which replaces Ubuntu's Tiling Assistant.
- Quick settings: dock click minimizes, faster key repeat, battery percentage,
  automatic Night Light, Caps Lock as an extra Ctrl.
- **Backups**: Timeshift system snapshots (daily 5, weekly 3, boot 3) with
  `configs/timeshift.json`, using placeholders for the disk UUID and username.
- Daily encrypted Déjà Dup backups of the home folder to Google Drive
  (`Backups/ubuntu-personal-laptop`), with restore steps.
- `cheatsheet.html`: searchable, click-to-copy reference for all of the above, with
  light and dark screenshots in `docs/`.
- README with table of contents, badges and clone instructions; MIT license,
  `.gitignore` and contributing guide.
- `CODE_OF_CONDUCT.md` (Contributor Covenant 2.1), with reports going to the maintainer
  through GitHub.
- Issue forms for bugs and ideas, and a pull request template with a checklist
  (`.github/`). Blank issues are turned off.
- `SECURITY.md` with private reporting through GitHub's private vulnerability reporting,
  which is now turned on for the repo.
