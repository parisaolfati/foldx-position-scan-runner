# FoldX PositionScan Runner

A clean, portable Bash shell script to automate FoldX `PositionScan` (PSSM analysis) on specific PDB structures and target chains.

## Usage

1. Place your FoldX executable path in the script configuration (`FOLDX_PATH`).
2. Ensure your input PDB file is in the working directory (or update `PDB_FILE` and `CHAIN` variables).
3. Run the script:
```bash
bash run_position_scan.sh
```
