pushd %~dp0
git add *.md
git add *.png
git add *.jpg
git add *.gif
git add *.toml
git commit -m "Committing and pushing source files" && git push origin main
popd
pushd %~dp0public
git add . && git commit -m "Publishing to gh-pages" && git push origin gh-pages
popd
rmdir /S /Q %~dp0public >nul: 2>nul:
