debug_tmp=$debug
debug=false # temporarily disable debug output
n=0
c=0
for f in tests/regression/18-file/*.c; do
	./test.sh $f $1 2>/dev/null | python2 tests/regression.py $f && ((c++))
	((n++))
done
debug=$debug_tmp
msg="passed $c/$n tests"
echo $msg
if [ $c -eq $n ]; then
	exit 0
else
	notify-send -i stop "$msg"
	exit 1
fi
