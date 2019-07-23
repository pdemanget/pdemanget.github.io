JavaFX
======
Installation depuis java 10
---------------------------



Observation des listes
----------------------
fournir un listener sur "update"


		for(Equipment equipment:equipments) {
			equipment.selectedProperty().addListener((obs,old,selected)->{
				equipementsObservable.set(equipementsObservable.indexOf(equipment), equipment);
			});		
		}
		
		ListChangeListener<? super Equipment> listener = c->{
			if(c.next()) {
				System.out.println(c.getFrom());
			}
		};

Manipulation des tableCell
--------------------------
cell.getTableRow().getItem()
 




Intégration de fontAwesome
--------------------------

### avec controlsfx
		1. add controlsfx dependency
			<dependency>
			    <groupId>org.controlsfx</groupId>
			    <artifactId>controlsfx</artifactId>
			    <version>9.0.0</version>
			</dependency>

		2. download fontawesome font in src/main/resources/fonts
		
		3. GlyphFontRegistry.register(new FontAwesome(getClass().getResourceAsStream("/fonts/fontawesome-webfont.ttf")));

      4. <Button mnemonicParsing="false" onAction="#add" styleClass="button-glyph">
         <graphic>
            <Glyph fontFamily="FontAwesome" icon="PLUS_CIRCLE" />
         </graphic>
      </Button>
      
### Avec FontAwesomeFX

1. pom.xml

    <dependency>
			<groupId>de.jensd</groupId>
			<artifactId>fontawesomefx-fontawesome</artifactId>
			<version>4.7.0-9.1.2</version>
	</dependency>
2. FXML
		<FontAwesomeIconViewExt iconName="STAR" size="12em" glyphStyle="-fx-fill: linear-gradient(#70b4e5 0%, #247cbc 70%, #2c85c1 85%);"/>
		

Les pseudo class
----------------
L'déal pour l'affichage dynamique : Il ne faut pas modifier les classes normales, qui doivent rester pour du static (gros risque de bug)
Le toggle button s'appuie la dessus
  https://stackoverflow.com/questions/36094736/change-javafx-style-class-based-on-model-state
  
exemple:
	
	private static final PseudoClass ERROR_PSEUDO_CLASS = PseudoClass.getPseudoClass("alarme");
	
	button.pseudoClassStateChanged(ERROR_PSEUDO_CLASS,value);
	
	.equipment .stations button:alarme{
		-fx-background-color: linear-gradient(to bottom, #FFAE68,#DF8E48);
	}
  
Les expression FXML
-------------------

https://docs.oracle.com/javase/8/javafx/api/javafx/fxml/doc-files/introduction_to_fxml.html
  
Quelques variables magiques à retenir:
"$controller.unevariable"


Problèmes courants
------------------

### convertir int vers ObjectProperty<Integer> pour une colonne de tableView
SimpleIntegerProperty n'est pas de type ObjectProperty<Integer> mais peut être converti par la méthode asObject:

		id.setCellValueFactory(cell->new SimpleIntegerProperty(cell.getValue().getId() ).asObject() );
		
		
### CSS sous Eclipse
 - Installer e(fx)clipse
 - Ajouter la librairie javafx au projet
 - filtrer les probleme XText de la vue Problems. 


Le style par défaut
-------------------
Il y a un CSS Global qui applique un style par défaut, en javafx8 c'est :modena.css
On peut le changer, (voire le désactiver, mais ce n'est pas conseillé, il faudrait refaire tous les skins de tous les composants)
On peut le consulter pour voir les styles à surcharger, ou pour s'en inspirer, le css est dans:

    jfxrt.jar com/sun/javafx/scene/control/skin/caspian/caspian.css
    
    ou
    
    jdk-9.0.1\jmods\javafx.controls.jmod  \classes\com\sun\javafx\scene\control\skin\modena\

Pour changer le style global:

    setUserAgentStylesheet(STYLESHEET_CASPIAN);
    
Packaging en EXE
----------------
On peut packager en Jar, EXE, RPM DEB, et MSI d'après la doc Oracle:
https://docs.oracle.com/javase/9/deploy/self-contained-application-packaging.htm#JSDPG601

Pour packager en .msi, on utilise Wix

Il existe un plugin maven, mais qui est encore en snapshot pour java 9: com.zen.java:javafx-maven-plugin:9.0.0-SNAPSHOT
 





Notes
-----

<build>
 ...
    <resources>
      <resource>
        <directory>src/main/java</directory>
        <includes>
          <include>**/*.fxml</include>
        </includes>
      </resource>
      <resource>
        <directory>src/main/java</directory>
        <includes>
          <include>**/*.fxml</include>
        </includes>
      </resource>
      ...


Le bootstrapping
================
Quelques réglages qui manquent aux classes et exemple de javaFX.

Setter la fonte par défaut
--------------------------
En général, on a un noeud root, si on ne veut pas setter la fonte par défaut au niveau du css, on peut le setter dans le noeud "root" fu controller "IndexController"

        
      String fxFontSize = manager.getConf().getProperty("-fx-font-size");
		if(fxFontSize!=null && !fxFontSize.equals("default")) {
			root.setStyle(" -fx-font-size: "+fxFontSize+ ";");	
		}
		
		Font defaultFont = Font.getDefault();
      logger.info("Default font is {} maiv configuration fxFontSize:{}",defaultFont,fxFontSize);
 
 Ensuite, dans les CSS exprimer en .em les tailles variables: les autres fontes, les largeurs, mais pas les largeur de bordure à laisser en px (1 ou 2)




Les bidouilles
=============

Style des onglets
-----------------
Le style par défaut n'est pas terrible, on veut des onglets sur fond invisible, identique au context, il faut régler bordures et background

/* 
.equipment .tab-pane .tab
{
   -fx-background-color: -c-back-1;
}

.equipment .tab-pane .tab:selected
{
    -fx-background-color: -c-back-2;
}
*/

.equipment  .tab-pane *.tab-header-background {
	-fx-background-color: -c-border-1,black,-c-back-3;
	-fx-effect:null;
	 -fx-background-insets: 0, 0 0 1 0, 0 0 1 0;
    /*-fx-background-color: -fx-outer-border, -fx-inner-border, derive(-fx-color, -20%);
    -fx-effect: innershadow(two-pass-box , rgba(0,0,0,0.6) , 4, 0.0 , 0 , 0);
    * 
    */
}

Spacing
-------

VBox: 

HBox: 


Modifier le HTMLEditor
----------------------
https://stackoverflow.com/questions/10075841/how-to-hide-the-controls-of-htmleditor


Les centralisation de données écran 
=========================================

objet: Définir une emplacement partagé pour les écrans


Nested Controller
-----------------

Chargement statique de classe
-----------------------------
 * Trick pour insérer une valeur en javaFX
 * http://stackoverflow.com/questions/23705654/bind-font-size-in-javafx
 
 1. on instancie la classe au début du FXML (on se débourille pour que la classe aille ensuite chercher des données ailleur par injection de dépendance.
 2. on utilise la valeur dans le FXML
 
     <fx:define>
         <Measurement fx:id="m" />
     </fx:define>
 
 		<VBox minWidth="${500*m.dp}
 
 Modifier un noeud avec des méthodes statique de classe
-----------------------------
 
 

Naviguer entre les noeuds
-------------------------
Pour accéder à un noeud depuis un autre plutot que d'utiliser l'injection classique:

-remonter:
count.getParent()

-descendre:
node.lookup(cssSelector)

Autre approche, avec les getter Children et Content (accesseurs pas homogènes)

    http://www.kware.net/?p=8 
 
 
Autre communication entre écrans: le FXMLLoader
-----------------------------------------------

Quand on a du routing et qu'on appelle beucoup le fxmlloader, on peut injecter des données via le namespace:

fxmlLoader.getNamespace().put("key", maDonnee); 
 
 
 
 
 Workaround et défauts
 ---------------------
 La gestion d'exception sur les location: l'exception est "mangée" sur les url sont incorrectes:
                                 System.err.println(FXMLLoader.this.location + "/" + aValue);
                                 
 
 
 
 
CSS
====
 
Effet néon
----------
 -fx-effect: dropshadow( gaussian , derive(-Col_Orange,50%), 10, 0.5, 0, 0);
 Ombre
 -fx-effect: dropshadow( gaussian , -Col_Gray64 , 3, 0.1, 1, 1);
 
 
 https://springboot-javafx-support.readthedocs.io/en/latest/
 
Autres librairies
=================
https://github.com/badarshahzad/Jfx-Browser
http://peacekeeper.futuremark.com/
http://www.acidtests.org/

http://www.jfoenix.com/ 
