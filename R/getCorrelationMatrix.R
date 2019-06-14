#' @title getCorrelationMatrix
#'
#' @description prints correlation matrix
#'
#' @param year
#'
#' @return
#' @export
#' @importFrom dplyr filter
#' @importFrom purrr keep
#' @import corrplot
#' @examples
getCorrelationMatrix<-function(year){
  numericalOnly <- keep(nba, is.numeric)
  numericalByYear <- filter(numericalOnly,Year==year)
  clean <- na.omit(numericalByYear)
  answer<- corrplot(cor(clean), method = "circle")
  return(clean)
}
