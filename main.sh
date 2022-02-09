for i in res/*;
do
	touch output/$i
	convert -resize 15% overlay.png overlay-resized-15.png
	convert -composite -gravity center $i overlay-resized-15.png output/$i
done
