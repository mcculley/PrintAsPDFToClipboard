rm -fr tmp TMP.dmg "Copy PDF to clipboard.dmg"
mkdir tmp
cp -Rp Copy\ PDF\ to\ clipboard.app tmp/
ln -s ~/Library/PDF\ Services/ tmp/
cp *.rtf tmp/
hdiutil makehybrid -hfs -hfs-volume-name "Copy PDF to clipboard" -hfs-openfolder tmp tmp -o TMP.dmg
hdiutil convert -format UDZO TMP.dmg -o "Copy PDF to clipboard.dmg"
rm TMP.dmg
rm -fr tmp
