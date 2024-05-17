read commit
cd ~/Data/
#git rm .
git add .
git commit -m "$commit"
git branch -M main
#git remote add origin git@github.com:ArtMagedon/DemoTest.git
git push -u origin main
echo "Pushed with: $commit"
