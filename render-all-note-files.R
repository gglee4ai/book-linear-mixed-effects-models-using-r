# styler all Rmd files
styler::style_dir()

# render all Rmd files
files <- list.files(pattern = "[.]Rmd$")
for (f in files) try(rmarkdown::render(f))
