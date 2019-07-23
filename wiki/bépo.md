Comment commencer en bépo

Les liens officiels
-------------------
https://bepo.fr
https://doc.ubuntu-fr.org/tutoriel/bepo

Passer son clavier en bépo
--------------------------
Attention toutes les applications vont passer en bépo, penser à garder sous le coude la ligne pour repasser en azerty

bépo
 $ setxkbmap -v fr -variant bepo
azerty
 $ setxkbmap -v fr
 
- Pour switcher au niveau système
 clik en haut à droit pou ouvrir les paramètres puis "paramètres/pays et langues/sources de saisie" faitre + pour ajouter le bépo
- utiliser "super/espace" pour switcher de claver, nécessite de redémarrer la session. C'est permanent, ne le faire que quand vous serez rodés sur le clavier.
 
 
Apprentissage
-------------
Après avoir installé si nécessaire les configuration bépo:
- Imprimer la plaquette de présentation https://download.tuxfamily.org/dvorak/documents/plaquettebepo2014.pdf
- installer le logiciel d'apprentissage ktouch $ apt-get install ktouch
- switcher en bépo (attention toutes les applications sont impactées)$ setxkbmap -v fr -variant bepo
- utiliser le clavier imprimé pour réussir à taper $ ktouch ou klavaro
- placez vos index sur les touches avec des encoches (F J en azert et ET en bépo) ne bougez pas trop les mains.
- Regarder le diagramme présentant les doigts utilisés sur quelle touches (2 colonnes pour les index, un pour le majeur et l'annulaire, toutes les autres pour les petits doigts. : https://bepo.fr/wiki/M%C3%A9thode_de_saisie


autres tests:
http://tazzon.free.fr/dactylotest/dactylotest/

azerty : 39.6 mot/min 97.4% 52.19%
bépo : 6.1 mot/min 89.2% 52.34%



Exercices copiés
----------------
Ici j'ai simplement copié les exercices pour les pratiquer dans un fichhier texte, sans temps/nombre de frappes limitées.


Exercices

    Apprentissage  >  Exercices 

Deux méthodes d'apprentissage sont proposées :

    La méthode classique par groupe de deux lettres (juste ci-dessous)
    Une méthode plus originale basée sur les groupes de trois lettres les plus fréquents de la lanque française : Méthode par les trigrammes

Voici quelques exercices de frappe thématiques. Chacun se concentre sur quelques lettres, avec une progression dans la difficulté (de plus en plus de lettres, de plus en plus éloigné, ajout de combinaisons de touches). Le but est de mémoriser l'emplacement des lettres et de créer des automatismes qui permettront de taper des enchaînements de lettres sans réfléchir. Il est utile de répéter chaque phrase plusieurs fois.

Ces exercices sont basés sur la répétition d'enchaînements abstraits et de quelques phrases n'ayant pas vraiment de sens. Si vous voulez pouvoir taper des textes, vos emails, même lentement, avant d'avoir par ailleurs terminé ces exercices, vous pouvez également apprendre l'alphabet. Procédez par exemple par groupes de quatre lettres successives, pour faciliter la mémorisation — ne pas oublier les accents !

Les deux index doivent être positionnés sur les touches marquées : F et J sur un clavier azerty, E et T sur le bépo.

N'oubliez pas que la précision est bien plus importante que la vitesse. Une faute de frappe vous fera perdre bien plus de temps qu'une petite hésitation. Prenez votre temps, la vitesse viendra naturellement.
Script pour Ktouch
êÊê
Un script python permet de créer un fichier xml pour Ktouch. Vous pouvez récupérer ce script ou le fichier xml ici. Le fichier xml doit être copié dans ~/.kde/share/apps/ktouch/ (pour un usage personnel uniquement) ou /usr/share/apps/ktouch/ (pour tous les utilisateurs, mais nécessite les droits d'administrateur), en faisant en sorte que son nom respecte la nomenclature attendue par le logiciel, par exemple fr-dvorak-bepo.ktouch.xml pour Ktouch 1.7.0 ou supérieur.
Rangée de repos
E, T, A, N (index et auriculaires)

et et et et et et et te te te te te te te
tee tee ette ette et et teet
an an an an an an an na na na na na na na
anna nana anan anna nana anan
en en en en ta ta ta ta ta ne ne ne ne ne 
ane tate tante nana tata tete
tata et annette tannent ta tante
natte tentante et tente attenante
annette et tata tentent attentat en tente

I et S (majeurs)

ss ii ss ii si si si is is is
isis et sissi sises
tes siestes et ses tasses
titi sieste et sissi tisse
sainte anne atteint ses antiennes
annette assiste insiste et atteste
satan est sienne si ta tante se tait
tante annette insistait et teintait sa tisane
sissi nantaise et titi sataniste naissent nantis
ni ses antennes ni ses tasses ne tentaient sa tante
annie est assise et anais a ses assiettes et ses tasses
anastasie tissait sa taie en satin et anne assistait assise en se taisant

U et R (annulaires)

ur ur ur ru ru ru
rue rue rue eur eur eur eur
sanie sur un nanti est inane
sirius statue et nina sursaute
tu attises sans tester tes risettes
un narrateur rit et renie sa nature
tu essaies un instant et tu es saisi
tu eus une transe et tu te ratatinas
un statut saint unirait ses instituts
une eau saine et sans nitrates rassure
ses saisies insanes initient sa retraite
une instit tunisienne se tait en entrant
nina ruse et ne susurre rien au russe assis
un interne ruant sur rue ne saurait user sa rate
un artiste teint ses tartines et rature ses raies
en ratissant sa teinturerie sirius sent sa nature inerte
un assaut retentissant terrassa un tsar et instaura une terreur
un raisin rassis sustenterait un sarrasin sinistre et une tunisienne nantie en nuisette

Rangée du haut et majuscules

Pour frapper les majuscules, utiliser l'auriculaire de la main opposée à celle qui tape la lettre. Ainsi, on doit utiliser l'auriculaire droit pour les majuscules AUIE et l'auriculaire gauche pour NRST.
V et O (index)

vo vo vo ov ov ov
Nous envions votre aviation souveraine
Un toit en soie sur une tasse toute neuve
Un virtuose novateur et avenant renversait nos vies
Nous arriverons vers Tours via une autoroute toute neuve
Un visionnaire vivote et entrevoit un tournevis novateur
Nous savonnerons notre ventouse et retournerons notre veste
Une voisine a vu un avion en ivoire et une voiture innovante
Nous arriverons en vitesse et nous nous enivrerons en vos vins
On va vers une aventure vaseuse si on avoue avoir vu son invention

P et D (majeurs)

Nous nous disputons pour des prunes
Un papa panda divin parade au paradis
Nous parviendrons en Inde avant votre venue
Nous adoptons votre point de vue sur notre patriote
Un artiste peintre en peine a perdu de vue son inspiration
Un oiseau de proie est souvent suspendu au dessus de terre
Nous adoptons une attitude positive et nions avoir pris du poids
Votre titre de transport apatride vous sera repris avant de sortir de notre avion
Nous avons pour ainsi dire perdu notre inspiration et repoussons notre dispensaire

É et L (annulaires)

Ils étaient pourtant anéantis
Le ré et le la ont été entendus
Il a idéalisé son idole antirévolutionnaire
Un oiseau a des ailes et en réalité les avions aussi
Une eau désaltérante est la plus utile durant un été étoilé
Les dépolluants ont évolué et peuvent délivrer une eau saine
Nous avons pu altérer les évolutions prévues de notre Étoile en étain
Le député et le président ont été élus suite au vote sans surprise de la droite
Alerté par la radio un adulte daltonien a pu délivrer le latéral droit de Lens
Une révolutionnaire esseulée est délaissée par les prisonniers dépassés par les événements

B et J (auriculaires)

Je blablate beaucoup du jubilé de Platini
Je jubile devant une bien belle bijouterie
Je vous dis bienvenue dans le Libre via bépo
Bien entendu je vais juste jouer au jeune toubib
Nous balisons les jalons des joutes de javelot et de bouée
Bébé a avalé son jus de baies puis a beaucoup bavé
Le barbu a brutalisé un juré et la réponse du tribunal était terrible
Un bretteur battu a troublé les badauds obnubilés par son adresse au sabre
Jules abjura les jeunes et éblouit ses subordonnés débordants de jalousie

Extensions des index
È, « , » et C (index au centre)

Il coopère avec une contrepèterie
Ils accaparèrent, caressèrent, et cartonnèrent
La cavalière, tenant la crinière, put rester en selle
Une industrie céréalière ne produit ni cèpes, ni cèdre
La cuisinière, la caissière et la conseillère en colère passèrent en vitesse
Si la sorcière ne décolère pas, elle possède les ressources nécessaires pour se détendre
Ces noces princières occasionnèrent des troubles dans la populace, et les troupes policières durent intervenir

Extensions des auriculaires
M et Z

Pour le M et le Z, l'auriculaire droit doit s'étendre hors de sa colonne.

Note : ci-dessous, les exercices présentent le M puis mettent de plus en plus de Z.

Le combat semble impossible, mais le succès demeurera une victoire intemporelle
Zou, il est temps de partir
Bleu, comme le ciel azuréen
La moutarde lui monte au nez
Vous devez votre ceinture abdominale
Un nez, un pic, un cap, une péninsule
Un zombie disparu et tout est dépeuplé
Libérez ce prisonnier insolent et malade
Vous entamez cette procédure très attentivement
Vous acclamerez sans problème ces émois juvéniles
Une émeute a éclaté, mais vous avez amnistié les meneurs
En Amazonie, les amateurs de meubles en acajou se réjouissent
Justement, vous pouvez ajuster cet alambic avec votre nez
Vous vous débarrassez de cet animal empaillé dont le nez empestait
Entre zèbres et zébus, la Zambie demeure accueillante
Treize litres de mazout déversés dans la mer, et le vizir est alarmé
Vous lézardez au son de cet air de jazz
Vous venez de commander votre seizième pizza, elle sera très moelleuse
Ce zélote zozote mais reste zen en zippant son blouson
Les trapézistes volent, une dizaine de zèbres parcourent la piste, et douze lézards ramassent les restes

Ç et W

Note : les exemples ci-dessous présentent de plus en plus de W, puis de même pour les Ç, et terminent enfin en mélangeant.

Les edelweiss poussent en altitude
Lawrence est un darwiniste convaincu
Le journaliste a interviewé le steward wallon
Avec une jupe en tweed et un sweat, je suis parée pour assister au spectacle de clowns
En ensemençant maintenant, nous aurons un beau jardin au printemps
La rançon demandée est désarçonnante
Il passait inaperçu et demeurait donc insoupçonnable
Nous vous avons aperçus puis reçus, comme ça, sans attendre
Le caleçon du maçon se coinça dans un escalier en colimaçon mal conçu, alors il menaça de poinçonner son remplaçant déçu
Elle a conçu un brownie tout simplement sublime 
Dans ce western, les cavaliers sont souvent désarçonnés

Rangée du bas
K . ' et Q (index)

Le K et le point se font avec la main gauche.

L'apostrophe et le Q se font avec la main droite. L'apostrophe nécessite d'étirer un peu plus l'index. Attention à ne pas confondre les deux ! Le principe est toujours le même : la précision est bien plus importante que la rapidité.

J'ai la joie d'utiliser un point.
J'ai la joie d'utiliser un point.
j'ai la joie d'utiliser un point.
L'accueil d'une douzaine d'émirs est crucial.
Il s'est présenté tel quel.
Je joue tandis qu'il travaille.
L'aéronautique est souvent critiquée mais demeure un domaine de compétence.
Un enquiquineur de première classe.
Je viens d'acquérir un kiwi.
C'est anecdotique, mais l'acoustique de cette salle est remarquable.
Il a empaqueté son anorak et l'a embarqué pour Astrakan.
Après le cours de karaté, un bon cake te requinquera.
Le judoka qui est en kaki teste ton kaléidoscope.
Un cocktail suivra la kermesse. Les basketteurs seront présents, ainsi que les quelques rockeurs.
Après quelques vodkas, je serai partant pour un jerk et un rock endiablés.
J'ai acquis une belle aquarelle d'antiquaire, que je mettrai près de mon aquarium.
C'est dans la zone équatoriale que j'ai pu pratiquer l'équitation.
Cet ecclésiastique éloquent évoquait une escroquerie sans équivoque.
Je m'inquiète de ce qu'impliquent ces quatorze quatrains.

X et G (majeurs)

J'exagère sans doute, mais l'état de mon gazon s'aggrave.
Les Anglais s'agglutinent dans cette agglomération.
Lorsqu'elle angoisse, elle ingurgite et engloutit des quantités astronomiques.
Nous avons obtenu l'agrément pour l'agrandissement de notre maison et l'aménagement de l'annexe.
L'agence nous a conseillé l'agriculture, mais l'élevage de grenouilles pourrait nous nuire.
Le matin, on conseille un bon verre de jus d'orange ou de tout autre agrume.
La gourmandise n'aide pas pour maigrir.
J'enrage car l'enregistrement que j'avais programmé a raté.
Mon garçon est ambidextre.
Avec mes index et mes majeurs, j'indexe des données qui avaient été annexées.

Y et H (annulaires)

Attention, c’est bien l’annulaire gauche qui doit être utilisé pour faire le « Y » !

J'espère hypnotiser les sénateurs avec les chrysanthèmes disséminés dans l'hémicycle.
Les polytechniciens aussi ont besoin de s'hydrater.
C'est avec du rythme que le saxophoniste et le psychiatre joueur de synthé pourront se synchroniser.
Un asthmatique en crise présente une inspiration maximale qui abaisse le diaphragme, repousse les abdominaux et gonfle le thorax.
Je suis chez ce cher Serge, cherchant des chers cierges, assis sur des chers sièges.
Le chiche, son chicha et son chien sont souvent chez Sanson ou chez Charles sans se soucier de sa sécheuse sèche.

À et F (auriculaires)

Riri, Fifi et Loulou.
Pif, paf, pouf.
Et voilà, on a fait le tour de toutes les touches.
Le bépo, c'est facile, finalement.
À partir de maintenant, il suffira de faire quelques derniers petits efforts.

Caractères composés
Accents morts ^ et ¨ (Ê, Î, Û, Â, Ô, Ï, Ä)

L'accent circonflexe (en dessous du point d'exclamation) et le tréma (en AltGr+I) doivent être tapés seuls. Vous ne verrez rien, mais l'accent apparaîtra sur la voyelle tapée ensuite. Un subtilité pour Ê, qui peut être obtenu de deux façons : par la 105ème touche du clavier Ê (< sur Azerty), ou avec l'accent circonflexe, puis le E.

Être ou ne pas être.
Peut-être bien que oui.
Il paraît qu'un bon feu dans l'âtre contribue au bien-être.
Il est sûr et certain.
La brebis a dû paître à côté.
La laïcité peut être ambiguë.
Le canoë est emporté dans un maelström.
C'est la belle nuit de Noël.
Ma trisaïeule hébraïque raffole de l'aïoli.
Les paranoïaques poussent des cris suraigüs.

Touches en AltGr (Ù, Œ, Æ)

Où que soit cet œuf.
Qui vole un œuf, vole un bœuf.
Curriculum Vitæ.
Et cætera.
Lætitia et Éric sont arrivés ex æquo.
Où qu'il soit, il y est.
Je ne sais où ni quand.

Ponctuation

Une petite difficulté supplémentaire pour les deux points, le point-virgule, le point d'exclamation et le point d'interrogation qui doivent tous être précédés d'une espace insécable, obtenue en maintenant la touche majuscule durant la frappe de l'espace. Conserver ensuite la touche majuscule appuyée pour la frappe du signe de ponctuation, qui est justement en majuscule lui-aussi. Ne pas oublier de relâcher avant la frappe de l'espace suivante.

Le tiret, quant-à lui, ne pose pas de difficulté particulière. Sur un clavier décalé, il se fait avec l'annulaire.
Tiret et point d'interrogation (avec espace insécable)

Les chaussettes de l'archi-duchesse sont-elles sèches, archi-sèches ?
Où est-il ?
Que se passe-t-il ?
Qu'est-il arrivé ?
Qu'y a-t-il ?
Peut-être est-il trop tard.

Ponctuation double (; : !) et espace insécable

Une petite difficulté supplémentaire pour les deux points, le point-virgule, le point d'exclamation et le point d'interrogation qui doivent tous être précédés d'une espace insécable, obtenue en maintenant la touche majuscule durant la frappe de l'espace. Conserver ensuite la touche majuscule appuyée pour la frappe du signe de ponctuation, qui est justement en majuscule lui-aussi. Ne pas oublier de relâcher avant la frappe de l'espace suivante.

Et revoilà la sous-préfète !
La voilà ; elle arrive !

Parenthèses

World Wide Web (www)

Guillemets

Une petite difficulté supplémentaire pour les guillemets ouverts qui doivent être suivis d'une espace insécable, ainsi que pour les guillemets fermés qui doivent être précédés d'une espace insécable, obtenue en maintenant la touche majuscule durant la frappe de l'espace.

la Haute Autorité pour la Diffusion des Œuvres et la Protection des Droits sur Internet ou « HADOPI »

Chiffres
Main gauche
3 4

33444 34443 44333 44433 34343 44343 44334 43334 43344 43343

2 4

24224 24442 22244 24244 42424 42422 24422 22244 44224 24424

1 4

14441 41114 41414 41144 14411 44411 44144 41114 11441 11414

4 5

45554 54445 45455 54555 45544 44455 45454 55444 44555 45554

3 5

35533 35553 55333 55355 55533 35533 53335 35335 53355 53535

2 5

25522 22555 25522 25252 22555 52555 52525 52225 55222 55522

1 5

11551 55111 15551 15511 15151 51551 15155 55111 11155 51551

2 3

22233 32223 33223 22323 32232 32323 32233 32233 23332 32322

1 3

13313 33133 31331 33133 13313 31313 33111 33113 31113 33311

1 2

12121 22111 11222 11122 12221 21211 21112 12212 21212 11222

Main droite
7 8

78877 87788 78887 78787 87787 87778 87788 77888 88788 87788

7 9

79997 97979 79779 97797 99799 79979 77799 77997 77999 97797

7 0

70000 77770 70077 07070 70707 77070 70707 70007 70700 77000

6 7

67667 66676 77666 77766 67677 77676 66677 77677 67667 67677

6 8

68888 66666 88868 88866 66688 68688 68666 88866 88688 86688

6 9

69669 96666 96999 99696 96966 69666 66999 69699 99699 69996

6 0

60666 00600 66060 60666 66660 06660 66066 60660 06666 66000

8 9

98899 89898 98899 99988 88899 99988 98998 88899 98898 99888

8 0

80888 80088 00080 08000 88008 08088 08080 88800 00088 80800

9 0

90990 00090 00909 90990 90900 90999 99000 00990 90999 09090

Exercices de conclusion

En guise de conclusion, on termine en proposant des exercices où, à chaque ligne, on trouve toutes les lettres de l’alphabet : des pangrammes.
Pangrammes

Vif PDG mentor, exhibez la squaw jockey.
Juge, flambez l'exquis patchwork d'Yvon.
Vif juge, trempez ce blond whisky aqueux.
Fripon, mixez l'abject whisky qui vidange.
Buvez de ce whisky que le patron juge fameux.
Portez ce vieux whisky au juge blond qui fume.
Jugez qu'un vieux whisky blond pur malt fonce.
Faux kwachas ? Quel projet de voyage zambien !
Fougueux, j'enivre la squaw au pack de beau zythum.
Ketch, yawl, jonque flambant neuve… jugez des prix !
Vieux pelage que je modifie : breitschwanz ou yak ?
Prouvez, beau juge, que le fameux sandwich au yak tue.
Voyez ce jeu exquis wallon, de graphie en kit mais bref.

Pangrammes accentués

Perchez dix, vingt woks. Qu'y flambé-je ?
Le moujik équipé de faux breitschwanz voyage.
Kiwi fade, aptéryx, quel jambon vous gâchez !
Voyez le brick géant que j'examine près du wharf.
Bâchez la queue du wagon-taxi avec les pyjamas du fakir.
Mon pauvre zébu ankylosé choque deux fois ton wagon jaune.
Voix ambiguë d'un cœur qui, au zéphyr, préfère les jattes de kiwis.

Méthode par les trigrammes
Apprentissage

On peut

    soit commencer de zéro en s'entrainant sur un trigramme à la fois (à répéter 50 fois de suite ou plus dans un éditeur de texte simple, bien positionner ses doigts (index sur « e » et « t »), NE PAS REGARDER LE CLAVIER EN TAPANT).
    soit commencer cette méthode après avoir acquis le clavier en utilisant une liste de trois ou quatre trigrammes qu'on répète à l'envie dans un éditeur de texte simple,

Conseil efficace : utiliser un éditeur de texte tout simple plutôt qu'un programme spécialisé (moins de stress, plus de liberté), préférer la répétition d'un trigramme à la fois jusqu'à ce qu'il soit bien su à la répétition de nombreux trigrammes.
Les trigrammes les plus utilisés liste 1 (de 1 à 50)

 de ent la que les ait et le à ion lle des ant our men ais par tio il est un tre ien eur ans en ell une res con ons dan eme ont ati ous ire qui pou tou tai pas com son mai du rai mme nte out omm sse

Les trigrammes les plus utilisés liste 2 (de 51 à 100)

 che iqu je vai éta sur nce ain ill ère ava onn eux ouv urs plu ure ne air ren lus end tes ble ort tra pro se ran tte au ter aut cha ten iss and int ce enc ses ass ess oir ssi  ntr ins fai ave

Les trigrammes les plus utilisés liste 3 (de 101 à 150)

 ave ine ver rie cou ett ser on leu a ier  aie ois ens ces san nou ers anc lai aux ité nne sai ues age pre art tan uve ven mon ite sou ond mes tro ale voi lui ist nts ssa peu uis ute eau vou ieu sen app nde rou don

Les trigrammes les plus utilisés liste 4 (de 151 à 200)

 pri emp vec cti por uel pré nti ou ise moi ste abl per tem man omp gra jou ême ièr ris oin pos dis rem vie for rti dit err ule nai éri isa ard cet rte qua mêm dre cor ect ées ils ive lem tit roi

Les trigrammes les plus utilisés liste 5 (de 201 à 300)

 sa nta lan nes sti ert all rès rit van uit utr uss oit lit sio ang lon iti rés y me sem êtr bie onc ign ndr rat tat nda lis eil pen pla rre sta lie era cel tur ali tie si bre min rta mar oup nse éra nsi use nco rme deu att str mpl orm eut tiq act ide ura imp ron oul aus teu ena ndi pui ail cie emb ara bou arr gar fin ord gue itu ore sui soi ili ose tri rop ner ime cul mat rec isi nst cer ler non

Amélioration de la vitesse de frappe

Pour améliorer la vitesse de frappe, on peut s'entrainer sur les listes de mots suivantes qui sont construites à partir d'une liste de trigrammes fréquents. Le gros avantage de cette méthode est l'assimilation en frappe «automatique» de groupes de lettres utilisés souvent.

Avant chaque mot, préparer mentalement sa frappe (par groupe de trois ou quatre lettres) puis ensuite seulement taper les mots rapidement.

IMPORTANT : après chaque ligne identifier les fautes et travailler chaque mot individuellement jusqu'à ce qu'il soit su et sans erreur. Conseil efficace : utiliser un éditeur de texte tout simple plutôt qu'un programme spécialisé (moins de stress, plus de liberté).
leçons basées sur des séries de 3 mots (moins de 600 caractères)

(le texte complet des leçons est accessible : ici sur le forum)

    leçon 1

mots basés sur : que les lle des ent ant

 desquelles entant lesquelles

    leçon 2

mots basés sur : men ais ait par

 menais menait parais parait

    leçon 3

mots basés sur : con ons ion tio tre res ien est

 cons contions contres ionien restions restons

    leçon 4

mots basés sur : eur ans dan our pou tou ous

 danseur pourtour poutou tous

    leçon 5

mots basés sur : pas com ont son ire tai

 compas sont taire

    leçon 6

mots basés sur : mai nte qui che

 mainte quiche quinte

    leçon 7

mots basés sur : rai ain vai éta

 rain vain étain

    leçon 8

mots basés sur : nce ava sse plu sur urs

 avance plusse surs

    leçon 9

mots basés sur : ure end ren tes

 endure rend rentes testes

    leçon 10

mots basés sur : ble tte ill lus tra out pro

 blette illustra prout

    leçon 11

mots basés sur : air cha ati ère aut

 chair chatière chaut

    leçon 12

mots basés sur : ten int ses ter

 intenses intenter inter

    leçon 13

mots basés sur : mme omm ass oir eux ess ssi

 assomme assommoir essieux

    leçon 14

mots basés sur : and ine enc ave ver fai

 andine encaver faine

    leçon 15

mots basés sur : ouv rie ier ens ins ser

 ouvrier riens serins

    leçon 16

mots basés sur : cou lai aie ran ces anc une

 coulai laie rances rancune

    leçon 17

mots basés sur : iss ues nou age nne pre

 issues nouage prenne

    leçon 18

mots basés sur : ois tro uve ntr ven ale

 trois trouve ventrale

    leçon 19

mots basés sur : san lui nts tan mon sai

 luisants montants monts saints

    leçon 20

mots basés sur : art app aux eau ort uis sou ute

 appart appeaux apport appuis soute

    leçon 21

mots basés sur : ond nde mes pri ers sen nti

 onde primes sentiers

    leçon 22

mots basés sur : ise moi ite rou ste

 moise moite rouste

    leçon 23

mots basés sur : pos dis uel man per pré emp tem

 dispos manuel perdis prédis tempos

    leçon 24

mots basés sur : onn don nai gra vie rem isa

 donnai gravie remisa

    leçon 25

mots basés sur : for rte por qua ris

 forte porte quarte risqua

    leçon 26

mots basés sur : ard dre ssa ême mêm oin

 ardre dressa même oindre

    leçon 27

mots basés sur : cor nes jou ées vou

 cornes jouées vouées

    leçon 28

mots basés sur : ité van nta voi oit

 vanité vanta voit

    leçon 29

mots basés sur : err rés lan uit ang tit iti

 errés languit titi titrés

    leçon 30

mots basés sur : rès lon ndr dit pen peu pla cet

 londrès pendit peupla placet

leçons basées sur des séries de 10 mots (plus courtes)

(le texte complet des leçons est accessible : ici sur le forum)

    leçon 1

mots basés sur : que les lle des ent ant our ait men ion

 desquelles menant entourait entant menait entourent lesquelles entourant mention mentent

    leçon 2

mots basés sur : con ons tio tre res ais par eur est

 restions restais contions parais pareur partions cons contres restons contre

    leçon 3

mots basés sur : pas com ans dan ire mai son pou tou qui ont tai ous

 quiqui maire dans sont compas taire tous poutou toutous maison

    leçon 4

mots basés sur : nce ava rai che vai plu sse ain ure sur urs éta

 avancerai rainure surs plusse chevai pluche étain avance vain sure

    leçon 5

mots basés sur : end ort ill lus tra ren nte tes

 rentrante rendort rentrantes rend rente rentes illustra testes rentra lustra

    leçon 6

mots basés sur : ble tte air cha and ati ère ter aut ten int out pro

 chatter tenter intenter inter prout chatière blette chaut chand chair

    leçon 7

mots basés sur : ass ssi ine ins ses mme omm oir ave ver eux enc ess fai

 averses essieux assommoir assassine assassins assomme aveux assises faine encaver

    leçon 8

mots basés sur : ien anc ens ser ces cou nou ouv rie ier ers ran une

 cesser rances sers ouvriers anciens nounou rancune ouvrier coucou riens

    leçon 9

mots basés sur : iss ues aie lai sai nne pre uve tan iqu ntr ven

 ventrues laissai tanne venues laie saie tantriques preuve prenne issues

    leçon 10

mots basés sur : age nts aux eau lui uis san mes ssa mon ois sou ute tro voi

 oiseau eaux monts agents message luisants vois oiseaux soute trois

    leçon 11

mots basés sur : ale nti art app pri ise ond don emp moi ite nde sen

 empale onde moise dondon apprise emprise alenti appart moite senti

    leçon 12

mots basés sur : pos dis gra vie jou uel man per ste pré rou tem

 dispos joujou poste rouste gravie tempos prédis stem manuel perdis

    leçon 13

mots basés sur : ard dre for rte isa ême mêm oin por qua rem ris

 risqua oindre ardre quarte remporte remisa même porte isard forte

    leçon 14

mots basés sur : ées all cor nes lan uit ang ité lit nai tit iti van nta vou

 languit cornes allées vanta vanité naines vouées lité vannes titi

    leçon 15

mots basés sur : err rre rés leu lie ieu dit rès lon ndr pen peu pla cet ist sta tat

 pendit stat errés lieudit leurre londrès lierre peupla résista placet

    leçon 16

mots basés sur : ign era ali ell ule cel ils deu sio bre mar min rat eme sem use

 minera semeuse alignera marcel ratera cellule deusio marbre usera deuils

    leçon 17

mots basés sur : cti ive act arr roi ron ndi bou tie emb imp éri rit rme orm ide

 emboutie impéritie arrondi ronron impact arrive arroi roide orme active

    leçon 18

mots basés sur : ail ler abl att ner cer cul onn ord eil ore omp ose rec oul oit soi tur ura itu éra

 ordonner recompose reculer recouler érailler soit attabler tritura cerner oreiller

    leçon 19

mots basés sur : car der ret rta fin ini nda fon gue non nse eut ple sui ici mat nom éco

 fonda pleut suicider guenon carta nonsense fini fonder caret économat

    leçon 20

mots basés sur : isi cho sit uan dem emi mis ect dir ita inc tin ile toi uti

 choisi toile direct demi tintin chouan demis utile incita choisit

    leçon 21

mots basés sur : nis ani her arc rch cri sti déc ors nan pui squ ace rap

 rapace anis cristi cricri décher hercher puisqu décors archer nanan

    leçon 22

mots basés sur : uer avo mps cla dev ina ari née enf foi rer nat tal omb mbr rav seu eul tiq

 tiquer devina ombrer seul natal enfarinée ravina clamps avouer foirer

    leçon 23

mots basés sur : ole acc str aus ral nco fra nge ges ind iso gne lor ori lis rep

 isole franco lori franges accole indole frange austral replis lorgne

    leçon 24

mots basés sur : alo loi lla col ate cro oup nté han tés lat mie len sol été

 croate aloi croup miellat hantés colla hanté étés solen lattés

    leçon 25

mots basés sur : eva ach cen ton ica chi ili vre poi teu nal ndu ong nna

 poivre tonal chica teuton tondu tonna tong acheva centon chili

    leçon 26

mots basés sur : ama ssé bon esp pér rée uss eus ert exp pli are rép épa rti vis

 réparti amassé plissé espérée répare vissé eussé expert réparée bonbon

    leçon 27

mots basés sur : fic ela rce erc ger erm mer ima ett met ras mou ula nie sée tab uni

 gerce moula rasée imager mettras nieras germer ficela tabula unie