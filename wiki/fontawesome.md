

How to use
==========
create project/add to yarn

yarn init
yarn add @fortawesome/fontawesome-free


Please not that fontawesome and @fortawesome/fontawesome dependencies are deprecated, so use @fortawesome/fontawesome-free


local tests
===========
Simple web server for local tests
python -m http.server 8000
 



How to tune fontawesome without the css, or use any custom font
================================================================

1. include the font, copy this line from all.css
@font-face {
  font-family: 'Font Awesome 5 Brands';
  font-style: normal;
  font-weight: 400;
  font-display: auto;
  src: url("../webfonts/fa-brands-400.eot");
  src: url("../webfonts/fa-brands-400.eot?#iefix") format("embedded-opentype"), url("../webfonts/fa-brands-400.woff2") format("woff2"), url("../webfonts/fa-brands-400.woff") format("woff"), url("../webfonts/fa-brands-400.ttf") format("truetype"), url("../webfonts/fa-brands-400.svg#fontawesome") format("svg"); 

}

2. set the font to a selector
   .far {
  font-family: 'Font Awesome 5 Free';
  font-weight: 400; }



a:before {
   font-family: "Font Awesome 5 Free";
   content: "\f095";
   display: inline-block;
   padding-right: 3px;
   vertical-align: middle;
   font-weight: 900;
}

see https://stackoverflow.com/questions/20782368/use-font-awesome-icon-as-css-content
