#!/bin/bash

T1="$HelloValue"
T2="$HelloEnv"
        if [ "$T1" != "$T2" ]; then
dotnet /app/src/DotNetCoreHelloFromAppSettings/test1/DotNetCoreHelloFromAppSettings.dll
fi 
if [ "$T1" == "$T2" ]; then
cd /app/src/DotNetCoreHelloFromAppSettings/default/ && dotnet DotNetCoreHelloFromAppSettings.dll
fi

echo $HelloEnv
