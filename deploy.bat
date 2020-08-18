pushd %~dp0
git add --all && git commit -m "Publishing to gh-pages" && git push origin gh-pages
popd
