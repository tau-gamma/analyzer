# echo "\$#: $#"
file=${@:$#}
if [ $# -gt 1 ]; then
  a="'$1'"
  for x in ${@:2:$#-2}; do
    a="$a,'$x'"
  done
  a="--set "ana.activated[0]" "[$a]""
  echo $a
fi
echo "./goblint --enable colors --enable dbg.debug --enable dbg.showtemps --sets result html --sets solver new --enable ana.int.interval $a $file"
./goblint --enable colors --enable dbg.debug --enable dbg.showtemps --sets result html --sets solver new --enable ana.int.interval $a $file
