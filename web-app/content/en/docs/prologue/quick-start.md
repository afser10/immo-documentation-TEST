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

![figure](/OrdersPage.jpg "")

Home screen, where you can use different parameters for search. Also from this page you can edit Orders.

### Search options

![figure](/SearchFields.jpg "")

* **Service Type** - currently only Furnished Floorplans is available by default.
* **Customer** - customer, can be both a private and a legal entity.
* **Status** - represents the status of the project development. {{< details "Status structure" >}}
  ![figure](/Workflow.jpg "")
  {{< /details >}}
* **Assignee** - person who is currently assigned for this Order (Superviser or Drafter)
* **Filter by Internal or External ID** - can be used to search Order by its ID's.

### Search results

![figure](/Orderinternalexternal.jpg "")

* **Internal ID** - is "automatically assigned uniqe ID number "i.e FP-133" when you create an order.
* **External ID** - the name of the order that you choose when creating it.
* **Status** - represents current status of Order.

![figure](/Dates.jpg "")

* **First line** - represents time till deadline if colour is green and if colour is red, it means overdue.
* **Second line** - date/time when Order was created.
* **Third line** - date/time when Order should be finished.

![figure](/Assignee_Customer.jpg "")

* **Assignee** - person who is currently assigned for this Order (Superviser or Drafter)
* **Customer** - customer, can be both a private and a legal entity.

![figure](/Priority.jpg "")
* **Priority** - indicates how high priority.
* **Floors** - amount of floors in current order.

![figure](/Actions.jpg "")

* **Assign to...** - assign to a different person.
* **Edit Order** - allows to edit Order.
* **Copy Orders data** - copies information regarding current order like: date of creation, internal and external ID's, customer, amount of floors and link to this Order.


Creation Date: 13.04.2023, 12:33,
Internal ID: FP-1185,
External ID: TestScenario1&13.04.23,
Customer: logitechua@gmail.com,
Floors: 3,
Link: https://sandy.immoviewer.com/ff-ui/orders/order/FP-1185

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

({{< relref "how-to-update" >}})
