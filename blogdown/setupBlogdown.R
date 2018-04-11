require(blogdown)
blogdown::install_hugo()

#blogdown::new_site(dir="./blogdown", sample = FALSE, theme = "gcushen/hugo-academic", theme_example = FALSE)

setwd("~/MSA/sampsonblogdown/blogdown")

blogdown::build_site()
blogdown::hugo_build()

blogdown::serve_site()
blogdown::stop_server()
#blogdown::new_content(path = "/home/about.md")
#blogdown::new_content(path = "/home/hero.md")
#blogdown::new_content(path = "/project/cavecompass.md", kind = "project")
#blogdown::new_content(path = "/blog/testblog2.md")
#blogdown::new_post("Test Blog 3", tags = "blog")
