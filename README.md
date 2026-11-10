# openmediavault.org

Source of <https://www.openmediavault.org>, built with [Hugo](https://gohugo.io/) (extended, v0.167.0) and the [Blowfish](https://blowfish.page/) theme.

## Local development

```bash
git clone --recurse-submodules git@github.com:openmediavault/openmediavault.github.io.git
cd openmediavault.github.io
make install       # Hugo extended to ~/.local/bin (Linux), skipped if present
make serve         # http://localhost:1313
make build         # site in public/
```

`make help` lists all targets. `HUGO_VERSION`, `PREFIX` and `PORT` can be overridden, e.g. `make serve PORT=8080`.

## Writing a news post

```bash
hugo new --kind blog blog/2026-11-11-new-updates-available.md
```

Edit the file, commit and push to `main`. GitHub Actions builds and deploys the site (`.github/workflows/pages.yml`).

Front matter: `title`, `date`, `categories` (`News`, `Common`, `Misc`, `Coding`, `Ubuntu`) and optionally `slug`.
The URL is `/blog/<year>/<month>/<slug>/`.

## Pages

Static pages live in `content/*.md` and set their URL explicitly (`url: "/about.html"`), so the old `.html` links keep working.

## Content elements

- Code: fenced blocks with a language (`bash`, `console`, `yaml`, ...). A copy button is added automatically.
- Alerts: `> [!NOTE]`, `> [!TIP]`, `> [!IMPORTANT]`, `> [!WARNING]`, `> [!CAUTION]`.
- Buttons: `{{< button href="/download.html" icon="mdi-download" sub="Second line" class="outline" >}}Download{{< /button >}}`. Variants (`class`): `secondary`, `outline`, `on-dark`; `center="true"` centers the button. All buttons (shortcode, hero, pager, ...) are rendered by `layouts/partials/omv-button.html`; the look is defined only in the "Buttons" block of `assets/css/custom.css` (`--btn-*` tokens, also for dark mode).
- Cards: wrap unordered lists (or any Markdown) in cards, optionally with title and icon. `cols="2"` places them in a two-column grid.

  ```text
  {{< cards cols="2" >}}
  {{< card title="Core" icon="mdi-home" >}}
  - Based on Debian Linux
  {{< /card >}}
  {{< card >}}
  - Link aggregation
  {{< /card >}}
  {{< /cards >}}
  ```

- YouTube: `{{< youtubeLite id="VIDEOID" >}}`
- All of these are shown on `/styleguide/` (not linked, not indexed).

## Icons

Icons are inline SVG in `assets/icons/`, used with `{{< icon "NAME" >}}`. UI icons come from [Material Design Icons](https://pictogrammers.com/library/mdi/) (prefix `mdi-`, e.g. `mdi-download`), brand logos from [Simple Icons](https://simpleicons.org/) (prefix `si-`, e.g. `si-youtube`). `search.svg` and `xmark.svg` have no prefix on purpose: they replace the Blowfish icons in its search dialog. To add an icon:

```bash
curl -s https://raw.githubusercontent.com/Templarian/MaterialDesign-SVG/master/svg/NAME.svg \
  | sed -E 's/ id="mdi-[^"]*"//; s/<path /<path fill="currentColor" /' > assets/icons/mdi-NAME.svg

# brand logo from Simple Icons
curl -s https://raw.githubusercontent.com/simple-icons/simple-icons/develop/icons/NAME.svg \
  | sed -E 's/ role="img"//; s#<title>[^<]*</title>##; s/<path /<path fill="currentColor" /' > assets/icons/si-NAME.svg
```

## Ads

Google AdSense is only loaded on pages with `ads: true` in the front matter. Place the ad with `{{< adsense >}}`.
Publisher and slot IDs are in `config/_default/params.toml` (`[adsense]`). `static/ads.txt` is served as `/ads.txt`.
`hugo server` shows a placeholder instead of the ad.

## Branding

- Colors: `assets/css/schemes/omv.css` (palettes from the Workbench `_colors.scss`) and the alert colors in `assets/css/custom.css`
- Fonts and styles: `assets/css/custom.css` (Inter is self-hosted in `static/fonts/`)
- Icons: [Material Design Icons](https://pictogrammers.com/library/mdi/) as SVG in `assets/icons/` (files with theme icon names, e.g. `search.svg`, replace the Blowfish icons)
- Logo: `assets/img/logo.svg` (header, inline SVG); icons: `static/favicon.svg` (original), PNG/ICO variants next to it
- Menus: `config/_default/menus.en.toml`

## Updating the theme

The theme is a git submodule pinned to a release. Theme files are never edited; customizations live in `assets/`, `layouts/` and `config/`.

```bash
cd themes/blowfish && git fetch --tags && git checkout vX.Y.Z && cd ../..
```

Then compare `config/_default/params.toml` with `themes/blowfish/config/_default/params.toml` for new options and use a Hugo version the theme supports (see `themes/blowfish/theme.toml`).

Own template files (the look of the original WordPress site):

- `layouts/partials/header/omv.html`: blue navigation bar and the hero of the home page (`hero:` in the front matter of `content/_index.md`: title, subtitle, text, buttons, highlights)
- `layouts/partials/footer.html`: footer with the three link columns (`config/_default/menus.en.toml`, menu `footer`)
- `layouts/partials/home/omv.html`, `layouts/partials/omv-post.html`, `layouts/blog/list.html`: home page and news posts
- `layouts/partials/omv-button.html`, `layouts/shortcodes/button.html`: the one button markup, used everywhere
- `layouts/shortcodes/cards.html`, `layouts/shortcodes/card.html`: cards for lists
- `layouts/partials/extend-head-uncached.html`, `layouts/shortcodes/adsense.html`: AdSense
- `layouts/partials/favicons.html`: favicons
