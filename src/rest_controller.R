library("plumber")
library("jsonlite")

 general_functions <- "C:\\Users\\Vinicius\\OneDrive\\Documentos\\Github\\Estrutura API em Plumber\\utils\\functions\\"
#general_functions <- "~\Github\Estrutura API em Plumber\utils\functions\"
#general_functions <- "\\utils\functions\"
source(paste0(general_functions, "fn_hello.R"))
source(paste0(general_functions, "fn_multiplas_funcoes.R"))

#* @apiTitle BSBR - Aula de API
#* @apiDescription Utilizaremos o pacote Plumber para .
#* @apiVersion 0.0.1


#* Name API example
#* @param p_name Envie o nome a ser mostrado
#* @get /name
function(p_name = "") {
  fn_hello(p_name)
}


#* Divide NÃºmeros
#* @param p_num1 Primeiro nÃºmero  
#* @param p_num2 Segundo nÃºmero
#* @post /divide_numeros
function(req, res, p_num1, p_num2) {
  resultado <- fn_divide(p_num1, p_num2)
  if (resultado == 'ImpossÃ­vel Calcular ou dividir por zero') {
      res$status <- 400
  }
  return(unbox(toJSON(resultado)))
}


#* Retornando Frame Mtcars filtrado
#* @param p_HP PotÃªncia em HP a ser filtrada  
#* @post /filtra_frame
function(req, res, p_HP) {
  resultado <- data.frame(fn_filtra_frame(p_param_hp = p_HP))
  resultado <- resultado
  return(resultado)
} 

# Programmatically alter your API
#* @plumber
function(pr) {
  pr %>%
    # Overwrite the default serializer to return unboxed JSON
    pr_set_serializer(serializer_unboxed_json())
}