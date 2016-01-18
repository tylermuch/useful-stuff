filename=`cat /dev/urandom | tr -cd 'a-f0-9' | head -c 8`
filename="$filename.txt"
touch $filename
echo `cat /dev/urandom | tr -cd 'a-f0-9' | head -c 8` > $filename
git add $filename
git commit -m "added $filename"
