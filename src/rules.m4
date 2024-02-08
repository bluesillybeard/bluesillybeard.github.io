define(`HEAD', `
<head>
    <meta charset="utf-8">
    <title>$1</title>
    <link rel="stylesheet" href="style.css">
</head>
') dnl
dnl m4 is honestly wild. How is this not more popular?
dnl Genuinely, m4 might actually be one of my favorite things, and I learned about it only today.
dnl cat the file into this, because m4 has no built-in way to include files

esyscmd(cat file)
