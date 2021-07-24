del psychotherapy.epub
e:\programs\7zip-16.04\7z a -tzip psychotherapy.epub .\dist\*
e:\programs\7zip-16.04\7z rn psychotherapy.epub !mimetype mimetype
e:\Programs\jre1.8.0_291\bin\java -jar -Xss512k e:\programs\epubcheck\epubcheck.jar psychotherapy.epub


::remove-item dist -recurse -force
::rename-item -path dist\mimetype -newname !mimetype
