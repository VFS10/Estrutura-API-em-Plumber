library(dplyr)

#FunÃ§Ã£o fn_multiplica
fn_multiplica <- function(p_num1, p_num2){
  p_num1 <- as.numeric(p_num1)
  p_num2 <- as.numeric(p_num2)
  if (is.na(p_num1) == FALSE & is.na(p_num2) == FALSE){
    result <- p_num1 * p_num2
  } else{
    result <- "ImpossÃ­vel Calcular"
  }
  return(result)
}

#FunÃ§Ã£o fn_divide
fn_divide <- function(p_num1, p_num2){
  p_num1 <- as.numeric(p_num1)
  p_num2 <- as.numeric(p_num2)
  if (is.na(p_num1) == FALSE & is.na(p_num2) == FALSE & p_num2 > 0){
    result <- p_num1 / p_num2
  } else {
    result <- "ImpossÃ­vel Calcular ou dividir por zero"
    #result <- "Erro"
  }
  return(result)
}
#fn_divide(15,0)

#FunÃ§Ã£o filtra_frame
fn_filtra_frame <- function(p_param_hp){
  df_mtcars <- data.frame(datasets::mtcars[])
  df_mtcars$model <- row.names(mtcars)
  df_mtcars <- df_mtcars %>% filter(hp >= as.numeric(p_param_hp))
  return(df_mtcars)
}

#fn_filtra_frame(200)

