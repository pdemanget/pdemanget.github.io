Dictionnary files
=================
formats:
.dic: list of words with affix rules
.aff: affix rules (prefix, suffix ...

Examples
--------
Numbered affix rules
Some dictionaries use numbers instead of a list of affix rules. Each number is a unique combination of rules, which is convenient since there are usually not very many unique combinations of rules that can apply. This just means an extra step. For example, the English dictionary has:

    Abeu/6
    abeyance/7
    abeyant
    Abey/6


You can see that abeyant has no rules, so it is never conjugated. The other rules are 6 and 7. To see what these are, look up in the .aff file. The "AF" lines you which set of rules correspond to each number. For example, the en-US.aff file has a bunch of lines like this:

    AF mn # 1
    AF 1n # 2
    AF pt # 3
    AF p # 4
    AF ct # 5
    AF M # 6
    AF MS # 7
    AF DGLRS # 8

Links
======
NLP
https://fr.wikipedia.org/wiki/Traitement_automatique_du_langage_naturel
https://github.com/hunspell

https://www.ebooksgratuits.com/adresses.php
https://www.dicollecte.org/
https://github.com/titoBouzout/Dictionaries


https://superuser.com/questions/235487/what-do-the-acronyms-mean-after-the-slash-in-the-firefox-dictionary/633869#633869
https://sites.google.com/a/chromium.org/dev/developers/how-tos/editing-the-spell-checking-dictionaries
https://opensource.com/business/15/7/five-open-source-nlp-tools

https://stanfordnlp.github.io/CoreNLP/
http://www.nltk.org/


