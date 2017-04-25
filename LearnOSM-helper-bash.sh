#!/bin/bash
#
#NEEDS TO BE SET for each new language - language for file production - for some languages it will be more than 2 characters, such as "zh-tw".
lang=ru
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
sed -f $script_path/sed_LearnOSM_status.script $trans_path/0100-01-01-status.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt>$output_path/0100-01-01-status_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0100-01-01-status_$lang.md
sed -f $script_path/sed_LearnOSM_interim_introduction.script $trans_path/interim_en.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt $trans_path/languages.txt>$output_path/0200-12-29-introduction_interim_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0200-12-29-introduction_interim_$lang.md
sed -f $script_path/sed_LearnOSM_interim_start-osm.script $trans_path/interim_en.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt $trans_path/languages.txt>$output_path/0200-12-27-start-osm_interim_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0200-12-27-start-osm_interim_$lang.md
sed -i s/introduction/start-osm/ $output_path/0200-12-27-start-osm_interim_$lang.md
sed -f $script_path/sed_LearnOSM_interim_id-editor.script $trans_path/interim_en.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt $trans_path/languages.txt>$output_path/0200-12-23-id-editor_interim_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0200-12-23-id-editor_interim_$lang.md
sed -i s/introduction/id-editor/ $output_path/0200-12-23-id-editor_interim_$lang.md
sed -f $script_path/sed_LearnOSM_interim_glossary.script $trans_path/interim_en.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt $trans_path/languages.txt>$output_path/0200-12-05-glossary_interim_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0200-12-05-glossary_interim_$lang.md
sed -i s/introduction/glossary/ $output_path/0200-12-05-glossary_interim_$lang.md
sed -f $script_path/sed_LearnOSM_interim_moving-forward.script $trans_path/interim_en.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt $trans_path/languages.txt>$output_path/0200-12-03-moving-forward_interim_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0200-12-03-moving-forward_interim_$lang.md
sed -i s/introduction/moving-forward/ $output_path/0200-12-03-moving-forward_interim_$lang.md
sed -f $script_path/sed_LearnOSM_interim_humanitarian.script $trans_path/interim_en.md $trans_path/for_use_learnosm-1_essential_setuptxt_$lang.txt $trans_path/languages.txt>$output_path/0500-10-27-humanitarian_interim_$lang.md
sed -i s/zzxz/${lang}/ $output_path/0500-10-27-humanitarian_interim_$lang.md
sed -i s_/beginner/introduction_/coordination/humanitarian_ $output_path/0500-10-27-humanitarian_interim_$lang.md
