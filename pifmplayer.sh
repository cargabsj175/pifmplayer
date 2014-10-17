# Proyecto VegnuX 2007-2014
# Play music files on current directory
# GPLv3
# cargabsj175(at)gmail.com

OLDIFS=$IFS
IFS=$'\n'

function playpifm(){
ffmpeg -i "$i" -f s16le -ar 22.05k -ac 1 - | sudo pifm - 94.9 22050
}
function help (){
echo "TODO"
}

for i in $(ls -1 *.mp3); do
	echo ""
	echo "Playing now --> $(echo $i | sed 's:.mp3::g')..."
	echo "Skip track using (ctrl+c)"
	echo ""
	 playpifm 2> /dev/null
done

IFS=$OLDIFS
