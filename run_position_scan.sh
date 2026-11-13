#!/bin/bash

# Configuration variables (Modify these paths and parameters according to your system environment)
FOLDX_PATH="./foldx"
PDB_FILE="protein.pdb"               # Input PDB file
OUTPUT_DIR="./foldx_scan_results"
CHAIN="B"                            # Target chain for analysis

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Check if FoldX executable exists
if [ ! -f "$FOLDX_PATH" ]; then
    echo "Warning: FoldX executable not found at '$FOLDX_PATH'."
fi

# Check if input PDB file exists
if [ ! -f "$PDB_FILE" ]; then
    echo "Error: Input PDB file '$PDB_FILE' does not exist in the current directory."
    exit 1
fi

# Run PositionScan
echo "Running FoldX PositionScan on $PDB_FILE (Chain $CHAIN)..."
"$FOLDX_PATH" --command=PositionScan \
             --pdb="$PDB_FILE" \
             --output-dir="$OUTPUT_DIR" \
             --positions="$CHAIN"

echo "PSSM analysis completed. Results are saved in $OUTPUT_DIR."
