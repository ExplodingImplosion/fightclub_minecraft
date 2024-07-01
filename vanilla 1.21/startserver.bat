@echo OFF

java -Xmx2048M -Xms2048M -jar server.jar

echo Press CTRL+C to cancel GitHub commit.

timeout 3

echo (%time%) committing changes to GitHub repo...

For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set datenow=%%c-%%a-%%b)
git add --all
git commit -m %%datenow%%
echo (%time%) pushing changes to GitHub repo...
git push
echo (%time%) changes pushed(? idk)
git pull
echo (%time% changes pulled(? idk)
