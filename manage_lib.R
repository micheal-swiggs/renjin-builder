library("devtools")

args <- commandArgs(trailingOnly = TRUE)

wkdir = args[1]
setwd(wkdir)
cmmd = args[2]

if (cmmd == "setup") {
    package = args[3]
    version = args[4]
    setup("rpkg", description=list(Package=package, Version=version), rstudio = FALSE)
} else if (cmmd == "install"){
    install("rpkg")
} else {
    print("unrecognised command")
}
