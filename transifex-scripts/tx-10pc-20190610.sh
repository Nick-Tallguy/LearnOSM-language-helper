#!/bin/bash
#
cd /home/nick/Github/Nick-Tallguy.github.io
git pull
cd /home/nick/Github/Transifex_10pc
/usr/local/bin/tx pull -a
cp -u /home/nick/Github/Transifex_10pc/translations/*.md /home/nick/Github/Nick-Tallguy.github.io/_posts/
cd /home/nick/Github/Nick-Tallguy.github.io
git add *
git commit -m "latest updates from Transifex"
git push https://<username>:<password>@github.com/Nick-Tallguy/Nick-Tallguy.github.io.git master

