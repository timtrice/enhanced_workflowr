## This makes sure that R loads the workflowr package
## automatically, everytime the project is loaded
if (requireNamespace("workflowr", quietly = TRUE)) {
  message("Loading .Rprofile for the current workflowr project")
  library("workflowr")
} else {
  message("workflowr package not installed, please run install.packages(\"workflowr\") to use the workflowr functions")
}

options(
  repos = c("https://mran.microsoft.com/snapshot/2019-07-01"),
  ew.required.r = "3.6.0", 
  ew.build.date = "2019-07-01", 
  usethis.full_name = "Tim Trice",
  usethis.description = list(
    Type = "Compendium",
    Package = "enhanced_workflowr", # -- `usethis` populates from your project name
    Title = "Enhanced Workflowr",
    `Authors@R` = 'person(
      given = "Tim",
      family = "Trice",
      email = "tim.trice@gmail.com",
      role = c("aut", "cre")
    )',
    Description = "A more reproducible workflowr project."
  )
)
