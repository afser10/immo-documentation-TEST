---
title: "1. VIDEO"
description: ""
lead: "PMY."
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
## YouTube Developers Live: Embedded Web Player Customization

<div id="ytplayer"></div>

<!-- HTML разметка для поля ввода и кнопки поиска -->
<input type="text" id="searchInput" placeholder="Введите текст таймкода">
<button onclick="handleSearch()">Поиск</button>

<!-- JavaScript для обработки ввода пользователя и вызова функции поиска -->
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
      videoId: 'M7lc1UVf-VE'
    });
  }

  // Обработка ввода пользователя и вызов функции поиска
  function handleSearch() {
    var query = document.getElementById('searchInput').value;
    searchByText(query);
  }

  // Список таймкодов
  var timecodes = [
    {time: '0:00', description: 'Intro'},
    {time: '1:56', description: 'Docs'},
    {time: '2:20', description: 'iframe-embedded player'},
    {time: '5:02', description: 'Autohide'},
    {time: '7:20', description: 'Autoplay'},
    {time: '8:04', description: 'CC load policy'},
    {time: '8:34', description: 'Color'},
    {time: '9:17', description: 'Controls'},
    {time: '11:54', description: 'Disable keyboard (disablekb)'},
    {time: '12:08', description: 'Enable JSAPI'},
    {time: '13:15', description: 'End tag (end)'},
    {time: '13:47', description: 'Full screen (fs)'},
    {time: '14:06', description: 'Iv load policy aka annotations'},
    {time: '14:33', description: 'Lists and list type'},
    {time: '15:46', description: 'Loop'},
    {time: '16:06', description: 'Modest branding'},
    {time: '16:46', description: 'Origin'},
    {time: '17:57', description: 'Playerapiid'},
    {time: '18:06', description: 'Playlist'},
    {time: '18:35', description: 'Rel'},
    {time: '19:05', description: 'Showinfo'},
    {time: '20:08', description: 'Start'},
    {time: '20:15', description: 'Theme'},
    {time: '20:28', description: 'Deprecated parameters'},
    {time: '21:59', description: 'Wrap up'}
  ];

  // Функция поиска по тексту таймкода
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

  // Функция для перехода к указанному времени таймкода
  function goToTime(time) {
    var timeArray = time.split(':');
    var minutes = parseInt(timeArray[0]);
    var seconds = parseInt(timeArray[1]);
    var totalTime = (minutes * 60) + seconds;
    player.seekTo(totalTime, true);
  }
</script>

<!-- Стили для списка таймкодов -->
<style>
/* Стили для элементов списка */
#timecodeList ul li {
  padding: 5px;
  cursor: pointer;
}

/* Стили для подсветки при наведении курсора */
#timecodeList ul li:hover {
  background-color: lightgray;
}
</style>

Chapters:
<!-- HTML разметка для списка таймкодов -->
<div id="timecodeList">
  <ul>
    <li onclick="goToTime('0:00')">Intro - 0:00</li>
    <li onclick="goToTime('1:56')">Docs - 1:56</li>
    <li onclick="goToTime('2:20')">iframe-embedded player - 2:20</li>
    <li onclick="goToTime('5:02')">Autohide - 5:02</li>
    <li onclick="goToTime('7:20')">Autoplay - 7:20</li>
    <li onclick="goToTime('8:04')">CC load policy - 8:04</li>
    <li onclick="goToTime('8:34')">Color - 8:34</li>
    <li onclick="goToTime('9:17')">Controls - 9:17</li>
    <li onclick="goToTime('11:54')">Disable keyboard (disablekb) - 11:54</li>
    <li onclick="goToTime('12:08')">Enable JSAPI - 12:08</li>
    <li onclick="goToTime('13:15')">End tag (end) - 13:15</li>
    <li onclick="goToTime('13:47')">Full screen (fs) - 13:47</li>
    <li onclick="goToTime('14:06')">Iv load policy aka annotations - 14:06</li>
    <li onclick="goToTime('14:33')">Lists and list type - 14:33</li>
    <li onclick="goToTime('15:46')">Loop - 15:46</li>
    <li onclick="goToTime('16:06')">Modest branding - 16:06</li>
    <li onclick="goToTime('16:46')">Origin - 16:46</li>
    <li onclick="goToTime('17:57')">Playerapiid - 17:57</li>
    <li onclick="goToTime('18:06')">Playlist - 18:06</li>
    <li onclick="goToTime('18:35')">Rel - 18:35</li>
    <li onclick="goToTime('19:05')">Showinfo - 19:05</li>
    <li onclick="goToTime('20:08')">Start - 20:08</li>
    <li onclick="goToTime('20:15')">Theme - 20:15</li>
    <li onclick="goToTime('20:28')">Deprecated parameters - 20:28</li>
    <li onclick="goToTime('21:59')">Wrap up - 21:59</li>
  </ul>
</div>


