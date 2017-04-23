#!/bin/bash
#
#NEEDS TO BE SET for each new language - language for file production - for some languages it will be more than 2 characters, such as "zh-tw".
lang=fr
#
#location of sed scripts
script_path='/home/nick/Github/LearnOSM-language-helper/scripts'
#
#location of files downloaded from Transifex
trans_path='/home/nick/Github/LearnOSM-language-helper/scripts/from_transifex'
#
# Location of output folder
output_path='/home/nick/Github/LearnOSM-language-helper/scripts/output'
#
#
sed -f $script_path/sed_config-snippet.script $trans_path/config_snippet.yml $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt>$output_path/config-yml-snippet_$lang.txt
sed -i s/zzxz/${lang}/ $output_path/config-yml-snippet_$lang.txt
sed -f $script_path/sed_LearnOSM_contribute.script $trans_path/0100-01-01-contribute.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt>$output_path/0100-01-01-contribute_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0100-01-01-contribute_$lang.md
sed -f $script_path/sed_LearnOSM_index.script $trans_path/0100-01-01-index.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt>$output_path/0100-01-01-index_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0100-01-01-index_$lang.md
