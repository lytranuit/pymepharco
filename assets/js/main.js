$(document).ready(function () {
  $(".showhide").click(function (e) {
    e.preventDefault();
    let parent = $(this).closest("li");
    let children = $("ul", parent);
    $(this).toggleClass("fa-minus").toggleClass("fa-plus");
    children.toggle();
  });
});
