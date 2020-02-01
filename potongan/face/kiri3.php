<div class="kiri3">
<link href='A/css/vertical-normalize.css' rel='stylesheet' type='text/css'>
<style class='cp-pen-styles'>
body {font-family: sans-serif; color:#fff; top:500px;}
nav a {color:#fff; text-decoration: none;}
body a:hover { color:#FF3; }
nav { background-color:#09F; border-radius:5px; }
nav ul {margin:0; padding: 0; list-style:none; display:none;}
nav li,
nav .nav-toggle {text-align:center; position:relative; display:inline-block; cursor:pointer; width:100%;}
nav .dropdown > a:after {content: 'V'; position:absolute; right:15px; -webkit-transform:scaleY(1); -ms-transform:scaleY(1); transform:scaleY(1); -webkit-transition: -webkit-transform 0.2s ease; transition: transform 0.2s ease;}
nav .dropdown.open,
.desktop nav li:hover { background-color:#0C0;}
nav .dropdown.open > a:after,
.desktop nav li:hover > a:after { -webkit-transform: scaleY(-1); -ms-transform: scaleY(-1); transform: scaleY(-1);}
nav .dropdown ul { position:relative; background-color:#34495e; display:none;}
nav a { display:block; padding: 10px 15px;}
.desktop nav { width: 180px; }
.desktop nav li { text-align:left; width:180px; position:relative; z-index:1;}
.desktop nav li:hover ul { -webkit-transform: scaleY(1); -ms-transform: scaleY(1); transform: scaleY(1); visibility: visible;}
.desktop nav .dropdown:hover > a:after { -webkit-transform: rotate(90deg); -ms-transform: rotate(90deg); transform: rotate(90deg);}
.desktop nav .dropdown > a:after { content: '>'; -webkit-transform: rotate(0deg); -ms-transform: rotate(0deg); transform: rotate(0deg);
  -webkit-transition: -webkit-transform 0.2s ease; transition: transform 0.2s ease;}
.desktop nav .dropdown ul { top:0; left:150px; position:absolute; display:block !important; visibility:hidden;
  -webkit-transform:scaleY(0); -ms-transform:scaleY(0); transform:scaleY(0); -webkit-transform-origin: top; -ms-transform-origin:top; transform-origin:top; -webkit-transition:-webkit-transform 0.2s ease; transition:transform 0.2s ease;}
.desktop nav .nav-toggle { display: none; }
</style>
<link href='A/css/vertical-jquerysctipttop.css' rel='stylesheet' type='text/css'>
<nav>
  <div class='nav-toggle dropdown'><a>Navigation</a></div>
  <ul>
    <li><a href='#'>Provinsi</a></li>
    <li class='dropdown'><a href='#'>Aceh</a>
	<ul>
        <li><a href='index2.php?data=pintuaceh'>Rumah Aceh</a></li>
      </ul>
	</li>
    <li class='dropdown'><a>Lampung</a>
      <ul>
        <li><a href='index2.php?data=kaintapis'>Kain Tapis</a></li>
      </ul>
    </li>
    <li class='dropdown'><a>Jawa Tengah</a>
      <ul>
        <li><a href='index2.php?data=batik'>Batik</a></li>
        <li><a href='index2.php?data=blankon'>Blankon</a></li>
      </ul>
    </li>
    <li class='dropdown'><a>Nusa Tenggara Timur</a>
      <ul>
        <li><a href='index2.php?data=tenun'>Tenun</a></li>
      </ul>
    </li>
  </ul>
</nav>

<script src='A/js/jquery-1.11.1.min.js'></script> 
<script>
var dropdown = 'nav li:has(ul)',
    dropdown_ul = 'nav li ul',
    nav_ul = 'nav > ul',
    nav_toggle = 'nav .nav-toggle',
    open_class = 'open',
    desktop_class = 'desktop',
    breakpoint = 640,
    anim_delay = 200;


function isDesktop() {
  return ($(window).width() > breakpoint);
}


$(function() {
  $(document).click(function(e) {
    var target = $(e.target).parent();
    var target_ul = target.children('ul');

    if (!isDesktop()) {
      $(dropdown).not(target).removeClass(open_class);
      $(dropdown_ul).not(target_ul).slideUp(anim_delay);

      if (target.is(dropdown)) {
        target.toggleClass(open_class);
        target_ul.slideToggle(anim_delay);
      }

      if (target.is(nav_toggle)) {
        target.toggleClass(open_class);
        $(nav_ul).slideToggle(anim_delay);
      }
    }
  })

  $(window).resize(function() {
    $('body').toggleClass(desktop_class, isDesktop());

    if (isDesktop()) {
      $(dropdown).removeClass(open_class);
      $(dropdown_ul).hide();
      $(nav_toggle).addClass(open_class);
      $(nav_ul).show();
    }
  });

  $(window).resize();
});
</script>
</div> <!-- kiri3 -->