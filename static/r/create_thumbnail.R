html_template <- readLines("static/image/index-template.html")
pic_files <- list.files("static/image/", pattern = "[^.html]$")
index_html <- c(html_template[1:55], 
                paste0('<div class="test"><img src="https://pzhao.org/image/', pic_files, '" style="max-width: 100%;"/></br>', pic_files, '</div>'),
                html_template[57:60])
writeLines(index_html, "static/image/index.html")
  