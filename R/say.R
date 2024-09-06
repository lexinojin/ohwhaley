#' Summon a whale for a customisable pick-me-up
#'
#' @description Summon a whale for a customisable pick-me-up
#'
#' @param what Whatever praise you want to echo. If not supplied, a random phrase is chosen.
#'
#' @return whale shaped message
#' @export
#'
#' @examples say ("You're whale-come")
say <- function(what){
  whale = "\n            ------ \n           %s \n            ------ \n               \\\   \n                \\\  \n                 \\\
     .-'
'--./ /     _.---.
'-,  (__..-`       \\
   \\          .     |
    `,.__.   ,__.--/
     '._/_.'___.-`
"
  what_pos_start <-
    regexpr('%s', whale)[1] - 1

  what_pos_end <- what_pos_start + 3
  if(missing(what)){
    what <- phrases %>% sample(size = 1)
  }

  out <- paste0(substr(whale, 1, what_pos_start),
                what,
                substr(whale, what_pos_end, nchar(whale)))

  message(out)
}
