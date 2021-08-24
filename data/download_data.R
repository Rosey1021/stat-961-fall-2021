### Download data for STAT 961 (Fall 2021)

# many datasets will come from course textbook website
textbook_site = "http://users.stat.ufl.edu/~aa/glm/data"

# download anorexia data
filename = "Anorexia.dat"
destination = sprintf("data/%s", filename)
if(!file.exists(destination)){
  cat(sprintf("Downloading %s...\n", filename))
  source = sprintf("%s/%s", textbook_site, filename)
  anorexia_data = suppressWarnings(read_table(source, col_types = "ifdd-", skip = 5))
  write_tsv(anorexia_data, file = destination)
} else{
  cat(sprintf("%s already exists.\n", filename))
}