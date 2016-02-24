csplitpref=/tmp/.csplit
csplit ./HandTill2001/R/HandTill2001-package.R "/NULL/" {*} -f ${csplitpref}
for file in $(ls -1 ${csplitpref}*)
do
  Rd=$(grep '@name' $file | cut -f2 -d' ').Rd
  if test $(echo ${Rd}| wc -c) -gt 4; then
  sed -n -e"/\\preformatted/,/}/p" < ${file} | sed -e 's/@source//' -e"s/^#'//" -e'/^$/d' | head --lines=-1 | tail --lines=+2 > /tmp/${Rd}
sed -ne "/\\preformatted.*/ {p; r /tmp/${Rd}" -e ":a; n; /.*}/{p; b}; ba}; p"  ./HandTill2001/man/${Rd} > /tmp/foo.${Rd}
mv  /tmp/foo.${Rd} ./HandTill2001/man/${Rd} 

fi
done
rm ${csplitpref}*
