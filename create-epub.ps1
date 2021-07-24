#delete book if exsiting
remove-item psychotherapy.epub

#delete dist folder
remove-item dist -recurse -force

# build the project
npm run build

# reset the name of mimetype so we can add it to the archive later
rename-item -path dist\mimetype -newname !mimetype

#create the archive
e:\programs\7zip-16.04\7z a -tzip psychotherapy.epub .\dist\*

#add mimetype to the archive the archive
e:\programs\7zip-16.04\7z rn psychotherapy.epub !mimetype mimetype

