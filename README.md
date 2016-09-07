
## Commands

*Creating a New Package*

In order to create a new package run :

    gradle -q newrpkg genpom

Underneath this will generate the a `pom.xml` and the folder `ren/` that will have the following structure:

    ren/
      pom.xml
      rpkg/
        DESCRIPTION
        NAMESPACE
        R/ <-- Home for R sources

*Deployment*

Whenever you need to install the changes run:

    gradle -q ship

This will install to both the local maven repository and to the GNU R package directory.

*Starting over*

The following command will remove all generated folders & files (dangerous!):

    gradle -q destroy

## Problems

1. Version number needs to be a variable.
1. Adding dependencies to `pom.xml`.
1. C++ sources.
