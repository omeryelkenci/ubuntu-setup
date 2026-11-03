# Contributing

This is my personal Ubuntu setup, so it reflects my own preferences. You're welcome to
fork it and make it yours. Fixes and suggestions are welcome too.

## Good contributions

- **Fixes**: a command that fails, a package that was renamed, a typo, a broken link.
- **Version updates**: steps that changed in a newer Ubuntu or GNOME release.
- **Ideas**: a tool or setting you think fits. Please open an issue first, so we can
  talk about it before you spend time on a pull request.

Changes to my personal choices (theme, shortcuts, which extensions I use) will usually
be declined. Those belong in your fork.

## Reporting a problem

[Open an issue](https://github.com/omeryelkenci/ubuntu-setup/issues/new) with:

- your Ubuntu version (`lsb_release -d`) and GNOME version (`gnome-shell --version`)
- the step from the README you ran
- the full error output

## Pull requests

1. Fork the repo and create a branch from `main`.
2. Make the change and **test it on a real Ubuntu install** (a VM is fine). Note the
   Ubuntu version you tested on in the pull request.
3. Keep README commands copy-pasteable: one step per code block, no `$` prompts, and no
   steps that only work on one specific machine.
4. If you change a tool or shortcut, update `cheatsheet.html` too.
5. Use a short commit message in the imperative mood, e.g. `Fix fzf preview command`.

## Keep personal data out

Never commit secrets or machine-specific values: passwords, tokens, SSH keys, `.env`
files, disk UUIDs, usernames or email addresses. Use placeholders such as
`REPLACE_WITH_DISK_UUID` and show how to fill them in, as `configs/timeshift.json` does.
Files named `*.local` are ignored by git and are a safe place for personal versions.

## License

By contributing, you agree that your contributions are licensed under the
[MIT License](LICENSE).
