library(plumber)

###scr_dir <- "//src/"
src_dir <- "C:\\Users\\Vinicius\\OneDrive\\Documentos\\Github\\Estrutura API em Plumber\\src"
r <- plumb(paste0(scr_dir, "rest_controller.R"))
r$run(port = 8000, host = "0.0.0.0")


