FROM microsoft/dotnet:2.0-sdk AS build
COPY . ./program2
WORKDIR /program2/
RUN dotnet build -c Release –o output

FROM microsoft/dotnet:2.0-runtime AS runtime
COPY --from=build /program2/output .
ENTRYPOINT ["dotnet", "program1.dll"]
