# Security Policy

This repo is a setup guide, not software that runs as a service. But its commands run
with `sudo` and change system settings, so a mistake here could weaken the security of
anyone who follows it.

## Supported versions

Only the latest version on the `main` branch is maintained. It is written for and
tested on Ubuntu 26.04 with GNOME 50.

## What to report

- A command that weakens security, e.g. disables a protection, opens a port, or sets
  overly broad file permissions
- A download from an untrusted or hijacked source, or an install script that is no
  longer published by its official project
- A GNOME extension, package or plugin listed here that has a known security problem
- Personal data accidentally committed to the repo (passwords, tokens, keys, email
  addresses, disk UUIDs)

Bugs that are not security-related, like a failing command or a broken link, can go in
a normal [issue](https://github.com/omeryelkenci/ubuntu-setup/issues/new/choose).

## How to report

Please **don't open a public issue** for security problems. Report privately instead:

1. Go to the repo's [**Security** tab](https://github.com/omeryelkenci/ubuntu-setup/security).
2. Click **Report a vulnerability**.
3. Describe the problem, which README step or file it affects, and a fix if you know one.

Only you and the maintainer can see the report.

## What happens next

I'll reply within 7 days. If the problem is confirmed, I'll fix the README or configs,
note the fix in `CHANGELOG.md`, and credit you unless you'd rather stay anonymous.
