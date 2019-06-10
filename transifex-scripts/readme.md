10% scripts, run daily on server & updated to <http://nick-tallguy.github.io/en/>
----------------------------------

Scripts in this folder whose title includes 10pc are run on a daily basis by a small 'server' - could probably be run on a raspberry pi if needed. The server is running a version of Ubuntu server, and running this script is only one of its minor functions. The setup is described in <https://docs.transifex.com/client/introduction> . As the setup has varied slightly over the years, just the link is provided so that a potential user can use the most up-to-date system.

The script performs the following actions;
* checks that the latest version of the site is held on the server, and updates itself it is not,
* downloads any translations from Transifex that are at 10% completion, or more,
* moves the downloads that require amending to a folder where a script runs to remove the text referring to downloadable files, and
* uploads any updated modules to the staging site


99% scripts run manually
-----------------------

Similar to the 10% script, but run manually with the resulting updates being checked for any typo's - may require visiting Transifex.com and updating the translations there, as well as updating the downloaded file.

Again, this script removes the text referring to downloadable documents. 

Assuming the users computer is setup to run the site locally, the script will present the site for viewing at localhost.  
