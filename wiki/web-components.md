WebComponents
=============

Voyons les bases des WebComponents en vanilla JS.

Contexte
========
un webComponent permet de développer un composant HTML+JS réutilsable dans une page 
Web.

L'essentiel du web component se base sur ce triptique:
 - custom elements : (JS) pour créer et enregistrer de nouveaux éléments HTML, un tag, 
  et les faire reconnaître par le navigateur
 - template : (HTML) pour créer cet élément en tant que template HTML
 - shadow dom: (JS) Pour isoler le composant du reste du DOM et le rendre réutilisable
 

Dans l'article Wikipédia, ils parlent également de ces fonctionnalités, mais je ne les 
expliquerais pas (pas besoin pour ce tuto)
 
 - HTML imports : pour packager ses composants (PLUS SUPPORTÉ)
 - model driven views : fournit un databinding semblable à celui d'AngularJS
 - Web animations : des APIs pour mettre en œuvre des animations complexes
 - pointer events

test server
===========
D'abord lançon un serveur local
python -m http.server 
cela permet d'ouvrir les fichiers du répertoire en cours depuis un serveur Web.

custom elements
---------------
API: CustomElementRegistry.define()

la ligne de commande unique à retenir pour créer son tag c'est :

   customElements.define('hello-world', PopUpInfo);


    On commence par créer son propre tag, c'est le __custom elements__.

     
    
    customElements.define('hello-world', PopUpInfo);

    <!-- Using Custom Elements -->
    <hello-world who="World"></hello-world>

Shadow DOM
----------
API: Element.attachShadow({mode: [open|closed] }) 

    On isole ce composant poour qu'il ne soit pas "polué" par son conteneur, ce qui rend le composant réutilisable


### example

    let shadow = elementRef.attachShadow({mode: 'open'});
    let shadow = elementRef.attachShadow({mode: 'closed'});




Template
--------
API: <template> [yourHTML...] </template>

    Enfin on défini ce composant en HTML plutot qu'en JS grâce au template.

    <template>
        <h1><slot name="title"></slot></h1>
        <p><slot name="description"></slot></p>
    </template>

	customElements.define('my-paragraph',
	  class extends HTMLElement {
    constructor() {
      super();
      let template = document.getElementById('my-paragraph');
      let templateContent = template.content;
					
      const shadowRoot = this.attachShadow({mode: 'open'})
        .appendChild(templateContent.cloneNode(true));
    }
	  }
	);

Exemple full
------------
Voila un exemple hello-world qui combine les trois:


    <hello-world></hello-world>

    <template id="template_hello_world">
        <style>
            @import "hello.css";
        </style>
        <h1>Hello, world</h1>
    </template>

    <script>
        class HelloWorld extends HTMLElement {
            connectedCallback () {
              let template = document.getElementById('template_hello_world');
              let templateContent = template.content;
              //const shadowRoot = this.attachShadow({mode: 'open'})
              const shadowRoot = this.attachShadow({mode: 'closed'})
                .appendChild(templateContent.cloneNode(true));
            }
        }
        customElements.define( 'hello-world', HelloWorld )
    </script>


HTML import (deprecated)
-----------
    les HTML import *NE SONT PLUS SUPPORTÉS*.

    <!-- Importing Custom Elements -->
    <link rel="import" href="src/hello-world.html">




Sources
=======
https://fr.wikipedia.org/wiki/Composants_web
https://developer.mozilla.org/fr/docs/Web/HTML/Element/template#R%C3%A9sum%C3%A9_technique
https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_custom_elements
https://developer.mozilla.org/en-US/docs/Web/API/CustomElementRegistry/define
https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_templates_and_slots
https://stackoverflow.com/questions/40979549/vanilla-hello-world-app-using-web-components
https://stackoverflow.com/questions/34408880/is-html-import-still-supported-in-google-chrome
https://stackoverflow.com/questions/16055275/html-templates-javascript-polyfills

https://caniuse.com/#search=HTML%20template
https://caniuse.com/#search=web%20components
