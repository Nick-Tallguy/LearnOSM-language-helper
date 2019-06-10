#!/bin/bash
#
#
LEARNOSM=/home/nick/Github/learnosm
TRANSIFEX99=/home/nick/Github/Transifex_99pc
TRANSLATIONS=/home/nick/Github/Transifex_99pc/translations
WORK1=/home/nick/Github/Transifex_99pc/translations-temp
WORK2=/home/nick/Github/Transifex_99pc/translations-temp2  # edit script works on these files
POSTS=/home/nick/Github/learnosm/_posts
#
# make sure the working directories are empty before we start
rm ${WORK1}/*
rm ${WORK2}/*
#  Update this instance from latest on Github - both my fork, and main fork
cd ${LEARNOSM}
git pull
git fetch upstream
git merge upstream/gh-pages
# git checkout -b translations-`date +"%Y%m%d"`
##
#  Pull the latest translations from Transifex to TRANSLATIONS (translations)
cd ${TRANSIFEX99}
/usr/local/bin/tx pull -a
#
# Copy files from TRANSLATIONS to WORK1
cp ${TRANSLATIONS}/* ${WORK1}/
# 
# move the files for editing from WORK1 into WORK2
cp ${WORK1}/0[2-9]*.md  ${WORK2}/
cp ${WORK1}/19*.md  ${WORK2}/
##
### Move the files back that do not need the script run on them
mv ${WORK2}/0200-12-05-* ${WORK1}/
mv ${WORK2}/0450-* ${WORK1}/
mv ${WORK1}/0450-10-20-* ${WORK2}/  ## this needs the edit script
mv ${WORK2}/1900-12-31-* ${WORK1}/  
#
##
# Run edit script on files in WORK2 
cd ${WORK2}
for f in ${WORK2}/*
do
sed -i '0,/^>/{/^>/d;}' $f
done
##
## move updated files back from WORK2 to WORK1
mv ${WORK2}/* ${WORK1}/
#
# Copy updated files to POSTS <lang> (_posts)
## cp -u ${WORK1}/*_bn_BD.md ${POSTS}/bn_BD/
## cp -u ${WORK1}/*_ca.md ${POSTS}/ca/
cp -u ${WORK1}/*_cs.md ${POSTS}/cs/
cp -u ${WORK1}/*_de.md ${POSTS}/de/
cp -u ${WORK1}/*_es.md ${POSTS}/es/
cp -u ${WORK1}/*_fa.md ${POSTS}/fa/
cp -u ${WORK1}/*_fr.md ${POSTS}/fr/
cp -u ${WORK1}/*_hr.md ${POSTS}/hr/
cp -u ${WORK1}/*_hu.md ${POSTS}/hu/
cp -u ${WORK1}/*_id.md ${POSTS}/id/
cp -u ${WORK1}/*_it.md ${POSTS}/it/
cp -u ${WORK1}/*_ja.md ${POSTS}/ja/
## cp -u ${WORK1}/*_kn.md ${POSTS}/kn/
cp -u ${WORK1}/*_ko.md ${POSTS}/ko/
cp -u ${WORK1}/*_my.md ${POSTS}/my/
cp -u ${WORK1}/*_nb.md ${POSTS}/nb/
cp -u ${WORK1}/*_nl_NL.md ${POSTS}/nl_NL/
## cp -u ${WORK1}/*_pl.md ${POSTS}/pl/
cp -u ${WORK1}/*_pt.md ${POSTS}/pt/
## cp -u ${WORK1}/*_pt_BR.md ${POSTS}/pt_BR/
cp -u ${WORK1}/*_ru.md ${POSTS}/ru/
## cp -u ${WORK1}/*_sl.md ${POSTS}/sl/
cp -u ${WORK1}/*_sq.md ${POSTS}/sq/
cp -u ${WORK1}/*_sw.md ${POSTS}/sw/
cp -u ${WORK1}/*_uk.md ${POSTS}/uk/
cp -u ${WORK1}/*_vi.md ${POSTS}/vi/
cp -u ${WORK1}/*_zh_CN.md ${POSTS}/zh_CN/
cp -u ${WORK1}/*_zh_TW.md ${POSTS}/zh_TW/
#
##
# Zip the files for videos ready for email to Andrew?
mkdir /home/nick/Github/video-subtitles/subtitles_`date +"%Y%m%d"`/
cd ${TRANSLATIONS} #translations/
find . -type f -mtime -1  -exec cp {} /home/nick/Github/video-subtitles/subtitles_`date +"%Y%m%d"`/ \;
rm /home/nick/Github/video-subtitles/subtitles_`date +"%Y%m%d"`/*.md
rm /home/nick/Github/video-subtitles/subtitles_`date +"%Y%m%d"`/essential*
#
cd /home/nick/Github/video-subtitles/
zip -r subtitles_`date +"%Y%m%d"` subtitles_`date +"%Y%m%d"`
#
## Remove old sitemaps from _site folder & learnosm root
rm ~/Github/learnosm/_site/sitemap.xml
rm ~/Github/learnosm/sitemap.xml
cd /home/nick/Github/learnosm
bundle exec jekyll serve
#
## email the subtitles to Andrew Wiseman  