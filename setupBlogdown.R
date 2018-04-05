require(blogdown)
blogdown::install_hugo()

#blogdown::new_site(dir="./blogdown", sample = FALSE, theme = "gcushen/hugo-academic", theme_example = FALSE)

setwd("~/MSA/sampsonblogdown/blogdown")
blogdown::serve_site()
blogdown::stop_server()
blogdown::build_site(local = TRUE,run_hugo = TRUE)
blogdown::hugo_build()
#blogdown::new_content(path = "/home/about.md")
#blogdown::new_content(path = "/home/hero.md")
#blogdown::new_content(path = "/project/cavecompass.md", kind = "project")
