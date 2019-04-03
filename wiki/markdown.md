Markdown usage
==============

How to start using markdown for all doc in your project?
- learn ascii syntax
- use right tools
- use additionnal tools for diagram

Why?
 - centralize documentation in your project
 - light tools for light usages

Syntax
======
There are 2 levels of syntax, the regular with limited functionnalities, and the specific that may differ from provider to provider.  
 For example there is the github flavored markdown:
[github flavored markdown specification](https://github.github.com/gfm/)
synthetic usage:[github md guide](https://guides.github.com/features/mastering-markdown/)

Form theses documents, I make here a short summary of the syntax:

regular syntax
--------------

The basic syntax allows titles strong and italic text

H1: underscore with == or one #
H2: underscore with -- or 2 #
###  h3 example
#### h4 example
##### h5 example
###### h6 example

**strong**
*italic*
_**combination** of both_

list
 - it1
 - it2

ordered list
1. one
3. two (number doesn't matter)
   1. item 2a

Single carriage return tow spaces after the line _ _  
The line is under


HR separator: 3 spaces or less and --- (different on github, plugins ...)  
   ---

The extended syntax
--------------------
- img
  ![GitHub Logo](https://image.flaticon.com/icons/png/128/34/34323.png)

- url
[GitHub](http://github.com)

blockquotes:
> Markdown is 
> easy to read

Task lists:
 - [x] done
 - [ ] todo

Note to footer [foo]  
any text


[foo]: http://example.com/  (Optional Title Here)

Tables:

|   A|  B  |
|---:|:---:|
|   1|  2  |
|   3|  4  |



Math:

$ a+b=c+d$a
	

Tools
=====
I recommand some tools to help with markdown edition:
 - Marp : Easy to use: it's a standalone to see the preview of your markdown file and edit it. Its more intended for slides
 - FluentMark eclipse plugin (to install with marketplace): it's well integrated in eclipse and, to see the preview, "windows/show view/fluentmark view"
 - Intellij - markdown plugin installed by default 
 - Gitlab/github README page viewer/editor
 - For development any library that convert md to html, I started with evilstreak/markdown-js but it's note maintained anymore. 
 - online, this one is good [dillinger.io](https://dillinger.io/)

For advanced usage there are more powerful tools to install:
 - pandoc
 - graphviz
 - plantUML





	
  
Diagrams
=========

Graphviz
-------
create an input.dot file  
then run
    $ dot -Tpng input.dot > output.png


dot file example:
https://fsteeg.wordpress.com/2006/11/17/uml-class-diagrams-with-graphviz/
generate dot file from classes (not tested)
http://landenlabs.com/code/llclasses/index.html


yUml
----
This tools permits very easy UML diagram edition. It returns an img


Reverse engineered Grammar of the syntax:

	S->((class assoc)*,)*
	class-> [name|(attribute;)*|(methods)*]
	assoc-> arrow name - name arrow
	name-> id(0..*)?
	arrow-> <|>|<>|^

 - association
         [Customer]1-0..*[Address]
- inheritance
        [Wages]^-[Salaried], [Wages]^-[Contractor]
- attributes and methods
        [User|+Forename+;Surname;+HashedPassword;-Salt|+Login();+Logout()]

- full example
<img src="http://yuml.me/diagram/scruffy/class/[note: You can stick notes on diagrams too!{bg:cornsilk}],[Customer]<>1-orders 0..*>[Order], [Order]++*-*>[LineItem], [Order]-1>[DeliveryMethod], [Order]*-*>[Product], [Category]<->[Product], [DeliveryMethod]^[National], [DeliveryMethod]^[International]" >

diagram styles:
 - scruffy
 - boring
 - nofunky


Annex
=====

more sources:  
https://github.com/grosenberg/fluentmark  
https://pandoc.org/  

