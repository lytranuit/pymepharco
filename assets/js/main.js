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

});
