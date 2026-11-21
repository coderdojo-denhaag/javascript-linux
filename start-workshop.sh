#!/bin/bash

# Check if dotnet is installed and has a 10.x SDK
if command -v dotnet &> /dev/null && dotnet --list-sdks | grep -q "^10\."; then
    echo ".NET 10 SDK is already installed. Skipping installation."
else
    echo ".NET 10 SDK not found. Installing..."
    sudo apt update
    sudo apt install -y dotnet-sdk-10.0
fi

# Run the application
dotnet coderdojo-project-starter.dll

