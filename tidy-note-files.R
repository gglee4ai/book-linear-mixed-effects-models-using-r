# styler all Rmd files
styler::style_dir()

# render all Rmd files
files <- list.files(pattern = "[.]Rmd$")
for (f in files) try(rmarkdown::render(f))

# 파일 이름중 nb.html을 .html로 바꿀 것
