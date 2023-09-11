<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>
	<style>
	@import url('https://fonts.googleapis.com/css2?family=Rubik:wght@400;600;700;800&display=swap');

:root {
  --color-black: #000;
  --color-gray: #f0f0f0;
  --color-white: #fff;
  --color-blue: #1b62b9;
  --color-dark-blue: #144c90;
  --color-red: #e63838;
  --color-dark-red: #a22929;
  --color-yellow: #ffea64;
  --color-dark-yellow: #fddd50;
  --color-peach: #fc9;
  --font-family: 'Rubik', sans-serif;
  --font-size-h1: 7.5rem;
  --font-size-h2: 2.5rem;
  --font-size-h3: 1.875rem;
  --font-size-h4: 1.375rem;
  --font-size-text: 1.125rem;
  --font-weight-regular: 400;
  --font-weight-semibold: 600;
  --font-weight-bold: 700;
  --font-weight-extrabold: 800;
  --header-text-shadow: -1px -1px 0 var(--color-black), 0 -1px 0 var(--color-black), 1px -1px 0 var(--color-black), -1px  0 0 var(--color-black), 1px  0 0 var(--color-black), -1px  1px 0 var(--color-black), 0  1px 0 var(--color-black), 1px  1px 0 var(--color-black), -2px -2px 0 var(--color-black), -1px -2px 0 var(--color-black), 0 -2px 0 var(--color-black), 1px -2px 0 var(--color-black), 2px -2px 0 var(--color-black), 2px -1px 0 var(--color-black), 2px  0 0 var(--color-black), 2px  1px 0 var(--color-black), 2px  2px 0 var(--color-black), 1px  2px 0 var(--color-black), 0  2px 0 var(--color-black), -1px  2px 0 var(--color-black), -2px  2px 0 var(--color-black), -2px  1px 0 var(--color-black), -2px  0 0 var(--color-black), -2px -1px 0 var(--color-black), -3px -3px 0 var(--color-black), -2px -3px 0 var(--color-black), 0 -3px 0 var(--color-black), 2px -3px 0 var(--color-black), 3px -3px 0 var(--color-black), 3px -2px 0 var(--color-black), 3px  0 0 var(--color-black), 3px  2px 0 var(--color-black), 3px  3px 0 var(--color-black), 2px  3px 0 var(--color-black), 0  3px 0 var(--color-black), -2px  3px 0 var(--color-black), -3px  3px 0 var(--color-black), -3px  2px 0 var(--color-black), -3px  0 0 var(--color-black), -3px -2px 0 var(--color-black), -3px -3px 0 var(--color-black), -1px -3px 0 var(--color-black), 0 -3px 0 var(--color-black), 1px -3px 0 var(--color-black), 3px -3px 0 var(--color-black), 3px -1px 0 var(--color-black), 3px  0 0 var(--color-black), 3px  1px 0 var(--color-black), 3px  3px 0 var(--color-black), 1px  3px 0 var(--color-black), 0  3px 0 var(--color-black), -1px  3px 0 var(--color-black), -3px  3px 0 var(--color-black), -3px  1px 0 var(--color-black), -3px  0 0 var(--color-black), -3px -1px 0 var(--color-black), -3px 4px 0 var(--color-black), 0px 4px 0 var(--color-black), 3px 4px 0 var(--color-black), -3px 5px 0 var(--color-black), 0px 5px 0 var(--color-black), 3px 5px 0 var(--color-black), -3px 6px 0 var(--color-black), 0px 6px 0 var(--color-black), 3px 6px 0 var(--color-black), -3px 7px 0 var(--color-black), 0px 7px 0 var(--color-black), 3px 7px 0 var(--color-black), -3px 8px 0 var(--color-black), 0px 8px 0 var(--color-black), 3px 8px 0 var(--color-black), -3px 9px 0 var(--color-black), 0px 9px 0 var(--color-black), 3px 9px 0 var(--color-black), -3px 10px 0 var(--color-black), 0px 10px 0 var(--color-black), 3px 10px 0 var(--color-black), -3px 11px 0 var(--color-black), 0px 11px 0 var(--color-black), 3px 11px 0 var(--color-black), -3px 12px 0 var(--color-black), 0px 12px 0 var(--color-black), 3px 12px 0 var(--color-black), -3px 13px 0 var(--color-black), 0px 13px 0 var(--color-black), 3px 13px 0 var(--color-black), -3px 14px 0 var(--color-black), 0px 14px 0 var(--color-black), 3px 14px 0 var(--color-black), -3px 15px 0 var(--color-black), 0px 15px 0 var(--color-black), 3px 15px 0 var(--color-black), -3px 16px 0 var(--color-black), 0px 16px 0 var(--color-black), 3px 16px 0 var(--color-black), -3px 17px 0 var(--color-black), 0px 17px 0 var(--color-black), 3px 17px 0 var(--color-black), -3px 18px 0 var(--color-black), 0px 18px 0 var(--color-black), 3px 18px 0 var(--color-black);
  --link-text-shadow: -1px -1px 0 var(--color-black), 0 -1px 0 var(--color-black), 1px -1px 0 var(--color-black), -1px  0 0 var(--color-black), 1px  0 0 var(--color-black), -1px  1px 0 var(--color-black), 0  1px 0 var(--color-black), 1px  1px 0 var(--color-black), -2px -2px 0 var(--color-black), -1px -2px 0 var(--color-black), 0 -2px 0 var(--color-black), 1px -2px 0 var(--color-black), 2px -2px 0 var(--color-black), 2px -1px 0 var(--color-black), 2px  0 0 var(--color-black), 2px  1px 0 var(--color-black), 2px  2px 0 var(--color-black), 1px  2px 0 var(--color-black), 0  2px 0 var(--color-black), -1px  2px 0 var(--color-black), -2px  2px 0 var(--color-black), -2px  1px 0 var(--color-black), -2px  0 0 var(--color-black), -2px -1px 0 var(--color-black);
}

/*
 * [Modified] Modern CSS Reset
 * @link https://github.com/hankchizljaw/modern-css-reset
*/
/* Box sizing rules */
*,
*::before,
*::after {
  box-sizing: border-box;
}

/* Remove default margin */
body,
h1,
h2,
h3,
h4,
h5,
h6 {
  margin: 0;
}

html {
  overflow-x: hidden;
}

/* Set core body defaults */
body {
  min-height: 100vh;
  font-size: 100%;
  line-height: 1.5;
  text-rendering: optimizeSpeed;
  overflow-x: hidden;
}

/* Make images easier to work with */
img {
  display: block;
  max-width: 100%;
}

/* Inherit fonts for inputs and buttons */
input,
button,
textarea,
select {
  font: inherit;
}

/* Remove all animations and transitions for people that prefer not to see them */
@media (prefers-reduced-motion: reduce) {
  * {
    animation-duration: 0.01ms !important;
    animation-iteration-count: 1 !important;
    transition-duration: 0.01ms !important;
    scroll-behavior: auto !important;
  }
}

body {
  color: var(--color-black);
  font-family: var(--font-family);
  font-size: var(--font-size-text);
  font-weight: var(--font-weight-regular);
  background-color: var(--color-yellow);
  background-image: radial-gradient(var(--color-dark-yellow) 20%, transparent 0), radial-gradient(var(--color-dark-yellow) 20%, transparent 0);
  background-size: 20px 20px;
  background-position: 0 0, 10px 10px;
}

:focus {
  outline: 2px dotted;
  outline-offset: 0.125rem;
}

h1,
h2,
h3,
h4 {
  margin-bottom: 0.65em;
  font-weight: var(--font-weight-extrabold);
  line-height: 1;
  text-transform: uppercase;
}

h1 {
  font-size: var(--font-size-h1);
  font-size: clamp(4.25rem, 10vw, var(--font-size-h1));
  color: var(--color-black);
}

h2,
.profile h4 {
  font-size: var(--font-size-h2);
  font-size: clamp(2.375rem, 5vw, var(--font-size-h2));
}

h3 {
  font-size: var(--font-size-h3);
}

h4 {
  font-size: var(--font-size-h4);
}

p {
  margin: 0 0 1rem;
}

strong {
  font-weight: var(--font-weight-bold);
}

a {
  position: relative;
  color: var(--color-black);
  font-weight: var(--font-weight-extrabold);
  text-decoration-thickness: 0.125em;
  text-underline-offset: 0.0875em;
  text-transform: uppercase;
}

blockquote {
  position: relative;
  margin: 1rem 0 2rem;
  padding: 0;
  color: var(--color-black);
  border: 0.25rem solid var(--color-black);
  background-color: var(--color-white);
}

blockquote p {
  position: relative;
  margin-bottom: 0;
  padding: 2.5rem 1rem 1.5rem;
  font-size: var(--font-size-h4);
}

blockquote p strong {
  position: absolute;
  top: -0.25rem;
  left: -0.25rem;
  padding: 0.25em 1em;
  color: var(--color-white);
  font-size: 1rem;
  text-transform: uppercase;
  background-color: var(--color-black);
}

main h2,
.profile h4,
#styles h2 {
  align-self: center;
  margin-top: -3.75rem;
  padding: 0.25em 0.5em;
  color: var(--color-white);
  font-weight: var(--font-weight-bold);
  background-color: var(--color-black);
  transform: skewX(-10deg) rotate(-2deg);
  text-align: center;
}

article .container > ul:not(.features) > li + li,
article .container > ol > li + li {
  margin-top: 1rem;
}

article .container * + h2 {
  margin-top: 4rem;
}

nav ul,
article .container,
aside .container {
  box-shadow: 0.5rem 0.5rem rgba(132, 81, 61, 0.35);
}

article .container,
aside .container {
  padding: 1.625rem 1.5rem 2rem;
  border: 0.25rem solid var(--color-black);
  background-color: var(--color-white);
}

@media (min-width: 540px) {
  article .container,
  aside .container {
    padding: 1.75rem 2.5rem 2.5rem;
  }
}

header a:not([class^="link"]):hover,
footer a:not([class^="link"]):hover {
  text-decoration-thickness: 0.1875em;
}

main a:not([class^="link"]):hover,
aside a:not([class^="link"]):hover {
  background-color: var(--color-peach);
}

aside .container {
  display: grid;
  justify-items: center;
}

header,
nav,
article,
aside,
.page-footer {
  width: 100%;
  max-width: 65rem;
  margin: 0 auto;
  padding: 0.5rem;
}

@media (min-width: 540px) {
  header,
  nav,
  article,
  aside,
  .page-footer {
    padding: 1rem;
  }
}

main {
  padding-top: 6rem;
}

main:focus {
  outline: none;
}

main .container h3 {
  margin-top: 2rem;
}

main article + article,
section + section,
aside,
aside + aside {
  margin-top: 4rem;
}

article section {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

header {
  padding-bottom: 4rem;
  color: var(--color-black);
  text-align: center;
}

header h1 {
  position: relative;
  margin-bottom: 0;
  padding: 5rem 0 2.5rem;
  color: var(--color-white);
  font-style: italic;
  letter-spacing: -0.05em;
  text-shadow: var(--header-text-shadow);
  white-space: pre-wrap;
}

@media (min-width: 600px) {
  header h1 {
    padding: 1em 0 3.25rem;
  }
}

header h2 {
  max-width: 30ch;
  font-size: clamp(1.875rem, 4vw, var(--font-size-h2));
  font-weight: var(--font-weight-semibold);
  margin: auto auto 0.65em;
}

header p {
  margin-bottom: 2rem;
}

nav ul {
  margin: 0;
  padding: 0.125rem;
  list-style: none;
  font-size: 1.25rem;
  border: 0.25rem solid var(--color-black);
  background-color: var(--color-red);
}

@media (min-width: 540px) {
  nav ul {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
  }
}

nav ul li {
  margin: 0.375rem 0.375rem 0.5rem;
  text-align: center;
}

@media (min-width: 540px) {
  nav ul li {
    flex: 1 0 45%;
  }
}

@media (min-width: 600px) {
  nav ul li {
    flex: 1 0 30%;
  }
}

@media (min-width: 940px) {
  nav ul li {
    flex: 1 0 auto;
  }
}

nav ul a {
  position: relative;
  display: block;
  padding: 0.5em;
  color: var(--color-white);
  font-size: 1.25rem;
  font-weight: var(--font-weight-semibold);
  border: 0.1875rem solid var(--color-red);
  border-radius: 2em;
  text-decoration: none;
}

nav ul a:hover {
  background-color: var(--color-dark-red);
  border-color: var(--color-black);
}

nav ul a:focus {
  background-color: var(--color-dark-red);
}

#about section:nth-child(2) {
  margin-top: 6rem;
}

#about section:nth-child(2) p:nth-of-type(2) {
  align-self: center;
  margin-top: 2rem;
  font-size: var(--font-size-h4);
  font-weight: var(--font-weight-bold);
  text-align: center;
}

#about section:nth-child(2) ul {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin: 1rem 0 2rem;
  padding: 0;
  list-style: none;
}

#about section:nth-child(2) ul li {
  position: relative;
  margin: 0.25em 0.25em 1em;
  padding: 0.5em 0.75em;
  color: var(--color-white);
  border-radius: 0.5em;
  background-color: var(--color-black);
}

#about section:nth-child(2) ul li::before {
  position: absolute;
  content: '';
  left: 0.75em;
  bottom: -0.5em;
  width: 0;
  height: 0;
  border-top: 5px solid var(--color-black);
  border-left: 15px solid var(--color-black);
  border-right: 5px solid transparent;
  border-bottom: 10px solid transparent;
}

#guidelines p:nth-of-type(1),
#contribute p:nth-of-type(1) {
  font-size: var(--font-size-h4);
  font-weight: var(--font-weight-bold);
}

#guidelines .container > a {
  align-self: center;
  margin-top: 1rem;
}

#contribute section {
  padding-bottom: 0;
  border-bottom: none;
  background-color: var(--color-white);
}

#contribute section:nth-child(2) {
  padding-top: 0;
  margin-top: 0;
  border-top: none;
}

#contribute ol {
  position: relative;
  counter-reset: contribute-counter;
  padding-left: 0;
  list-style: none;
}

#contribute ol li {
  position: relative;
  counter-increment: contribute-counter;
  padding-left: 3rem;
}

#contribute ol li::before {
  position: absolute;
  content: counter(contribute-counter);
  top: -0.1875rem;
  left: 0;
  width: 1.5em;
  height: 1.5em;
  color: var(--color-yellow);
  font-size: var(--font-size-h4);
  font-weight: var(--font-weight-bold);
  border-radius: 50%;
  background-color: var(--color-black);
  text-align: center;
}

#files .container {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  border-top: none;
}

#files .container h3 {
  min-width: 100%;
}

#files .container a {
  font-size: 1.5rem;
}

#files .container a,
.page-footer .container ul li {
  margin: 0.5rem;
}

.features {
  margin: 0 0 2rem;
  padding: 0;
  list-style: none;
}

.features li {
  position: relative;
  padding: 1rem 0;
  text-align: center;
}

.features li > span {
  display: block;
}

.features li > span span {
  display: block;
}

.features li > span span:nth-child(2) {
  position: relative;
}

.profile ul {
  margin: 0 0 1.5rem;
  padding: 0;
  list-style: none;
}

.profile ul li {
  display: flex;
  padding: 0.45em;
}

.profile ul li span:nth-child(1) {
  margin-right: 0.5em;
  font-weight: var(--font-weight-bold);
}

.page-footer {
  position: relative;
  padding-top: 3rem;
  padding-bottom: 3rem;
}

.page-footer .container > :last-child {
  margin-bottom: 0;
}

.page-footer p {
  max-width: 75ch;
  margin-left: auto;
  margin-right: auto;
  text-align: center;
}

.page-footer p a {
  color: inherit;
}

.page-footer ul {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  margin: 0 0 2rem;
  padding: 0;
  list-style: none;
}

.skip-link {
  position: absolute;
  top: auto;
  left: -10000px;
  width: 1px;
  height: 1px;
  color: var(--color-white);
  font-size: 1.125rem;
  background-color: var(--color-blue);
  text-decoration: none;
  overflow: hidden;
}

.skip-link:focus {
  top: 0;
  left: 0;
  width: auto;
  height: auto;
  margin: 0.5em;
  color: var(--color-gray);
}

.skip-link,
nav ul,
[class^="link"],
.profile .container > a {
  border-radius: 2em;
  box-shadow: inset 0.1875rem 0.1875rem var(--color-white), inset -0.1875rem -0.1875rem var(--color-black);
}

.skip-link,
nav ul a,
[class^="link"],
.profile .container > a {
  font-size: 1.25rem;
  text-shadow: var(--link-text-shadow);
}

[class^="link"],
.profile .container > a {
  position: relative;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  color: var(--color-white);
  background-color: var(--color-blue);
}

.skip-link:focus,
[class^="link"],
.profile .container > a {
  padding: 0.875em 1em;
  font-weight: var(--font-weight-semibold);
  line-height: 1;
  border: 0.1875rem solid var(--color-black);
  text-align: center;
  text-decoration: none;
  text-transform: uppercase;
}

.skip-link:focus,
[class^="link"]:hover,
[class^="link"]:focus,
.profile .container > a:hover,
.profile .container > a:focus {
  background-color: var(--color-dark-blue);
}

nav ul a:hover,
nav ul a:focus,
[class^="link"]:hover,
[class^="link"]:focus,
.profile .container > a:hover,
.profile .container > a:focus {
  color: var(--color-gray);
  transform: translate(0, 0.025em);
  box-shadow: inset 0.125em 0.125em var(--color-black);
}

.skip-link:focus,
nav ul a:focus,
[class^="link"]:focus,
.profile .container > a:focus {
  border-color: var(--color-white);
  box-shadow: 0 0 0 0.1875rem var(--color-black);
  outline: 2px solid transparent;
  outline-offset: 4px;
}

.link-github span {
  display: block;
  height: 1em;
}

.link-github svg {
  position: relative;
  display: inline-block;
  height: 1em;
  margin-right: 0.375em;
  fill: currentColor;
  stroke: var(--color-black);
  stroke-width: 3px;
}
	</style>
	
    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">SB Admin v2.0</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 minutes ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Alerts</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="../resources/pages/index.html"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="../resources/pages/morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="../resources/pages/tables.html"><i class="fa fa-table fa-fw"></i> Tables</a>
                        </li>
                        <li>
                            <a href="../resources/pages/forms.html"><i class="fa fa-edit fa-fw"></i> Forms</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="../resources/pages/panels-wells.html">Panels and Wells</a>
                                </li>
                                <li>
                                    <a href="../resources/pages/buttons.html">Buttons</a>
                                </li>
                                <li>
                                    <a href="../resources/pages/notifications.html">Notifications</a>
                                </li>
                                <li>
                                    <a href="../resources/pages/typography.html">Typography</a>
                                </li>
                                <li>
                                    <a href="../resources/pages/icons.html"> Icons</a>
                                </li>
                                <li>
                                    <a href="../resources/pages/grid.html">Grid</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Second Level Item</a>
                                </li>
                                <li>
                                    <a href="#">Third Level <span class="fa arrow"></span></a>
                                    <ul class="nav nav-third-level">
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                        <li>
                                            <a href="#">Third Level Item</a>
                                        </li>
                                    </ul>
                                    <!-- /.nav-third-level -->
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="../resources/pages/blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="../resources/pages/resources/login.html">Login Page</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>