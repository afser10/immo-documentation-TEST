---
title: "1. FP Editor"
description: ""
lead: ""
date: 2020-11-16T13:59:39+01:00
lastmod: 2020-11-16T13:59:39+01:00
draft: false
images: []
menu:
  docs:
    parent: "prologue"
weight: 0251
toc: true
---

## Basics of Drawing a Floor Plan Initial Drawing

<div id="ytplayer"></div>

<!-- HTML markup for input field and search button -->
<label for="searchInput">Enter the timestamp text:</label>
<input type="text" id="searchInput" placeholder="Enter the timestamp text">
<button onclick="handleSearch()">Search</button>

<!-- JavaScript to handle user input and call the search function -->
<script>
  // Load the IFrame Player API code asynchronously.
  var tag = document.createElement('script');
  tag.src = "https://www.youtube.com/player_api";
  var firstScriptTag = document.getElementsByTagName('script')[0];
  firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

  // Replace the 'ytplayer' element with a YouTube player after the API code downloads.
  var player;
  function onYouTubeIframeAPIReady() {
    player = new YT.Player('ytplayer', {
      height: '360',
      width: '640',
      videoId: 'loZabQCyP6s'
    });
  }

  // Handle user input and call the search function
  function handleSearch() {
    var query = document.getElementById('searchInput').value;
    searchByText(query);
  }

  // List of timestamps
  var timecodes = [
    {time: '0:00', description: 'Review of the floor plan editor.'},
    {time: '0:16', description: '“Move” - this tool is used to move the workspace. “Sketch” - this tool is used to draw walls.'},
    {time: '1:44', description: '“Draw lines” - this tool is used to draw lines.'},
    {time: '2:24', description: '“Rotate” - this tool is used to rotate the whole plan.'},
    {time: '2:52', description: '“Erase” - this tool is used to delete different elements.'},
    {time: '3:34', description: '“Door” - this tool is used to add doors.'},
    {time: '3:44', description: '“Window” - this tool is used to add windows.'},
    {time: '3:54', description: '“Box” - this tool is used to draw countertops.'},
    {time: '4:14', description: '“Open doors” button – is used to open all doors.'},
    {time: '4:31', description: '“Thick walls” button - is used to make all exterior walls of the room thick.'},
    {time: '4:42', description: '“Show central dimensions” button - toggles central dimension lines only in rooms where at least one camera is set.'},
    {time: '5:07', description: '“Show room names” button - is used to show the names of the rooms where at least one camera is set.'},
    {time: '5:29', description: 'Rooms properties.'},
    {time: '7:46', description: '“Add camera” button.'},
    {time: '10:18', description: 'Walls properties.'},
    {time: '10:43', description: 'Windows and doors properties.'},
    {time: '12:04', description: 'Stairs properties.'},
    {time: '13:13', description: 'Tools for furniture.'},
    {time: '14:34', description: '“Walls inspection” button.'},
    {time: '17:09', description: 'Сhoice of measurement system.'},
    {time: '18:21', description: '“Export" button - is used to save a picture with a floor plan or a JSON file.'},
    {time: '18:44', description: '“Load JSON" button - is used to upload the downloaded JSON file.'},
    {time: '18:54', description: 'Add a plan as a background.'},
    {time: '19:55', description: 'Measurements tool.'},
    {time: '20:15', description: 'Сhoice of 3D or 2D mode.'},
    {time: '20:28', description: '360 window where you can view from the camera.'},
    {time: '20:59', description: '“Save” button and completion of work.'}
  ];

  // Function to search by timestamp text
  function searchByText(query) {
    for (var i = 0; i < timecodes.length; i++) {
      if (timecodes[i].description.toLowerCase().includes(query.toLowerCase())) {
        var timeArray = timecodes[i].time.split(':');
        var minutes = parseInt(timeArray[0]);
        var seconds = parseInt(timeArray[1]);
        var totalTime = (minutes * 60) + seconds;
        player.seekTo(totalTime, true);
        break;
      }
    }
  }

  // Function to jump to the specified timestamp
  function goToTime(time) {
    var timeArray = time.split(':');
    var minutes = parseInt(timeArray[0]);
    var seconds = parseInt(timeArray[1]);
    var totalTime = (minutes * 60) + seconds;
    player.seekTo(totalTime, true);
  }
</script>

<!-- Styles for the timestamp list -->
<style>
#timecodeList ul li {
  padding: 5px;
  cursor: pointer;
}

#timecodeList ul li:hover {
  background-color: lightgray;
}
</style>

Chapters:
<!-- HTML markup for the timestamp list -->
<div id="timecodeList">
  <ul>
    <li onclick="goToTime('0:00')">0:00 - Review of the floor plan editor.</li>
    <li onclick="goToTime('0:16')">0:16 - “Move” - this tool is used to move the workspace. “Sketch” - this tool is used to draw walls.</li>
    <li onclick="goToTime('1:44')">1:44 - “Draw lines” - this tool is used to draw lines.</li>
    <li onclick="goToTime('2:24')">2:24 - “Rotate” - this tool is used to rotate the whole plan.</li>
    <li onclick="goToTime('2:52')">2:52 - “Erase” - this tool is used to delete different elements.</li>
    <li onclick="goToTime('3:34')">3:34 - “Door” - this tool is used to add doors.</li>
    <li onclick="goToTime('3:44')">3:44 - “Window” - this tool is used to add windows.</li>
    <li onclick="goToTime('3:54')">3:54 - “Box” - this tool is used to draw countertops.</li>
    <li onclick="goToTime('4:14')">4:14 - “Open doors” button – is used to open all doors.</li>
    <li onclick="goToTime('4:31')">4:31 - “Thick walls” button - is used to make all exterior walls of the room thick.</li>
    <li onclick="goToTime('4:42')">4:42 - “Show central dimensions” button - toggles central dimension lines only in rooms where at least one camera is set.</li>
    <li onclick="goToTime('5:07')">5:07 - “Show room names” button - is used to show the names of the rooms where at least one camera is set.</li>
    <li onclick="goToTime('5:29')">5:29 - Rooms properties.</li>
    <li onclick="goToTime('7:46')">7:46 - “Add camera” button.</li>
    <li onclick="goToTime('10:18')">10:18 - Walls properties.</li>
    <li onclick="goToTime('10:43')">10:43 - Windows and doors properties.</li>
    <li onclick="goToTime('12:04')">12:04 - Stairs properties.</li>
    <li onclick="goToTime('13:13')">13:13 - Tools for furniture.</li>
    <li onclick="goToTime('14:34')">14:34 - “Walls inspection” button.</li>
    <li onclick="goToTime('17:09')">17:09 - Сhoice of measurement system.</li>
    <li onclick="goToTime('18:21')">18:21 - “Export" button - is used to save a picture with a floor plan or a JSON file.</li>
    <li onclick="goToTime('18:44')">18:44 - “Load JSON" button - is used to upload the downloaded JSON file.</li>
    <li onclick="goToTime('18:54')">18:54 - Add a plan as a background.</li>
    <li onclick="goToTime('19:55')">19:55 - Measurements tool.</li>
    <li onclick="goToTime('20:15')">20:15 - Сhoice of 3D or 2D mode.</li>
    <li onclick="goToTime('20:28')">20:28 - 360 window where you can view from the camera.</li>
    <li onclick="goToTime('20:59')">20:59 - “Save” button and completion of work.</li>
  </ul>
</div>
