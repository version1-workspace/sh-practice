
ls -1 files_1 | while read line
do
  BASENAME=$(basename $line .pdf)
  NUMBER_FIELD=$(echo $BASENAME | awk -F_ '{print $3}')
  DATE_FIELD=$(echo $BASENAME | awk -F_ '{print $1}')
  NAME_FIELD=$(echo $BASENAME | awk -F_ '{print $2}')
  REST_FIELD=$(echo $BASENAME | awk -F_ '{print $4}')

  FILENAME=$( echo ${NUMBER_FIELD}_${DATE_FIELD}_${NAME_FIELD}_${REST_FIELD}.pdf)

  CMD="cp -p files_1/$line dist/$FILENAME"
  echo $CMD
  $CMD
done
