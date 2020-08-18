pushd %~dp0
rmdir /S /Q %~dp0public >nul: 2>nul:
REM REQUIRED to build and deploy from the same workspace
git worktree add -B gh-pages public origin/gh-pages
popd
