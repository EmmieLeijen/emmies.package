#' Notes function
#'
#' This function searches my notes, for the search you can specify a keyword. Happy cheating!
#'
#' @param file_path This is the path to the file with the notes.
#' @param keyword This is where you put in the keyword to help filter the notes. If it is not provided it will give the whole notes file.
#' @return This function returns either the whole notes file, or the lines that have the matching keyword.
#' @export

emmie_notes <- function(file_path = "C:/Users/emmie/OneDrive/Bureaublad/r_course/week_3/Notes.txt", keyword = NULL) {

  #Checking if the file is there
  if (! file.exists(file_path)) {
    stop("There is no such file, stupid!")
  }

  #Reading the given file
  notes <- readLines(file_path)

  #Filtering the notes if a keyword is provided
  if (!is.null(keyword)) {
    #Searching for the keyword in the whole file
    matching_word <- grep(keyword, notes, ignore.case = TRUE, value = TRUE)

    if (length(matching_word) == 0) {
      #If the word is not there, print this:
      return("No such word, did you mispell it?")
    }

    #if the word is there, print the lines containing the keyword
    return(matching_word)
  }

  #If no keyword is given, just show the whole notes file
  return(notes)
}

