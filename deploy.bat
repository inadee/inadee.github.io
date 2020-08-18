pushd %~dp0
git add *.md
git add *.png
git add *.jpg
git add *.gif
git add *.toml
git commit -m "Committing and pushing source files" && git push origin main
popd
pushd %~dp0public
call %~dp0build.bat
git add . && git commit -m "Publishing to gh-pages" && git push origin gh-pages
popd
