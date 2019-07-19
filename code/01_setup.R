#' Initiate DESCRIPTION
holepunch::write_compendium_description(
  package = getOption("usethis.description")$Package,
  description = getOption("usethis.description")$Description,
  version = "0.0.0.9000"
)

#' Set License
usethis::use_mit_license()

#' Add GitHub URL and Bug Reports
usethis::use_github_links()

#' Remove `holepunch` from Imports which is added due to the above call.
desc::desc_del_dep("holepunch")

#' Add Remote packages
usethis::use_dev_package("holepunch")

holepunch::write_dockerfile(r_date = "2019-07-01")
