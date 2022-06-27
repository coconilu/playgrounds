function calculateDaysBetweenDates(begin, end) {
  var oneDay = 24 * 60 * 60 * 1000;
  var diffDays = Math.round(Math.abs((begin.getTime() - end.getTime()) / (oneDay)));
  return diffDays;
}

// find all images without alternate text
// and give them a red border
function process() {
  var images = document.getElementsByTagName('img');
  for (var i = 0; i < images.length; i++) {
    var image = images[i];
    if (image.alt === '') {
      image.style.border = '1px solid red';
    }
  }
}

// Return the current time in the format HH:MM:SS
function getTime() {
  var date = new Date();
  var hours = date.getHours();
  var minutes = date.getMinutes();
  var seconds = date.getSeconds();
  return hours + ':' + minutes + ':' + seconds;
}