# Makefile

# Define the compiler
FSC = dotnet fsc

# Define the source file
SRC = main.fs

# Define the output executable
OUT = main.exe

# Compile the F# program
compile:
	$(FSC) -o:$(OUT) $(SRC)

# Run the compiled program
run: compile
	dotnet $(OUT)

# Clean up compiled files
clean:
	rm $(OUT)