PrjMgt en V
===========

PDCB method
Phase descendante         | phase montante associée             | PLAN | DOC | CODE | Binary DELIVER 
------------------------------------------------------------------------------------------------
0. admin (struct legale)  |                                     |      |  X  |      |    
1. av vente et vente      |  7. apres vente                     |   X  |  X  |      |   X
2. GP                     |  6. livraison (conforme au planning)|   X  |  X  |      |   X
3. spec analysis          |  5. test (conforme aux specs)       |      |  X  |  X   |   X
4. real                                                         |      |  X  |  X   |   X

P      D
7------6
| 1--2 |
| |  | |
| 4--3 |
0------5
C      B


Directories
-----------




Tools checkup
=============
- scm       : git
- scm guis  : kdiff
- compilers : jdk
- builder   : maven
- dep tool  : maven
- analysis - retro spec tools : cloc, dbeaver
- IDE       : eclipse


