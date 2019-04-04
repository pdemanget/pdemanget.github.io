#!/bin/bash
# Good! (Bash-only)
echo [

shopt -s nullglob
 
indent="	"
recursiveinfo() {
  for f in *; do
    if [ -d "$f" ]; then
      echo "$indent" \{\"path\":\"$f\", \"files\":[
      indent="$indent	"
      (cd -- "$f" && recursiveinfo)
      echo "$indent"]
      indent=${indent:1}
    else
        g="`stat -c %y "$f"`"
		set $g
		echo "$indent" \{\"path\":\"$f\",\"date\":\"$1T$2\"\},
    fi
  done
}

recursiveinfo



echo ]