# Makefile for building F# project using .NET Core

PROJECT_NAME=SimpleCParser
OUT=bin/Release/net6.0/$(PROJECT_NAME).dll

# Define a .NET project file and add source files if it doesn't exist
.PHONY: project
project:
	if [ ! -f $(PROJECT_NAME).fsproj ]; then \
		dotnet new console -lang "F#" -n $(PROJECT_NAME) -o .; \
		rm -f Program.fs; \
	fi
	grep -q '<Compile Include="lexer.fs" />' $(PROJECT_NAME).fsproj || echo '    <Compile Include="lexer.fs" />' >> $(PROJECT_NAME).fsproj
	grep -q '<Compile Include="parser.fs" />' $(PROJECT_NAME).fsproj || echo '    <Compile Include="parser.fs" />' >> $(PROJECT_NAME).fsproj
	grep -q '<Compile Include="main.fs" />' $(PROJECT_NAME).fsproj || echo '    <Compile Include="main.fs" />' >> $(PROJECT_NAME).fsproj

# Target for building the project
build: project
	dotnet build -c Release -o bin/Release/net6.0

# Target to run the program
run: build
	dotnet $(OUT)

# Default target
all: build