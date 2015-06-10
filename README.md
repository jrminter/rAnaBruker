# rAnaBruker

An experimental R package designed to automate data reduction of optical interferometric measurements from the Bruker.  A **very early** work in progress. Not at all ready for prime time...

I would have preferred to use the Excel workbooks directly, but the readers seem to all us `rJava` under the hood. Using this on a 64 bit system is problematic because R cannot build and check 32 and 64 bit binaries and the `R CMD CHECK` fails miserably.
