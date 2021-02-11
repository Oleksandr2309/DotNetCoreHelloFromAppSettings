FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build-env

WORKDIR /app/src/DotNetCoreHelloFromAppSettings
COPY . /app
COPY MyReconfScriptTest.sh /app/
#ADD MyReconfScriptTest.sh /app

RUN dotnet build -c Release -o default DotNetCoreHelloFromAppSettings.csproj

RUN cd /app/src/DotNetCoreHelloFromAppSettings && sed -i 's/Hello World/Hello there!/g' appsettings.json && dotnet build -c Release -o test1 DotNetCoreHelloFromAppSettings.csproj
set -x
ENV HelloEnv=""
#RUN chmod +x /app/MyReconfScriptTest.sh
RUN ["chmod", "+x", "/app/MyReconfScriptTest.sh"]
ENTRYPOINT ["dotnet", "/app/src/DotNetCoreHelloFromAppSettings/test1/DotNetCoreHelloFromAppSettings.dll"]
