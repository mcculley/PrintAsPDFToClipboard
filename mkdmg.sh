rm -fr tmp TMP.dmg "Print as PDF to clipboard.dmg"
mkdir tmp
cp -Rp Print\ as\ PDF\ to\ clipboard.app tmp/
ln -s ~/Library/PDF\ Services/ tmp/
cp *.rtf tmp/
hdiutil makehybrid -hfs -hfs-volume-name "Print as PDF to clipboard" -hfs-openfolder tmp tmp -o TMP.dmg
hdiutil convert -format UDZO TMP.dmg -o "Print as PDF to clipboard.dmg"
rm TMP.dmg
rm -fr tmp
