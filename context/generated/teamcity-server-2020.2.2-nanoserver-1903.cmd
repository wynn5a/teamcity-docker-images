cd ../..
docker pull mcr.microsoft.com/powershell:nanoserver-1903
echo TeamCity/buildAgent > context/.dockerignore
echo TeamCity/temp >> context/.dockerignore
docker build -f "context/generated/windows/Server/nanoserver/1903/Dockerfile" -t teamcity-server:2020.2.2-nanoserver-1903 "context"
