---
title: "3. Status"
description: "1Status."
lead: "Statuses determine at what stage the current order is now."
date: 2020-11-16T13:59:39+01:00
lastmod: 2020-11-16T13:59:39+01:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 0253
toc: true
---

## Home page
This diagram shows the work workflow.

![figure](/Workflow01.jpg "")

### NEW
![figure](/FFstatusnew.jpg "")

* Supervisor opens the Order with the “Pencil” button. Check the attached files, Furnished Floor Plan Information, etc. Edits the order settings if necessary (adds floors, adjusts floors names…) 

  Gives a comment to Drafter on the specifications, additional information. Assigns the Order to a Drafter ->  Clicks on the “Set Ready” -> The order is ready for being started by the assigned user (TO_DO) 

  In case of impossibility of the Order accomplishment: Supervisor clicks on the “Reject” button -> Status “REJECTED”


* **Drafter**: no actions available
* **Supervisor**: can view, can edit, can upload/export files, can assign 

* **Status change action**: Set ready/Reject


&nbsp; 


### TO_DO
![figure](/FFstatustodo.jpg "")

* Drafter gets familiar with the Order information and starts working in the editor -> “Start Drawing”  

* **Drafter** (assigned user): can view, can upload files. “Start Drawing” button is available. Can’t open the editor page (Until the next status)
* **Drafter** (any user): no available  actions
* **Supervisor**: can view, can upload files, can assign, can edit. Can’t open the editor page. “Start Drawing” button is disabled


&nbsp; 


### IN_PROGRESS
![figure](/FFstatusinprogress.jpg "")

* “Inspect / Prepare” button is now available and redirects to the editor page. Drafter works on the FF. 

  Drafter has a break between shifts -> “Log time w/o finish” -> “Just log time” -> “Start Drawing” 

  Upon completion of work Drafter clicks on the “Finish drawing & log time” -> the status goes to AWAIT_REVIEW. No more actions are available for the Drafter.

* **Drafter**: all functionality except editing of the order.
* **Supervisor**: can view order page, open editor. Can’t edit order.

* **Status change action**: Finish drawing & log time.


&nbsp; 


### AWAIT_IN_REVIEW
![figure](/FFstatusawaitinreview.jpg "")

* Supervisor clicks on the “Start Review” -> “Inspect/Prepare” button gets available and Status changes to IN_REVIEW

* **Drafter**: no actions available
* **Supervisor**: can’t start working in the editor until the next status
 
* **Status change action**: Start Review


&nbsp; 


### IN_REVIEW
![figure](/FFstatusinreview.jpg "")

* “Inspect/Prepare” (or “Redraw”) button redirects to the editor. Supervisor makes corrections of the Order. 
  Sends the final floor plan to the customer by “Send to External Provider” Button

* **Supervisor** can change the status back to TO_DO and assign it to another Drafter.
* **Drafter**: no actions available
* **Supervisor**: All functionality is available except editing of the order
* **Status change action**: Send to External Provider


&nbsp; 


### EXTERNAL_REVIEW
![figure](/FFstatusexternalreview.jpg "")

* The Supervisor has to wait till the feedback comes from the customer.

* **Drafter**: Can’t view, no available actions.
* **Supervisor**: Can view without editing, Can export files.
* **Status change action**: External data. The Status can be changed manually by a Supervisor, when the feedback is provided.


&nbsp; 


### NEW_ITERATION
![figure](/FFstatusnewiteration.jpg "")

* Customer feedback is provided by email -> NEW_ITERATION status coincides to TO_DO

  If no further feedback -> the status automatically changes to DONE after 90 days after completion


* **Drafter**: no actions available
* **Supervisor**: All functionality is available except editing of the order

* **Status change action**: Start Drawing


&nbsp; 


### Correction
![figure](/FFstatuscorrection.jpg "")
* Same as IN_PROGRESS. But has Send to External Provider button -> the order is corrected according to the feedback -> DONE status

* **Drafter**: no actions available
* **Supervisor**: All functionality is available


&nbsp; 


### Done
![figure](/FFstatusdone.jpg "")

* **Supervisor**: still can write Comments (also attachments are downloadable)

* **Drafter**: During DONE a drafter can only see the Order and use the Comments but nothing else