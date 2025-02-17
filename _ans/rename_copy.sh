
IDX=1
TARGET=tmp/_org.pdf
OUT_DIR=tmp/
NAMEFILE=$1

if [[ -z $NAMEFILE ]]; then
  echo "rename.sh <namefile>"
  exit 1
fi

if [[ ! -f $NAMEFILE ]]; then
  echo "File not found!"
  exit 1
fi

cat $NAMEFILE | while read line
do
  cp -p "$TARGET" $OUT_DIR$line

  IDX=$((IDX+1))
done
