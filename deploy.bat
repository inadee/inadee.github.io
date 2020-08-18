pushd %~dp0\public
git add . && git commit -m "Publishing to gh-pages" && git push origin gh-pages
popd
