FROM microsoft/dotnet:2.0-sdk
COPY . ./program1
WORKDIR /program1/

RUN dotnet build -c Release
ENTRYPOINT ["dotnet", "run", "-c", "Release", "--no-build"]
