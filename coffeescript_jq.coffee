$ = jQuery
$ ->
    $(".button").click -> alert "hello"
#上面的内容会被编译为
###
var $;

$ = jQuery;

$(function(a, b) {
  return $(".button").click(function() {
    return alert("hello");
  });
});
###
