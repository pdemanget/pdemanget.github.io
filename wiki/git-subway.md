Exemple de ce qu'il ne faut pas faire en git: l'historique plan de métro.

Ci-dessous on crée un historique git représentant le plan de métro de Lyon.

pour voir cet historique:

    $ gitk --all&
    

Script lancé pour créer les branches:

#on devrais ajouter un commit pour le terminus d'une ligne.

echo  >> A.txt
echo  >> B.txt
echo  >> C.txt
echo  >> D.txt
git add -A
# git commit -m "init"


git checkout -b A

echo "PER" >> A.txt && git commit -a -m "PER"
echo "AMP" >> A.txt && git commit -a -m "AMP"

git checkout --orphan D

echo "VAI" >> D.txt && git commit -a -m "VAI"

echo "VMY" >> D.txt && git commit -a -m "VMY"
echo "GOR" >> D.txt && git commit -a -m "GOT"
echo "JEA" >> D.txt && git commit -a -m "JEA"

# node
git merge A --allow-unrelated-histories
echo "BEL" >> A.txt
echo "BEL" >> D.txt
git commit -a -m "BEL"

echo "GIL" >> D.txt
git commit -a -m "GIL"


git checkout A

echo "COR" >> A.txt
git commit -a -m "COR"
echo "HOT" >> A.txt
git commit -a -m "HOT"
git branch C
echo "FOC" >> A.txt
git commit -a -m "FOC"
echo "MAS" >> A.txt
git commit -a -m "MAS"
echo "CHA" >> A.txt
git commit -a -m "CHA"


git checkout -b B
echo "BRO" >> B.txt
git commit -a -m "BRO"
echo "PAR" >> B.txt
git commit -a -m "PAR"
echo "GUI" >> B.txt
git commit -a -m "GUI"

#node
git merge D
echo "SAX" >> B.txt
echo "SAX" >> D.txt
git commit -a -m "SAX"

#reste de la ligne B
git checkout  B
echo "MAC" >> B.txt && git commit -a -m "MAC"
echo "JAU" >> B.txt && git commit -a -m "JAU"
echo "DEB" >> B.txt && git commit -a -m "DEB"
echo "GER" >> B.txt && git commit -a -m "GER"
echo "OGA" >> B.txt && git commit -a -m "OGA"

#reste de la ligne D
git checkout  D
echo "GAR" >> D.txt && git commit -a -m "GAR"
echo "SAN" >> D.txt && git commit -a -m "SAN"
echo "LUM" >> D.txt && git commit -a -m "LUM"
echo "BLA" >> D.txt && git commit -a -m "BLA"
echo "LAE" >> D.txt && git commit -a -m "LAE"
echo "MER" >> D.txt && git commit -a -m "MER"
echo "PRY" >> D.txt && git commit -a -m "PRY"
echo "VEN" >> D.txt && git commit -a -m "VEN"

#ligne C à la mano
git checkout C
echo "HOT" >> C.txt 
echo "CPA" >> C.txt && git commit -a -m "CPA"
echo "CRO" >> C.txt && git commit -a -m "CRO"
echo "HEN" >> C.txt && git commit -a -m "HEN"
echo "CUI" >> C.txt && git commit -a -m "CUI"

