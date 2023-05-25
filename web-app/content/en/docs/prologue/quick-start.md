---
title: "Orders list"
description: "In this section will be explained and shown how to use search and check its results."
lead: "In this section will be explained and shown how to use search and check its results."
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

Section, where you can use different parameters for search. Also, from this page you can open Order's.

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

* **Internal ID** - is automatically assigned uniqe ID number "i.e FP-133" when you create an order.
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
* **Priority** - indicates priority level.
* **Floors** - amount of floors in current order.

### Add assignee/Open Order/Copy

![figure](/Actions.jpg "")

* **Assign to...** - assign to a different person.
* **Open Order** - opens the Order.
* **Copy Orders data** - copies information regarding current order like: date of creation, internal and external ID's, customer, amount of floors and link to this Order.