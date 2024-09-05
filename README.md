# hayakuchi

This is a minimal blog template.

# Theme

<details>
  <summary>Expand for theme details.</summary>

This theme is a modified vesion of [archie zola](https://github.com/athul/archie).

## Features

- Pagination
- Tags
- Auto Dark Mode(based on system theme)
- Dark/Light Mode toggle
- Google Analytics Script
- Meta Tags For Individual Pages
- Support Latex.

## Config

### Customize `<meta/>` tags

The following TOML and YAML code will yield two `<meta/>` tags:

1. `<meta property="og:title" content="the og title"/>`
1. `<meta property="og:description" content="the og description"/>`

**TOML**

```toml
title = "post title"
description = "post desc"
date = "2023-01-01"

[extra]
meta = [
    {property = "og:title", content = "the og title"},
    {property = "og:description", content = "the og description"},
]
```

**YAML**

```yaml
title: "post title"
description: "post desc"
date: "2023-01-01"
extra:
  meta:
    - property: "og:title"
      content: "the og title"
    - property: "og:description"
      content: "the og description"
```

If the `og:title`, the `og:description`, or the `description` are not set, the
page's title and description will be used. That is, the following TOML code
generates

```html
<meta property="og:title" content="post title"/>
<meta property="og:description" content="post desc"/>
<meta property="og:description" content="post desc"/>
```

as default values.

```toml
title = "post title"
description = "post desc"
date = "yyyy-mm-dd"
```

### Theme config

```toml
# control dark mode: auto | dark | toggle
mode = "toggle"

# subtitle will show under the title in index page
subtitle = "A zola theme forked from [archie](https://github.com/athul/archie)"

# if set true, will use external CDN resource to load font and js file
useCDN = false

favicon = "/icon/favicon.png"

# show in the footer
copyright = "name"

# config your Google Analysis ID
ga = "XXXX-XXXXX"

# optional: config your i18n entry
[extra.translations]
languages = [{name = "en", url = "/"}]

# config multi-language menu and other text
[[extra.translations.en]]
show_more = "Read more ⟶"
previous_page = "← Previous"
next_page = "Next →"
posted_on = "on "
posted_by = "Published by"
read_time = "minute read"
all_tags = "All tags"
menus = [
    { name = "Home", url = "/", weight = 2 },
    { name = "All posts", url = "/posts", weight = 2 },
    { name = "About", url = "/about", weight = 3 },
    { name = "Tags", url = "/tags", weight = 4 },
]

# config social icon info in the footer
[[extra.social]]
icon = "github"
name = "GitHub"
url = ""
```

### LaTeX Math Formula Support

This theme supports LaTeX math formulas via [KaTeX](https://katex.org/). Enable
it by add `katex_enable = true` in the `extra` section of config.toml:

```toml
[extra]
katex_enable = true
```

After that, you can use LaTeX math formulas in your markdown files:

```
$$
{x: \mathbf{Num},\ y: \mathbf{Num} \over x + y : \mathbf{Num} }\ (\text{N-Add})
$$
```

You can also use inline and block-style formulas:

```
1. \\( \KaTeX \\) inline
2. \\[ \KaTeX \\]
3. $$ \KaTeX $$
```

### Content config

`content/posts/_index.md` uses `config: transparent = true` to implement
pagination.

In Zola, you can use the prelude in `_index.md` files to control pagination and
sort post lists:

```toml
paginate_by = 3
sort_by = "date"

[taxonomies]
tags = ["foo", "bar"]

[extra]
author = { name = "baz", social = "<url>" }
```

</details>
