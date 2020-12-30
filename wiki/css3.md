CSS
===

Les évolution du CSS sont constantes, les plus grosses évolutions sont celles cu CSS3, 
Attention à bien prendre des documentations up-to-date, cette documentation est rédigée dans l'état de mes connaissance à  la date du 12/12/2019.
J'ai donc mis en "Sources" à la fin les éléments qui permettent de se mettre à jour 


FLEX
====
display:flex;
flex-direction:row-reverse;
justify-content: flex-end; (space-between...)
align-items:;
order:1;

align-self:flex-end;
flex-wrap:wrap;
flex-flow: column wrap (combinaison de flex-direction et flex-wrap)
align-content:flex-end;


flex-flow: column-reverse wrap-reverse;
align-content:space-between;
justify-content:center;

Sources
=======
<https://flexboxfroggy.com/#fr>


Position
=========

popup
----

faire une absolute dans une relative
<div style="position:relative">parent<div style="position:absolute"> child