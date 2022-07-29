# styler all Rmd files
styler::style_dir()

# render all Rmd files
files <- list.files(pattern = "[.]Rmd$")
for (f in files) try(rmarkdown::render(f))

# 파일 이름중 nb.html을 .html로 바꿀 것 github 업로드용
notes <- list.files(pattern = "[.]nb.html$")
renamed <- stringr::str_replace(notes, pattern = "[.]nb.html$", ".html")
cat(str_c(notes, renamed, sep = " -> "), sep = "\n") # for check
# file.rename(notes, renamed)
