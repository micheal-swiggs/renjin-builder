
## Commands

*Creating a New Package*

In order to create a new package run :

    gradle -q genpom newrpkg

Underneath this will generate the a `pom.xml` and the folder `rpkg` that will have the following structure:

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

    gradle -q cleanall

## Problems

1. Version number needs to be a variable.
1. Adding dependencies to `pom.xml`.
1. C++ sources.
