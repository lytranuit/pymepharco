document.addEventListener("load", createSlider());
//document.addEventListener("touchstart", startTouch);
//document.addEventListener("touchmove", moveTouch);
//document.addEventListener("keydown", keyevent);

var currentSlider;
var allImageContainers;
var noOfImages;
var st;
var screenWidth;
var timer;
var swipe = true;

function createSlider() {
  allImageContainers = document.getElementsByClassName("sliderImage");
  noOfImages = allImageContainers.length;

  allImageContainers[0].style.opacity = 1;
  allImageContainers[0].style.zIndex = "200";

  for (i = 1; i < noOfImages; i++) {
    allImageContainers[i].style.opacity = 0;
  }

  currentSlider = 0;

  addNavigator();

  screenWidth = document.body.clientWidth;

  moveCircle(allImageContainers[0]);

  createTimer();
}

function addNavigator() {
  var nav = document.getElementById("sliderNavigator");

  for (i = 0; i < noOfImages; i++) {
    var div = document.createElement("div");
    div.className = "slideNavItem";
    div.id = "slideNav" + i;
    div.style.left = 4 + 32 * i + "px";

    nav.appendChild(div);
    div.addEventListener("click", changeSlide.bind(null, i));
  }

  document.getElementsByClassName("slideNavItem")[
    currentSlider
  ].style.backgroundColor = "#fff";
  document.getElementById("sliderNavigator").style.width =
    noOfImages * 32 + "px";
}

function changeSlide(i) {
  stopTimer();
  removeImage(currentSlider);
  currentSlider = i;
  showText(currentSlider);
  showImage(currentSlider);
  moveCircle(allImageContainers[currentSlider]);
}

function createTimer() {
  timer = setTimeout(function () {
    startSlider();
  }, 6000);
}

function startSlider() {
  removeImage(currentSlider);
  nextSlider();
  showText(currentSlider);
  showImage(currentSlider);
  moveCircle(allImageContainers[currentSlider]);
}

function removeImage(cs) {
  allImageContainers[cs].style.transition = "all 2s";
  allImageContainers[cs].style.opacity = 0;

  setTimeout(function () {
    allImageContainers[cs].style.zIndex = "100";
  }, 2000);

  document.getElementsByClassName("slideNavItem")[cs].style.background =
    "rgba(255,255,255,0)";
}

function showText(cs) {
  let slider = $(".sliderImage:eq(" + cs + ")");
  $("#sliderOverlayText", slider).addClass(
    "animate__animated animate__bounceInUp animate__delay-1s"
  );
  setTimeout(function () {
    $("#sliderOverlayText", slider).removeClass(
      "animate__animated animate__bounceInUp animate__delay-1s"
    );
  }, 2000);
}
function showImage(cs) {
  allImageContainers[cs].style.transition = "all 2s";
  allImageContainers[cs].style.opacity = 1;

  setTimeout(function () {
    allImageContainers[cs].style.zIndex = "200";
  }, 2000);

  document.getElementsByClassName("slideNavItem")[cs].style.backgroundColor =
    "#fff";

  createTimer();
  swipe = true;
}

function nextSlider() {
  currentSlider++;
  currentSlider = currentSlider % noOfImages;
}

/*
function startTouch(e)
{
	st = e.changedTouches[0].pageX;
}

function moveTouch(e)
{
	if(st - e.changedTouches[0].pageX > screenWidth / 8)
	{
		st = e.changedTouches[0].pageX;
		nextSlide();
	}
	
	if(st - e.changedTouches[0].pageX < -screenWidth / 8)
	{
		st = e.changedTouches[0].pageX;
		prevSlide();
	}
}*/

function stopTimer() {
  clearTimeout(timer);
}

function moveCircle(sliderItem) {
  var c = sliderItem.querySelectorAll(".circle");
  var mainW = window.innerWidth;

  setTimeout(function () {
    for (i = 0; i < c.length; i++) {
      var w = parseInt(getComputedStyle(c[i]).width);
      var h = parseInt(getComputedStyle(c[i]).height);

      c[i].style.top = -h / 2 + (i * h) / 4 + "px";
      c[i].style.left = (mainW * 1) / 2 - w + "px";
      c[i].style.opacity = "1";
    }
  }, 500);
}

function showCookieSettings() {
  document.getElementsByClassName("pnlSettings")[0].style.display = "block";
  try {
    document.getElementsByClassName("cookiesPopup")[0].style.display = "none";
  } catch (e) {}
}

/*
function prevSlide()
{
	stopTimer();
	removeImage(currentSlider);
	currentSlider = currentSlider - 1;
	currentSlider = (currentSlider + noOfImages) % noOfImages;
	showImage(currentSlider);
}

function nextSlide()
{
	stopTimer();
	removeImage(currentSlider);
	nextSlider()
	showImage(currentSlider);
}

function keyevent(event)
{
	if (event.keyCode == 37)
	{
        prevSlide();
    }
	
	if (event.keyCode == 39)
	{
		nextSlide();
	}
}*/
