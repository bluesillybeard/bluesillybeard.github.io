dnl macro for reducing boilerplate code in my html
define(`HEAD', `
<head>
    <meta charset="utf-8">
    <title>$1</title>
    <link rel="stylesheet" href="HOSTSITE()/style.css">
</head>
') dnl
dnl I know 'dnl' is not the best way to write comments but I don't particularly care.

dnl This macro makes including files easier. It probably is already a thing in m4 but whatever I don't care
define(`incfile', `esyscmd(cat $1)')

dnl cat the file into this, because m4 has no built-in way to include files
dnl OK maybe it does, but I literally learned m4 yesterday as of writing this so yeah
esyscmd(cat file)
