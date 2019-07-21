# ---- description ----
#' Initiate DESCRIPTION. This effectively will rewrite the current 
#' DESCRIPTION file with just basic info.
holepunch::write_compendium_description(
  package = getOption("usethis.description")$Package,
  description = getOption("usethis.description")$Description,
  version = "0.0.0.9000"
)

# ---- license ----
#' Set License. See `?usethis::use_mit_license` for other options.
usethis::use_mit_license()

# ---- github-repo ----
#' Add repo URL and Bug Reports to DESCRIPTION
usethis::use_github_links()

# ---- move-holepunch ----
#' `holepunch` will be listed under Depends. It is not yet available on CRAN so 
#' this will generate an error. We have to move it to Remotes and add the repo 
#' to Remotes putting the repo under Imports.
desc::desc_del_dep("holepunch")
usethis::use_dev_package("holepunch")

# ---- holepunch-write-dockerfile ----
#' Create Dockerfile for [binder](https://gke.mybinder.org/), This does not 
#' write the Dockerfile for Docker hub (they use different images). 
holepunch::write_dockerfile(r_date = getOption("ew.build.date"))
