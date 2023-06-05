---
title: "Orders menu"
description: "111One page summary of how to start a new Doks project."
lead: "Here we will show and explain how to search orders, edit them and navigate around."
date: 2020-11-16T13:59:39+01:00
lastmod: 2020-11-16T13:59:39+01:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 110
toc: true
---

## Home page

{{< alert icon="👉" text="Home screen, where you can use different parameters for search. Also from this page you can edit Orders." />}}

![figure](/OrdersPage.jpg "Orders page")

### Search options

{{< alert icon="👉"text="Home screen, where you can use different parameters for search. Also from this page you can edit Orders." />}}

![figure](/SearchFields.jpg "Orders page")

{{< alert icon="👉"text="Home screen, where you can use different parameters for search. Also from this page you can edit Orders." />}}

Create a new site, change directories, install dependencies, and start development server.

### Create a new site

Doks is available as a child theme and a starter theme.

#### Child theme

- Intended for novice to intermediate users
- Intended for minor customizations
- [Easily update npm packages]({{< relref "how-to-update" >}}) — __including__ [Doks](https://www.npmjs.com/package/@hyas/doks)

```bash
git clone https://github.com/h-enk/doks-child-theme.git my-doks-site
```

#### Starter theme

- Intended for intermediate to advanced users
- Intended for major customizations
- [Easily update npm packages]({{< relref "how-to-update" >}})

```bash
git clone https://github.com/h-enk/doks.git my-doks-site
```

{{< details "Help me choose" >}}
Not sure which one is for you? Pick the child theme.
{{< /details >}}

### Change directories

```bash
cd my-doks-site
```

### Install dependencies

```bash
npm install
```

### Start development server

```bash
npm run start
```

Doks will start the Hugo development webserver accessible by default at `http://localhost:1313`. Saved changes will live reload in the browser.

### Other commands

Doks comes with commands for common tasks. [Commands →]({{< relref "commands" >}})

{{< details "Why Node.js?" >}}
Doks111 uses npm (included with Node.js) to centralize dependency management, making it [easy to update]({{< relref "how-to-update" >}}) resources, build tooling, plugins, and build scripts.
{{< /details >}}
