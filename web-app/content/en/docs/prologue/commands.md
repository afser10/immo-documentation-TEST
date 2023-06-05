---
title: "New Order creation"
description: "In this section will be explained how to create new order and what options are available."
lead: "In this section will be explained how to create new order and what options are available."
date: 2020-10-13T15:21:01+02:00
lastmod: 2020-10-13T15:21:01+02:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 130
toc: true
---

## Home page

![figure](/CreateNeworder.jpg "")
Order creation main page

&nbsp;  

### External ID
![figure](/ExternalID.jpg "")

* **External ID** - the name of the order that you choose when creating it.

&nbsp;  

### Customer ID
![figure](/Customer01.jpg "")

* **Customer** - customer selection menu.

&nbsp;  

### Service Type
![figure](/ServiceType.jpg "")

* **Service Type** - only Furnished Floorplan is available at the moment.

&nbsp;  

### Priority
![figure](/Priority01.jpg "")

* **Priority** - indicates priority level.

&nbsp;  

### Library used
![figure](/Library01.jpg "")

* **Library** - represents what type of assets are used.

&nbsp;  

### Style
![figure](/Style01.jpg "")

* **Style** - currently only Black_White is available now.

&nbsp;  

### Deadline
![figure](/Deadline.jpg "")

* **Deadline** - sets time of deadline.

&nbsp;  

### Floors
![figure](/Floors01.jpg "")

* **Floors** - adds additional floors, their number and name.

&nbsp;  

### Attachments
![figure](/Attachments.jpg "")

* **Attachments** - attachments can be floorplan schematics, logos, watermarks or any additional information.

&nbsp;  

### PLACEHOLDER
![figure](/RightPanel.jpg "")

* **PLACEHOLDER** - 
* **PLACEHOLDER** - 
* **Drawing Type** - whether the client wants the whole plan to be drawn or just a separate apartment from this plan

&nbsp;  

### Workorder specifications
![figure](/OrderInfo.jpg "")

* **Furniture** - should the plan only be visualized or furnished also.
* **North Arrow** - if the plan has a North arrow or not.
* **Room Designation** - if the individual Rooms have names or not.
* **Floor Plan Desig.** - if the plan has a Name.
* **Align North** - if the plan should be rotated towards North.
* **Flat Designation** - if the storey should be specified.
* **Dimensional Chains** - If the plan has Dimensional Chains or not.
* **Meter Bars** - if the plan has a Meter Bar on it.
* **Isometric** - 
* **Square Meter S.** - if the plan has Square Meter numbers for each room.
* **Scale Ratio** - 
* **Logo** - if the plan should show a Logo or not.
* **Watermark** - if the plan has a Watermark or not.




{{< alert icon="💡" text="You can change the commands in the scripts section of `./package.json`." />}}


```bash
npm run create -- --kind docs [section]
```