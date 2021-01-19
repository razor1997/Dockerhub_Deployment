FROM microsoft/dotnet:2.0-sdk
WORKDIR /program1/


RUN dotnet restore

COPY . ./program1
RUN dotnet build -c Release
ENTRYPOINT ["dotnet", "run", "-c", "Release", "--no-build"]
