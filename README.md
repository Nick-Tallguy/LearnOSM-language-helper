# LearnOSM-language-helper

LearnOSM is available in many languages, which is great, but can make it difficult to manage if the person doing the updating doesn't speak the language! <https://www.transifex.com/> very kindly offer their services free of charge to HOTOSM and LearnOSM, which has made it much easier to manage the translation process.  

For a new language to appear on LearnOSM, several files need to be updated;  
  all-translation.json   
  _config.yml  
  _layouts/default.html  

and a new language folder and contents is needed in the **_posts** folder, for instance;  
  _posts/fr/0100-01-01-contribute.md  
  _posts/fr/0100-01-01-index.md  
  _posts/fr/0100-01-01-status.md  

Although these files will add the language, something for a visitor to read is needed as well, probably from the beginner section;  
  _posts/fr/beginner/0200-12-31-beginner.md  
  _posts/fr/beginner/0200-12-29-introduction.md  

Essential_setup.txt
-------------------
Is a file produced by using phrases from the 0100-01-01 index, status and contribute files, plus phrases from the other files involved in the translation process. The original file has been uploaded to Transifex.com, where it is available for the translators to work on. When the file is completely translated it can be downloaded, and it will have the filename **for_use_learnosm-1_essential_setuptxt_fr.txt**. Until now, a site maintainer has then produced the correct file such as **0100-01-01-index.md** by copying and pasting the relevant lines of text from the translated file into a new file. With some of the non latin script languages this can be a difficult and time consuming process, during which it is very easy to make mistakes.  

Purpose of these scripts is to automate and simplify the production of the 0100-01-01 files
--------------------------------------------------------------------------------------------

>These instructions are for a Linux computer user, but should work with other operating systems (feedback appreciated in case amendments are needed). **sed** is the app used, and is aleady installed on most Linux distributions. It is freely available for other OS's - for instance <http://gnuwin32.sourceforge.net/packages/sed.htm>  

1. Clone or download this repository to your computer. If you downloaded, then unzip.  
2. This will create a folder **scripts** and its contents.  
3. Download a completed **essential_setup.txt** file from Transifex.com and place it in the **/scripts/from_transifex** folder - do not rename the file!  
4. To produce a 0100-01-index.md file, edit the language codes at the start of the **/scripts/sed_LearnOSM_index.script** - there are notes there to help you.  
5. Open a terminal in the **scripts** folder  
6. Amend this line to fit your cirumstances  
    sed -f sed_LearnOSM_index.script ./from_transifex/0100-01-01-index.md ./from_transifex/for_use_learnosm-1_essential_setuptxt_ca.txt>./output/0100-01-01-index_ca.md  
and then run this on the terminal.  
7. If all goes well you should find you now have a file in your /scripts/output folder **0100-01-01-index_ca.md** which you can move to your _posts/ca/ folder.

Points to note
--------------

* The output file will be named with a language extension, so that 0100-01-01-index.md will appear as 0100-01-01-index_ca.md (or whatever language extension is appropriate for the language you are working in). This is deliberate and will help you to put the file in the correct place, especially if working on more than one language during the same session.  
* You may notice that some of the lines of text are in a different order in the output file, to the order they appear in for the original file. This does not matter - the important point is that they appear somewhere between the two lines of --- characters (The header material).  

Feedback or comments
--------------------

Please feel free to raise an issue if there is any feedback, comments or anything else you wish to say. I'd particularly like to hear from users of Operating System's other than Linux as to how this works, or if it needs adapting.

What works at present
---------------------

This is still work in progress - only the script to produce 0100-01-01-index.md actually works at the moment (but this is the main file that can take over an hour of cutting and pasting to produce!).
