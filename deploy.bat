pushd %~dp0
git add *.md
git add *.png
git add *.jpg
git add *.gif
git add *.toml
git commit -m "Committing and pushing source files" && git push origin main
call %~dp0build.bat
popd
pushd %~dp0public
set GIT_DIR=%~dp0public/.git
git add . && git commit -m "Publishing to gh-pages" && git push origin gh-pages
popd
