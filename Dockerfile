FROM mcr.microsoft.com/dotnet/core/aspnet:2.2
MAINTAINER andrey_polyakov
WORKDIR /app
COPY ./agent-git/c0fc19d39f3e182f/src/DotNetCoreHelloFromAppSettings/bin/Debug/netcoreapp2.0/ /app
ENTRYPOINT ["dotnet", "DotNetCoreHelloFromAppSettings.dll"]
