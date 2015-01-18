library("knitr")

knit2html(
  "PA1_template.Rmd", 
  options=c("use_xhtml","smartypants","mathjax","highlight_code")
  );
