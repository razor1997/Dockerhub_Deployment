FROM microsoft/dotnet:2.0-sdk AS build
COPY . ./program1
WORKDIR /program1/
RUN dotnet build -c Release –o output

FROM microsoft/dotnet:2.0-runtime AS runtime
COPY --from=build /program1/output .
ENTRYPOINT ["dotnet", "program1.dll"]
