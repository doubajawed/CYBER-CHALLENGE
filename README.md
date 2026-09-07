# Cyber Challenge MVP

Browser-based cybersecurity awareness game built with Node.js, Express, SQLite and vanilla HTML/CSS/JS.

## Included in this upgraded build
- Arabic + English with RTL/LTR
- Player information: first name, last name, age, country
- 194 country choices (193 UN members excluding Israel + Palestine + Holy See; North Korea included)
- Initial awareness test (100 points; question count follows supplied content)
- 8 educational challenges across 4 security domains
- Educational feedback with correct/incorrect effects and short sound cues
- Strong feedback effects: security verification for correct choices and cyber-threat/glitch effect for wrong choices
- XP, ranks and badges
- Final test with rotating sets and retry support
- Correct answer positions balanced across A/B/C/D instead of clustering on one option
- Before/After comparison and exact improvement calculation
- Server-side certificate eligibility (70+)
- New fixed professional certificate template with reserved data zones
- Dynamic PDF certificate with name, scores, improvement, rank, country flag, age, date and Certificate ID
- Certificate verification page
- Live rankings refreshed every second: World, each continent, each country, Top 3 and champion/elite titles
- Simple protected Admin Dashboard
- SQLite persistence
- Security headers, rate limiting, signed sessions and basic input validation

## Run

Node 22 LTS is recommended.

```bash
npm install
npm start
```

Then open `http://localhost:3000`.

Admin: `http://localhost:3000/admin.html`

## Environment

Copy `.env.example` to `.env` and set a strong `ADMIN_PASSWORD` and `SESSION_SECRET` before publishing online.

The project is designed for a small MVP and intentionally avoids unnecessary features.

Owner / Founder credit: Douba Jouad (دوبة جواد)


### Windows / cross-platform fixes
- Country flags are bundled locally via `country-flag-icons`; no external flag CDN is required.
- Navigation uses browser history plus an in-app Back control.
- Client-side bilingual helper and explicit form element references avoid browser-dependent global element variables.


## Windows troubleshooting
- Extract the ZIP so `package.json` is directly in the folder you open in CMD (not inside another `project` folder).
- Use Node.js 22 LTS.
- Run `npm install` then `npm start`.
- Hard refresh the browser with Ctrl+F5 if an older JS/CSS version appears.
