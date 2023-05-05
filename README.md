
# UltraDiff

UltraDiff is a simple Bash script that compares two text files and generates two separate markdown files containing the differences. The script creates one file for lines present in the first file but not in the second, and another file for lines present in the second file but not in the first.

## Usage

1. Rename the script to `ultradiff.sh` and give it execute permissions:

   ```
   mv compare_files.sh ultradiff.sh
   chmod +x ultradiff.sh
   ```

2. Run the script:

   ```
   ./ultradiff.sh
   ```

3. When prompted, enter the paths of the two files you want to compare.

   ```
   Enter the path of the first file:
   <path_to_first_file>
   Enter the path of the second file:
   <path_to_second_file>
   ```

4. The script will compare the files and generate two markdown files on your desktop:

   - `not_in_<file1>.md`: Contains lines present in file2 but not in file1.
   - `not_in_<file2>.md`: Contains lines present in file1 but not in file2.

## Requirements

- Bash (The script has been tested on macOS, but should work on other Unix-like systems as well)
