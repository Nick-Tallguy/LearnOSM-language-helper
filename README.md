# LearnOSM-language-helper

LearnOSM is available in many languages, which is great, but can make it difficult to manage if the person doing the updating doesn't speak the language! <https://www.transifex.com/> very kindly offer their services free of charge to HOTOSM and LearnOSM, which has made it much easier to manage the translation process.  

For a new language to appear on LearnOSM, two files need to be updated;  
  all-translation.json   
  _config.yml  

and a new language folder and contents is needed in the **_posts** folder, for instance;  
  _posts/fr/0100-01-01-contribute.md  
  _posts/fr/0100-01-01-index.md  
  _posts/fr/0100-01-01-status.md  


How this (these) scripts help
--------------------------

Using this script should make it much easier to add a new language, or make a change if a minor translation amendment is carried out on an essential_setup.txt file (With some languages using other than a Latin script, it can be very difficult to see the changes). Copying and pasting the content manually can take over an hour. Using this script should reduce the time to less than 5 minutes (4 minutes 30 are for copying the text from the snippet into the _config.yml file!). The following files are produced.  
  0100-01-01-contribute_fr.md  
  0100-01-01-index_fr.md  
  0100-01-01-status_fr.md  
  config-yml-snippet.txt - *contains a snippet for copying and pasting into your _config.yml file*  
As a bonus, several 'interim' guides are produced *they need updating to show which languages the module is actually available in, before they can be used.*  

What else is needed
-------------------  
Although these files will add the language, something for a visitor to read is needed as well, probably from the beginner section;  
  _posts/fr/beginner/0200-12-31-beginner.md  
  _posts/fr/beginner/0200-12-29-introduction.md  


Essential_setup.txt
-------------------
Is a file produced by using phrases from the 0100-01-01 index, status and contribute files, plus phrases from the other files involved in the translation process. The original file has been uploaded to Transifex.com, where it is available for the translators to work on. When the file is completely translated it can be downloaded, and it will have the filename **for_use_learnosm-1_essential_setuptxt_fr.txt**. If using the *command line interface* of Transifex, it is possible to define the name of the downloaded file - these scripts are based upon the downloaded file being called (will vary with the language involved) **essential_setup_fr.txt**. Until now, a site maintainer has then produced the correct file such as **0100-01-01-index.md** by copying and pasting the relevant lines of text from the translated file into a new file. With some of the non latin script languages this can be a difficult and time consuming process, during which it is very easy to make mistakes.  

Instructions
------------
>These instructions are for a Linux computer user, but should work with other operating systems (feedback appreciated in case amendments are needed). **sed** and **bash** are the apps used, and they are aleady installed on most Linux distributions. Sed is freely available for other OS's - for instance <http://gnuwin32.sourceforge.net/packages/sed.htm> Bash is now available for windows users.   

1. Clone or download this repository to your computer. If you downloaded, then unzip.  
2. This will create a folder **LearnOSM-language-helper** and its contents.  
3. Download a completed **essential_setup.txt** file from Transifex.com and place it in the **LearnOSM-language-helper/scripts/from_transifex** folder - do not rename the file!  
4. Edit the language code at the start of the **LearnOSM-language-helper/LearnOSM-helper-bash.sh**  file- there are notes there to help you - required each time you change language with a different 'essential_setup.txt' file.  
5. Amend the paths so they are the same as on your computer (you only have to do this once).  
6. Open a terminal in the **LearnOSM-language-helper** folder  
7. and type **./LearnOSM-helper-bash.sh** - then hit **Enter** or **Return** on your keyboard. (The "./" at the start is important)  
8. If all goes well you should find you now have several files in your **LearnOSM-language-helper/scripts/output/** folder.  

Adding a new language
---------------------
When you add a new language, also add a new line to /script-and-source-files/languages.txt - follow the pattern of the existing languages. This will add them into the options when producing further 'interim' guides.  

Points to note
--------------
* The output file will be named with a language extension, so that 0100-01-01-index.md will appear as 0100-01-01-index_fr.md (or whatever language extension is appropriate for the language you are working in). This is deliberate and will help you to put the file in the correct place, especially if working on more than one language during the same session.  
* You may notice that some of the lines of text are in a different order in the output file, to the order they appear in for the original file. This does not matter - the important point is that they appear somewhere between the two lines of --- characters (The header material).  

Feedback or comments
--------------------
Please feel free to raise an issue if there is any feedback, comments or anything else you wish to say. I'd particularly like to hear from users of Operating System's other than Linux as to how this works, or if it needs adapting.


This is still work in progress - at the testing stage. - any problems or suggestions welcome.  
