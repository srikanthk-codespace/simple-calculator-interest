# Peer-graded assignment: completion checklist

This file is a helper checklist. The course's linked repository and on-screen instructions take priority if they differ.

## Part 1 — GitHub UI (12 points)

Create a GitHub repository for the project, then add and commit these exact files at the repository root:

- [ ] `LICENSE` — Apache License, Version 2.0
- [ ] `README.md` — project description and usage
- [ ] `CODE_OF_CONDUCT.md`
- [ ] `CONTRIBUTING.md`
- [ ] `simple-interest.sh`

Submit the repository URL in Part 1 Task 1. Check that every file is visible on the repository's main page.

## Part 2 — Git CLI (8 points)

The course rubric specifically asks for a fork of the repository linked in the assignment. Do not substitute a newly created repository for that fork.

1. Open the repository hyperlink in the assignment and click **Fork**. Keep all files when forking.
2. Clone your fork:

   ```bash
   git clone https://github.com/YOUR-USERNAME/FORKED-REPOSITORY.git
   cd FORKED-REPOSITORY
   ```

3. Create the typo-fix branch and edit `README.md` as the assignment directs:

   ```bash
   git switch -c bug-fix-typo
   # Make the required README.md typo correction
   git add README.md
   git commit -m "Fix typo in README"
   git push -u origin bug-fix-typo
   ```

4. On GitHub, open a pull request from `bug-fix-typo` into `main`. Merge it. Capture a screenshot showing:
   - current branch is `main`
   - the README change from `bug-fix-typo` is merged into `main`

5. Create and push the revert branch as required by the course workflow:

   ```bash
   git switch main
   git pull origin main
   git switch -c bug-fix-revert
   ```

   Follow the course's specified revert action/commit, then push:

   ```bash
   git push -u origin bug-fix-revert
   ```

6. Submit:
   - [ ] URL of your fork
   - [ ] Screenshot of the first merge
   - [ ] URL of the accepted pull request
   - [ ] URL of the GitHub **Branches** page showing `main`, `bug-fix-typo`, and `bug-fix-revert` and their status

## Important

The screenshot rubric requires the actual GitHub merge and the accepted pull request. A ZIP file alone cannot create those GitHub records or screenshots. Use the exact typo/revert instructions from the course's linked repository or lab; they are not fully visible in the supplied photos.
