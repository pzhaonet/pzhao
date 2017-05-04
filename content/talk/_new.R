aa <- readLines('D:\\googledrive\\blog\\netlify_zhao\\content\\talk\\_template.md', encoding = 'UTF-8')
myfiles <- gsub('-en.pdf', '', list.files('D:\\googledrive\\blog\\netlify_zhao\\static\\talk'))
for (i in myfiles){
  bb <- aa
  bb[2] <- gsub('2005-06-16', substr(i, 1, 10), bb[2])
  bb[13] <- gsub('2005-06-16-defence', i, bb[13])
  writeLines(bb, paste0('D:\\googledrive\\blog\\netlify_zhao\\content\\talk\\', i, '.md'))
}

