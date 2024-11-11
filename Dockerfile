# Use the official .NET 8 image for console applications
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

# Copy the project files and restore dependencies
COPY . ./
RUN dotnet restore

# Build the application
RUN dotnet publish -c Release -o out

# Configure the final image with a lighter .NET 8 runtime
FROM mcr.microsoft.com/dotnet/runtime:8.0
WORKDIR /app
COPY --from=build-env /app/out .

# Define the application startup command
ENTRYPOINT ["dotnet", "csharpLS.dll"]