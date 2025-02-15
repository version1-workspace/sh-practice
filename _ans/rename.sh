
IDX=1
cat name.txt | while read line
do
  FILENAME=$(ls -1 sample*.pdf | head -n $IDX | tail -n 1)
  mv "$FILENAME" $line

  IDX=$((IDX+1))
done
