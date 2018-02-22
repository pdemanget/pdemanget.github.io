


Git tricks
----

### gestion des branches : workflow special
got co --orphan version: create a version branch withour commits
merge --no-ff: force a merge commit for git workflows

### "pull" une autre branche en FF
si on est sur une autre branche que "other"
git fetch origin other:other


## sous windows: conEmu64 https://sourceforge.net/projects/conemu/
console avec des onglets CMD, et pour ajouter un onglet git-bash

puis ajouter l'ouverture de git bash
C:\Program Files\Git\bin\sh.exe" --login -i
http://superuser.com/questions/454380/git-bash-here-in-conemu

### sous Linux: shift-ctrl-tab sur un terminal pour ouvrir plusieurs onglets
pratique pour gérer différents dépots.

### la taille du dépot et le filter-branch
https://gist.github.com/magnetikonline/dd5837d597722c9c2d5dfa16d8efe5b9#file-gitlistobjectbysize-sh
https://gist.github.com/pdemanget/166fb2a41dc8c86c7d211b5e2c6c4204


Best practices
----
https://sethrobertson.github.io/GitBestPractices/#sausage







my alias
----
[alias]^M
        st = status^M
        br = branch^M
        co = checkout^M
        hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short^M
        unch = update-index --assume-unchanged^M
        no-unch = update-index --no-assume-unchanged^M
        lsnb = log --pretty=format:\"%h %ad%x09%an%x09%s\" --date=short^M
        ls = log --pretty=format:'%C(yellow)%h %Cred%ad %C(cyan)%an%Cgreen%d %Creset%s' --date=short^M
        lls = log --stat
        lp = log -p
        ale = config -e --global^M
        cnf = config -e --global^M
        ci-all = commit -am \"updates\"^M
        diffi = diff --cached^M
        rmtag = push origin :tagname^M
        difs =  diff --ignore-space-at-eol^M
        pr = pull --rebase
        ca = commit -C HEAD --amend
        lame = commit -a -m
        vomit = !git commit -a -m \"Auto commit\" && git push
        fmerge = merge --no-ff
