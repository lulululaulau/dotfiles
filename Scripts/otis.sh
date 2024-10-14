#!/bin/bash
# this is a script to automate handling downloaded OTIS files
#
# only change directory when there are no inputs
if [ $# -eq 0 ]; then
  cd /Users/llau/Documents/Personal/Math/OTIS
  return
fi

# initialize variables
indir="/Users/llau/Downloads"
outdir="/Users/llau/Documents/Personal/Math/OTIS/$2-$1"
cd ${indir}
# makes sure files exist
if ! ( test -f $1-$2.pdf && test -f otis.evanchen.cc.txt ) ; then
  echo "file(s) not found"
  echo "arguments should match the pdf name without the dash or file extension"
  echo "this script assumes google chrome's default file names"
  return
fi

upper=$(echo "$2" | tr '[:lower:]' '[:upper:]')
# makes sure files match
if [[ $(cat otis.evanchen.cc.txt | grep $1-${upper}) ]] ; then
  # automatically removes unnecessary package option
  #   due to tex live versioning differences
  sed -i "" -e 's/usenames,//g' otis.evanchen.cc.txt
  # adds my name to file
  sed -i "" -e 's/YOUR NAME HERE/Lewis Lau/g' otis.evanchen.cc.txt
  # creates directory and moves files in
  mkdir ${outdir}
  mv $1-$2.pdf ${outdir}/$1-$2-provided.pdf
  mv otis.evanchen.cc.txt ${outdir}/$1-$2.tex
  cd ${outdir}
else
  echo "pdf name mismatch with TeX template contents"
fi
