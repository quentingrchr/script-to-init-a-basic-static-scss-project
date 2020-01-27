mkdir src
mkdir src/assets
mkdir src/assets/img
mkdir src/javascript/
touch src/javascript/script.js
mkdir src/scss
#abstracts
mkdir src/scss/abstracts
touch src/scss/abstracts/_functions.scss
touch src/scss/abstracts/_mixins.scss
touch src/scss/abstracts/_variables.scss
#base
mkdir src/scss/base
touch src/scss/base/_reset.scss
echo "html,
body,
div,
span,
applet,
object,
iframe,
h1,
h2,
h3,
h4,
h5,
h6,
p,
blockquote,
pre,
a,
abbr,
acronym,
address,
big,
cite,
code,
del,
dfn,
em,
img,
ins,
kbd,
q,
s,
samp,
small,
strike,
strong,
sub,
sup,
tt,
var,
b,
u,
i,
center,
dl,
dt,
dd,
ol,
ul,
li,
fieldset,
form,
label,
legend,
table,
caption,
tbody,
tfoot,
thead,
tr,
th,
td,
article,
aside,
canvas,
details,
embed,
figure,
figcaption,
footer,
header,
hgroup,
menu,
nav,
output,
ruby,
section,
summary,
time,
mark,
audio,
video {
  margin: 0;
  padding: 0;
  border: 0;
  font-size: 100%;
  font: inherit;
  vertical-align: baseline;
}

/* HTML5 display-role reset for older browsers */

article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
menu,
nav,
section {
  display: block;
}

body {
  line-height: 1;
}

ol,
ul {
  list-style: none;
}

blockquote,
q {
  quotes: none;
}

blockquote {
  &:before,
  &:after {
    content: \"\";
    content: none;
  }
}

q {
  &:before,
  &:after {
    content: \"\";
    content: none;
  }
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

a {
  text-decoration: none;
  color: inherit;
}" >> src/scss/base/_reset.scss

touch src/scss/base/_animations.scss
touch src/scss/base/_base.scss
echo "html {
  font-size: 10px;
}" >> src/scss/base/_base.scss
touch src/scss/base/_typography.scss
touch src/scss/base/_utilities.scss
#components
mkdir src/scss/components
touch src/scss/components/_button.scss


#layouts
mkdir src/scss/layouts
touch src/scss/layouts/_navigation.scss
touch src/scss/layouts/_header.scss
touch src/scss/layouts/_footer.scss


#pages
mkdir src/scss/pages
touch src/scss/pages/_home.scss

touch src/scss/style.scss
echo "//importing abstracts folder
@import \"abstracts/functions\";
@import \"abstracts/mixins\";
@import \"abstracts/variables\";

//importing base folder
@import \"base/reset\";
@import \"base/animations\";
@import \"base/typography\";
@import \"base/utilities\";
@import \"base/base\";

//importing pages folder
@import \"pages/home\";

//importing components folder
@import \"components/button\";

//importing components layout
@import \"layouts/header\";
@import \"layouts/footer\";
@import \"layouts/navigation\";" >> src/scss/style.scss 

touch src/index.html
echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
  <meta charset=\"UTF-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
  <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">
  <link rel=\"stylesheet\" href=\"scss/style.scss\">
  <script defer src=\"javascript/script.js\"></script>
  <title>Document</title>
</head>
<body>
  
</body>
</html>" >> src/index.html 
#npm
npm init -y
npm install parcel-bundler --save-dev
touch .gitignore
echo "/node_modules
/dist
/script.sh
/.cache
**/.DS_Store
" >> .gitignore 
git init
echo "-------------------------------------------"
echo "--------- LOCAL REPO INITIALIZED ----------"
echo "-------------------------------------------"

echo "-------------------------------------------"
echo "You need to manually push to the remote url"
echo "-------------------------------------------"

code .
