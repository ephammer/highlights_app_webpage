cd /Users/kid0n/StudioProjects/KindleNotes/highlights_webpage
flutter build web
cp -R /Users/kid0n/StudioProjects/KindleNotes/highlights_webpage/build/web/* /Users/kid0n/StudioProjects/ephammer.github.io/kindleNotesApp/
cd ~/StudioProjects/ephammer.github.io/
git add /Users/kid0n/StudioProjects/ephammer.github.io/kindleNotesApp/*
git commit -m "Kindle Highlights App improvement"
git push -u origin master




