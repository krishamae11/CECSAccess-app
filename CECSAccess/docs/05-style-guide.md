# Style Guide: CECSAccess

## 1. Colors

| Role | Hex | Used for |
|------|------|-----|----------|
| Primary | Charcoal | `#464646` | Sidebar, primary buttons, headings |
| Background | White | `#ffffff` | Page background, cards |
| Text | Near-black | `#222222` | Body text |
| Success | Forest green | `#2f5a20` | Approved, Available, saved messages |
| Error | Deep red | `#a8001a` | Error messages, Delete, Rejected, Log out |

Extra brand tones (decoration only, never for small text):

| Name | Hex | Used for |
|------|-----|----------|
| Butter | `#fee78f` | Dashboard banner, Pending badge |
| Gold | `#a89548` | Active menu highlight, table header line |
| Dark gold | `#7e6f2c` | Button hover |
| Blush | `#f8d7da` | Page top border, error background |

## 2. Contrast check (WCAG AA needs 4.5:1)

| Text color on background | Ratio | Result |
|--------------------------|-------|--------|
| Text `#222222` on background `#ffffff` | 15.91:1 | ✓ Pass |
| Text `#222222` on butter `#fee78f` | 12.91:1 | ✓ Pass |
| White on primary `#464646` (buttons) | 9.44:1 | ✓ Pass |
| White on dark gold `#7e6f2c` (button hover) | 5.00:1 | ✓ Pass |
| Success `#2f5a20` on white | 8.06:1 | ✓ Pass |
| Error `#a8001a` on white | 7.84:1 | ✓ Pass |
| Error `#a8001a` on blush `#f8d7da` | 5.87:1 | ✓ Pass |
| Gold `#a89548` on white | 2.98:1 | ✗ Fail. Use only for borders and highlights, not text |

## 3. Fonts

- **Headings:** Gelasio, bold. Fallback: Georgia, serif.
- **Body:** Gelasio, regular. Fallback: Georgia, serif.
- **Base size:** 16px, line height 1.5.
- **Scale:** page title 24px, section title 18px, table text 14px, small tags 12px.

Link tag for `<head>`:
`<link href="https://fonts.googleapis.com/css2?family=Gelasio:wght@400;600;700&display=swap" rel="stylesheet">`

## 4. Components

**Primary button:** charcoal background, white bold text, 8px radius, padding 10px 18px. Hover: dark gold background. Example: "Submit request", "Save request".

**Secondary button:** white background, 1px charcoal border, charcoal bold text, same size and radius. Hover: light grey background. Example: "Cancel", "Edit", "View".

**Danger button:** red background, white text. Only for Delete and Reject.

**Text input:** white background, 1px grey border (`#bbbbbb`), 8px radius, padding 9px 10px, 16px text. The label sits above in bold 14px. Focus: 3px gold outline.

**Error message:** deep red bold text, 14px, with a "!" icon, shown directly under the field. The field gets a 2px deep red border. Example: "! End time must be after start time."

**Status badge:** pill shape, 12px bold text. Pending = butter, Approved = light green, Rejected = blush.

## 5. CSS variables

```css
:root {
  --color-primary: #464646;   /* sidebar, buttons, headings */
  --color-bg: #ffffff;        /* page background */
  --color-text: #222222;      /* body text. Contrast on bg: 15.91:1 ✓ */
  --color-success: #2f5a20;   /* approved, available. 8.06:1 on white ✓ */
  --color-error: #a8001a;     /* errors, delete. 7.84:1 on white ✓ */

  --color-butter: #fee78f;    /* banner, pending badge */
  --color-gold: #a89548;      /* highlight, borders only */
  --color-gold-dark: #7e6f2c; /* button hover. White on it: 5.0:1 ✓ */
  --color-blush: #f8d7da;     /* top border, error background */
  --color-border: #bbbbbb;    /* input borders */

  --font-heading: "Gelasio", Georgia, serif;
  --font-body: "Gelasio", Georgia, serif;
  --font-size-base: 16px;
  --radius: 8px;
}
```
