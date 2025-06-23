#' Print the Sounds that Animals Make
#'
#'Print the sound that an animal makes in the console
#'
#' Is a wrapper to [paste0()]. This is a *silly function* in a **toy package**.
#'
#' @param animal name of animal, takes in string value
#' @param sound sound made by the animal, takes in string value
#'
#' @return A string of the form "The \{animal\} says \{sound\}
#' @export
#'
#' @examples
#' animal_sounds ("pig", "oink")
##  Try `animal_sounds ("pig", "oink")`- doesnt work

animal_sounds <- function(animal, sound)
{
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " goes ", sound, "!")
}
