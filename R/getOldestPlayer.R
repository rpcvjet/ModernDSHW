#' @title getOldestPlayer
#'
#' @description gets the older player by year
#'
#' @param year
#'
#' @return
#' @export
#' @importFrom dplyr select arrange filter
#' @examples
getOldestPlayer<-function(year){
  colNeeded <-select(nba, "Player", "Age", "Year")
  x <- filter(colNeeded, Year==year)
  playerlist <- arrange(x, desc(Age))
  oldestPlayer <- playerlist[1,]
  return(data.frame(oldestPlayer))
}
