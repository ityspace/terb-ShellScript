#!/bin/bash
# Generate archive.html

source config.sh

echo "
<!DOCTYPE html>
<html lang="zh">
  <head>
    <title>$TITLE</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="$DESCRIPTION" >
    <meta name="author" content=$"AUTHOR">
    <link rel="canonical" href="$DOMAIN">
    <style>
"
cat ~/.config/terb/src/pages/styles
echo "
    </style>
  </head>
  <body>
    <div class="container">
      <header class="header">
        <ul>
          <li>
            <a href="./index.html">Home</a>
          </li>
          <li>
            <a href="./archive.html">Archive</a>
          </li>
        </ul>
        <ul>
          <li>
            <a href="./feed.xml">RSS</a>
          </li>
        </ul>
      </header>
      <article class="content">
"
echo "<h2>Writings</h2>"
echo "
<p>
    <div class=\"postlistdiv\">
    <ul>
"
cat tmp/list.txt
echo "
    </ul>
  </div>
  </p>
";
cat ~/.config/terb/src/pages/footer;
