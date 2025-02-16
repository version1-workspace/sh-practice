
IDX=1
TARGET=files_1/*.pdf
TARGET_DIR=files_1/
NAMEFILE=_ans/pdf_file_names.txt

cat $NAMEFILE | while read line
do
  FILENAME=$(ls -1 $TARGET | head -n $IDX | tail -n 1)
  mv "$FILENAME" $TARGET_DIR$line

  IDX=$((IDX+1))
done
