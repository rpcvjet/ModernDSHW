#' @title getAssistLeaderByYear
#'
#' @description gets assist leader by year
#'
#'
#' @param year
#'
#' @return
#' @export
#' @importFrom dplyr filter select arrange
#' @importFrom readr read_csv write_csv
#'
#' @examples
#'
getAssistLeaderByYear<-function(year) {
  assistsOnly <- dplyr::select(nba, "Player", "AST", "Year")
  one <- dplyr::filter(assistsOnly, Year==year)
  final <- dplyr::arrange(one,desc(AST))
  leader <- final[1,]
  return(data.frame(leader))
}

