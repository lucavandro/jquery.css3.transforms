title = "jQuery.keyframes"
comment = """
<p><a href="https://github.com/Ianus/jQuery.Keyframes">jQuery.Keyframes</a> is forked from <a href="https://github.com/krazyjakee/">@krazyjakee</a>'s <a href="https://github.com/krazyjakee/jQuery-Keyframes/">jQuery-Keyframes</a></p>
<p><a href="https://github.com/Ianus/jQuery.Keyframes">jQuery.Keyframes</a> like <a href="https://github.com/krazyjakee/jQuery-Keyframes/">jQuery-Keyframes</a> generates and plays CSS3 keyframes quickly and easily allowing you to concentrate on the content of your project whilst cutting down code.</p>
<p><a href="https://github.com/Ianus/jQuery.Keyframes">jQuery.Keyframes</a> introduces</p>
<ul>
<li>some changes in the API </li>
<li>$.keyframe.isSupported() to detect CSS animation support</li>
<li>10% smaller minified version (2.256 kb vs 2.453 kb)</li>
<li>support for keyframe redefinition: if you redifine an existing keyframe, running animations will reflect those changes</li>
</ul>
"""
githubLink = "https://github.com/Ianus/jQuery.Keyframes"
downloadSuffix = "/archive/master.zip"
sourceCode = """
// SETTERS

// Translate (values in px)
$("#square").css("translateX", 20);
$("#square").css("translateY", -100);

// ...this works as well
$("#square").css("translateX", "20px");
$("#square").css("translateY", "-100px");
 
// 20deg 2D rotation (values in deg)
$("#square").css("rotate", 20);

// 20deg 3D rotations (values in deg)
$("#square").css("rotateX", 20);
$("#square").css("rotateY", 20);
$("#square").css("rotateZ", 20);

// ...this works as well
$("#square").css("rotate",  "20deg");
$("#square").css("rotateX", "20deg");
$("#square").css("rotateY", "20deg");
$("#square").css("rotateZ", "20deg");


// Scale
$("#square").css("scale", 1.2);
$("#square").css("scaleX", 1.2);
$("#square").css("scaleY", 1.2);
$("#square").css("scaleZ", 1.2);

// Skew (values in deg)
$("#square").css("skewX, 30);
$("#square").css("skewY", 30);

//...this works as well
$("#square").css("skewX, "30deg");
$("#square").css("skewY", "30deg");

// Perspective (values in px)
$("#square").css("perspective", 1000)

//...this works as well
$("#square").css("perspective", "1000px")

// Incremental and decremental setters are supported
$("#square").css("rotate", "+=20");
$("#square").css("rotate", "-=20");


// GETTERS
// All the getters return numeric values
// For rotations: values are returned in deg
// For translations: value are returned in px
// For skews: values are returned in deg
// For perspective: values are returned in px
// Here some examples:


$("#square").css("rotate", "20deg");
$("#square").css("rotate");
// This will return 20


// Animations
$("#square").animate({ rotate: 20, translateX: 100}, 600);
"""

tagsToReplace =
  "&": "&amp;"
  "<": "&lt;"
  ">": "&gt;"

replaceTag = (tag) ->
  tagsToReplace[tag] or tag

safe_tags_replace = (str) ->
  str.replace /[&<>]/g, replaceTag

$(->
  safe = safe_tags_replace(sourceCode)
  $("#code").html(safe)
  # set title
  $("#page-title .anchor").text(title)
  $("#page-comment").html(comment)
  $("#forkme-banner, #page-title .anchor").attr "href", githubLink
  $("#download").attr "href", githubLink + downloadSuffix
  )
