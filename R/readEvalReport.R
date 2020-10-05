readEvalReport <- function(ou.eval, course_prefix = "", maxRows = -1)
{
  library(pdftools)

  # course metadata
  semester = stri_extract(str = ou.eval, regex = "\\b(Fall|Spring|Summer)\\b \\s*\\d{4}")
  course = stri_extract(str = eV3pg, regex = "(?<=Course:\\s{0,3})\\w{2,4}\\s\\d{4}(?:-\\d{0,4})")
  total_enrollment = stri_extract(str = eV3pg, regex = "(?<=Enrollment:\\s{0,3})\\d{1,3}")
  section_title = stri_extract(str = eV3pg, regex = "(?<=Title:\\s{0,3})\\b.{1,50}\\b(?=\\s{4})")
  course_level = stri_extract(str = eV3pg, regex = "(?<=Level:\\s{0,3})\\b.{1,60}\\b(?=\\r)")
  instructor = stri_extract(str = eV3pg, regex = "(?<=Instructor[s]?:\\s{0,3})\\b.{1,50}\\b(?=\\s{4})")
  size = stri_extract(str = eV3pg, regex = "(?<=Size:\\s{0,3})\\b.{1,60}\\b(?=\\r)")


  for(s in ou.eval)
  {
    find()
  }
}
