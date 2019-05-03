#!/bin/bash
#
### INSTRUCTIONS - WORK IN PROGRESS
### ============
###     Produce a sitemap.xml using your fork of learnosm - build - sitemap.xml will be in the _site folder.
###     rename this as sitemap-1.xml, and place this copy in the folder marked as 'SCRIPT_PATH'
###     run this script
###     the new copy of sitemap.xml updated with the language information will be in OUTPUT_PATH as sitemap.xml 
#
### location of sed scripts
SCRIPT_PATH='/home/nick/Github/LearnOSM-language-helper/script-and-source-files'
#
### Location of output folder
OUTPUT_PATH='/home/nick/Github/LearnOSM-language-helper/output'
#
### Script
sed -f ${SCRIPT_PATH}/sed_config-snippet.script ${SCRIPT_PATH}/config_snippet.yml>$OUTPUT_PATH/config-yml-snippet_$lang.txt
sed -i s/zzxz/${lang}/ $OUTPUT_PATH/config-yml-snippet_$lang.txt

