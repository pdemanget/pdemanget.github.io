
# Eclipse Tips

## Nice to have shortcuts
- Lower case: CTRL+SHIFT+Y
- Upper case: CTRL+SHIFT+X

### How to avoid awt import
Configure here:
Window->Preferences->Java->Appearance->Type Filters

remove:
 - java.awt
 - jdk


## cool views
 - Debug Shell: it has replaced the "display" view. debug interpreter that permits to 
   run any line in debug mode (like in an interpreter)
 - Problem: see compile errors in a more clean way than the default one


## Optimisation

- download eclipse java editor (not EE)
1. eclipse.ini : last vm + RAM + GC flags comment with #
2. preferences: disable all plugin on startup, marketplace update,softare update, spell check, delay autocomplete
3. Help/about/installation : remove all unnecessary plugins: ant, graddle, xml validator, jenkins
  keep Eclipse Java IDE, eclipse JDT (only theses 2 are mandatory)
  keep m2e maven integration (not mandatory but necessary)
  keep at choice usefull productive plugins: git,eclemma, wikitext
4. use Ramdrive: dind't see much performance improve: minimal boot is still 10s 

To keep theses optimisation on all workspaces,you have can backup your .metadata, but it's pretty big:) so better save it with file export - then manually redo the configuration for the plugins not exporting their configurations.


### details
1. eclipse.ini
-startup
plugins/org.eclipse.equinox.launcher_1.5.700.v20200207-2156.jar
--launcher.library
plugins/org.eclipse.equinox.launcher.win32.win32.x86_64_1.1.1100.v20190907-0426
-product
org.eclipse.epp.package.java.product
-showsplash
org.eclipse.epp.package.common
--launcher.defaultAction
openFile
--launcher.defaultAction
openFile
--launcher.appendVmargs
-vm
J:/jdk-14/bin/javaw.exe
#C:/opt/lib/jdk-14/bin/javaw.exe
#-Xverify:none
-vmargs
-Dosgi.requiredJavaVersion=1.8
-Dosgi.instance.area.default=@user.home/eclipse-workspace
#-XX:+UseG1GC
-XX:+UseConcMarkSweepGC
#-XX:+UseStringDeduplication
#-XX:+AggressiveOpts
-Xmn512m
-Xss2m
-XX:CompileThreshold=5
-XX:MaxGCPauseMillis=10
-XX:MaxHeapFreeRatio=70
--add-modules=ALL-SYSTEM
-Dosgi.requiredJavaVersion=1.8
-Dosgi.dataAreaRequiresExplicitInit=true
-Xms256m
-Xmx2048m
--add-modules=ALL-SYSTEM

2. preferences
open with window/preferences then
(use extensively the preferences search to go on that parameters, add your own leybinds)
general/editor/keys "preferences" CTRL-ALT-S (accelerate the configuration with ctrl-alt-S for all the remaining, so beginning with this)
general/editors/file association open unassociated file with : "text editor" (don't use marketplace, don't install useless plugins for XML/JSON)
general/ StartupAndShutdown: refresh workspace on startup: false
general/workspace use native hook : true (native hook are integrated in JVM so optimal)
general/workspace refresh on access: false (don't need this refresh with native hooks)
java appearance/show members : false



### notes:
don't use obsolete optimisation (include also mines) always check JVM optimisation for the memory/stack/gc etc.
Example of optimisation to **NOT** use:
- permsize optimisation  removed in java 8
- XX:+AggressiveOpts : removed in java 13
- Xverify:none also removed in latest versions of java
