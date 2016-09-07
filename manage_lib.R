library("devtools")

args <- commandArgs(trailingOnly = TRUE)

cmmd = args[1]

if (cmmd == "setup") {
    package = args[2]
    version = args[3]
    setup("rpkg", description=list(Package=package, Version=version), rstudio = FALSE)
} else if (cmmd == "install"){
    install("rpkg")
} else {
    print("unrecognised command")
}
