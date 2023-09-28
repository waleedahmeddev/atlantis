git add . 
git commit --allow-empty -m "Test Commit `date`"
git push origin $(git rev-parse --abbrev-ref HEAD)