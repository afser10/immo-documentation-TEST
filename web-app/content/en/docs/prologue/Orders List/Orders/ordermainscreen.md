---
title: "1. Order main page"
description: "In this section will be explained Order details."
lead: "In this section will be explained Order details."
date: 2020-10-06T08:48:57+00:00
lastmod: 2020-10-06T08:48:57+00:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 0254
toc: true
---

## Home page

![figure](/Ordermainmenu1.jpg "")
Current Order main page

&nbsp;  

### Basic information
![figure](/OrderID.jpg "")
* **ID's** - both Internal and External ID's displayed here.

&nbsp;   


![figure](/CurrentStatus1.jpg "")
* **Current Status** - current status of the Order. Cant change the Status per hand (it is locked and only moves to the next State with the Trigger on the Button) More detailed information can be found <a href="/docs/prologue/orders-list/status/">Here</a>.</p>


&nbsp;  


![figure](/CurrentAssignee.jpg "")
* **Assignee** - current assignee and his role (Drafter/Superviser/Customer)
* **Priority** - indicates priority level. Priority can be changed as pleased by the Supervisor.

&nbsp;  


![figure](/Floors.jpg "")
* **Floors** - displays floors in this order and its names.
* **Сlip** - you can download floorplan here in .json format
* **Trash can** - delete selected floor.
* **Download file** - download floorplan in .png .jpg or .json format.
* **Upload File...** - upload floorplan in***
* **Upload JSON...** - upload floorplan in .json
* **Inpspect / Prepare** - start drawing the plan.
  * **Redraw** - same as Inspect / Prepare but after drawing is done and Status changed to "Await_In_Review"

&nbsp;  

### Order options
![figure](/DiffStatuses.jpg "")
* **Assign...** - assign Order to Supervisor or Drafter. During the state “NEW” the Supervisor can assign another Supervisorto finish the preparation of the Order.
* **Unassign** - unassign person from current Order. This Button is an Emergency Button. Normally you shouldn't be able to change the assigned Person during IN_PROGRESS. Either the Person finishes the Work on it OR  he will reassign himself from it with the Button for example if he gets sick or can't continue work etc.
* **Set Ready** - if everything is clear and ready, Supervisor starts the project, this will send the Order into the next State of TO_DO.
* **Reject** - if something is wrong or requires clarification from the customer, Supervisor can reject the current project.
* **Start Review** - start review by Supervisor.

&nbsp;  

![figure](/Bar.jpg "")
* **Add Floor** - Supervisor can add additional floor.
* **Upload Files/ Logo / Watermark** - Supervisor can attach more files (Files / Logo / Watermark).
* **Edit Order** - Supervisor can edit Order.
* **Copy Order data** - Supervisor can copy information to Clipboard regarding current order like: date of creation, internal and external ID’s, customer, amount of floors and link to this Order.
* **Delete Order** - Supervisor can delete current Order.

&nbsp; 

### Order information
![figure](/OrderData.jpg "")
* **Customer...** - customer, can be both a private and a legal entity.
* **Library** - library selected for current Order.
* **Style** - currently on Black_White is available now.
* **Creation Date** - date of Order creation.
* **Deadline Date** - date by which the project must be completed.
* **Delivery** - represents time till deadline if colour is green and if colour is red, it means overdue.

&nbsp; 


![figure](/FFInfo.jpg "")

* **Order information** - more detailed information can be found <a href="/docs/prologue/orders-list/orders/newordercreation/#workorder-specifications">Here</a>.</p>

&nbsp;  

### Order log / Attachments
![figure](/OrderAttachments.jpg "")

* **Attachments** - attachments can be floorplan schematics, logos, watermarks etc.

&nbsp; 


![figure](/History1.jpg "")
* **Order history** - contains changes that have been made. More detailed information can be found <a href="/docs/prologue/orders-list/orders/orderhistory/">Here</a>.</p>


&nbsp; 


![figure](/CommentSection.jpg "")
* **Comments** - section for comments.