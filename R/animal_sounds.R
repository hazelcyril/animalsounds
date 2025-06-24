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

animal_sounds <- function(animal = NULL, sound = NULL)
{
  # if (!rlang::is_character(animal, n = 1)) {
  #   cli::cli_abort(
  #     c("{.var animal} must be a single string!",
  #       "i" = "It was {.type {animal}} of length {length(animal)} instead.")
  #   )
  # }
  # if (!rlang::is_character(sound, n = 1)) {
  #   cli::cli_abort(
  #     c("{.var sound} must be a single string!",
  #       "i" = "It was {.type {sound}} of length {length(sound)} instead.")
  #   )
  # }

  if (!is.null(animal)) {
    print ("Animal's NULL")
    check_arg(animal)
    subject <- paste0("The ", animal)
  }
  else{
    subject < - "Nothing"
  }

  if(!is.null(sound)){
    check_arg(sound)
    verb <- paste0(" goes ", sound , "!")
  }
  else{
    verb <- " makes no sound!"
  }

  paste0(subject, verb)
}


check_arg <- function(arg, n=1){
  if (!rlang::is_character(arg, n = n)) {
    cli::cli_abort(
      c("{.var {rlang::caller_arg(arg)}} must be a single string!",
        "i" = "It was {.type (arg)} of length {length(arg)} instead.",
        "i" = "You typed {arg}"),
      call = rlang::caller_env(),
      class = "error_not_single_string")
  }
}
#
# cli::cli_abort(
#   c("{.var arg} must be a {.cls character} vector of length 1!",
#     "i" = "It was {.type {arg}} of length {length(arg)} instead."),
#   class = "error_not_single_string")
# }
