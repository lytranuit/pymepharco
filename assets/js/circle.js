window.addEventListener("load", moveCircle);
window.addEventListener("load", setPage);
window.addEventListener("load", setListClick);
window.addEventListener("scroll", moveInfoblockCircle);

var leftImage = ["ibImageLeft", "historyLeftImage"];
var rightImage = ["ibImageRight", "historyRightImage", "ibImageRight2"];

function moveCircle() {
  var c = document.querySelectorAll(".circle");
  var pt = document.getElementsByClassName("pageTitle");
  var mainW = window.innerWidth;

  setTimeout(function () {
    for (i = 0; i < c.length; i++) {
      var w = parseInt(getComputedStyle(c[i]).width);
      var h = parseInt(getComputedStyle(c[i]).height);

      c[i].style.top = -h / 2 + (i * h) / 4 + "px";
      c[i].style.left = (mainW * 1) / 3 - w + "px";
      c[i].style.opacity = "1";
    }

    try {
      pt[0].style.opacity = "1";
      pt[0].style.top = "50%";
      pt[0].style.bottom = "auto";
      pt[0].style.transform = "translateY(-50%)";
    } catch (e) { }
  }, 100);
}

function setPage() {
  for (li = 0; li < leftImage.length; li++) {
    var leftimg = document.getElementsByClassName(leftImage[li]);

    for (x = 0; x < leftimg.length; x++) {
      var image = leftimg[x]
        .getElementsByClassName("infoblockImage")[0]
        .getElementsByTagName("img")[0];
      image.style.opacity = "0";
      image.style.marginLeft = "-10%";

      var rect = leftimg[x].getBoundingClientRect();

      if (rect.top < window.innerHeight) {
        setTimeout(showImage(leftimg[x]), 100);
      }
    }
  }

  for (ri = 0; ri < rightImage.length; ri++) {
    var rightimg = document.getElementsByClassName(rightImage[ri]);

    for (x = 0; x < rightimg.length; x++) {
      var image = rightimg[x]
        .getElementsByClassName("infoblockImage")[0]
        .getElementsByTagName("img")[0];
      image.style.opacity = "0";
      image.style.marginLeft = "10%";

      var rect = rightimg[x].getBoundingClientRect();

      if (rect.top < window.innerHeight) {
        setTimeout(showImage(rightimg[x]), 100);
      }
    }
  }

  var info = document.getElementsByClassName("infoblockText");

  for (i = 0; i < info.length; i++) {
    if (info[i].getElementsByTagName("li").length > 0) {
      var li = info[i].getElementsByTagName("li");
      var count = 0;
      for (x = 0; x < li.length; x++) {
        count++;

        li[x].style.opacity = "0";
        if (count % 2) {
          li[x].style.marginRight = "10%";
        } else {

          li[x].style.marginLeft = "10%";
        }

        var rect = li[x].getBoundingClientRect();

        if (rect.top < window.innerHeight) {
          setTimeout(showListItem(li[x]), 100);
        }
      }
    }
  }
}

function moveInfoblockCircle() {
  var c = document.getElementsByClassName("infoblockCircle");

  for (i = 0; i < c.length; i++) {
    var rect = c[i].getBoundingClientRect();

    if (rect.top < window.innerHeight) {
      c[i].style.opacity = "0.5";
      c[i].style.bottom = "-280px";
    }
  }

  var img = document.getElementsByClassName("infoblockImage");

  for (i = 0; i < img.length; i++) {
    var rect = img[i].getBoundingClientRect();

    if (rect.top < window.innerHeight) {
      showImage(img[i]);
    }
  }

  var info = document.getElementsByClassName("infoblockText");

  for (i = 0; i < info.length; i++) {
    var li = info[i].getElementsByTagName("li");

    for (x = 0; x < li.length; x++) {
      var rect = li[x].getBoundingClientRect();

      if (rect.top < window.innerHeight) {
        setTimeout(showListItem(li[x]), 100);
      }
    }
  }

  var history = document.getElementsByClassName("historyImage");

  for (i = 0; i < history.length; i++) {
    var rect = history[i].getBoundingClientRect();

    if (rect.top < window.innerHeight) {
      showImage(history[i]);
    }
  }
}

function showImage(img) {
  var rect = img.getBoundingClientRect();

  if (rect.top < window.innerHeight) {
    var image = img.getElementsByTagName("img")[0];
    image.style.transition = "all 1s";
    image.style.opacity = "1";
    image.style.marginLeft = "0";
  }
}

function showListItem(li) {
  li.style.transition = "all 1s";
  li.style.opacity = "1";
  li.style.marginLeft = "0";
  li.style.marginRight = "0";
}

function setListClick() {
  var list = document.getElementsByClassName("ibLinkList");

  for (i = 0; i < list.length; i++) {
    var listItem = list[i].getElementsByTagName("li");

    for (l = 0; l < listItem.length; l++) {
      listItem[l].addEventListener("click", showList.bind(null, l, i));
      var div = document.createElement("div");
      div.setAttribute("class", "listArrow");
      listItem[l].appendChild(div);
    }
  }
}

function showList(l, i) {
  var item = document
    .getElementsByClassName("ibLinkList")
  [i].getElementsByTagName("li")[l];
  var div = item.getElementsByTagName("div")[0];

  if (getComputedStyle(div).height == "0px") {
    div.style.height = div.scrollHeight + "px";
    div.style.paddingTop = "16px";
    item.getElementsByClassName("listArrow")[0].style.transform =
      "rotate(180deg)";
  } else {
    div.style.height = "0px";
    div.style.paddingTop = "0px";
    item.getElementsByClassName("listArrow")[0].style.transform =
      "rotate(0deg)";
  }
}

