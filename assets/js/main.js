$(document).ready(function () {
  $(".showhide").click(function (e) {
    e.preventDefault();
    let parent = $(this).closest("li");
    let children = $("ul", parent);
    $(this).toggleClass("fa-minus").toggleClass("fa-plus");
    children.toggle();
  });
  if ($("#hidden-content").length) {
    $.fancybox.open({
      src: '#hidden-content',
      type: 'inline',
    });

    $(".buttonCancle").click(function () {
      $.fancybox.close();
    });

    $(".buttonAgree").click(async function () {
      await $.ajax({
        url: path + "/home/agreecookies",
      });
      $.fancybox.close();
    });
  }
  if ($("#hidden-content2").length) {
    $.fancybox.open({
      src: '#hidden-content2',
      type: 'inline',
    });
    $(".buttonAgree2").click(async function () {
      await $.ajax({
        url: path + "/home/agreeproduct",
      });
      $.fancybox.close();
    });

    $(".buttonCancle2").click(function () {
      location.href = path;
    });

  }
  $(".comming_soon").click(function (e) {
    e.preventDefault();
    $.fancybox.open({
      src: '#comming-content',
      type: 'inline',
    });
  })
  $(".inview").one("inview", function () {
    var $this = $(this);
    var classname = $this.data("animate");
    $this.addClass(classname);
  });
});
