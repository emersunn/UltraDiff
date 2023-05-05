# ultraDiff

UltraDiff is a simple Bash script that compares two text files and generates two separate markdown files containing the differences. The script creates one file for lines present in the first file but not in the second, and another file for lines present in the second file but not in the first.

## Prerequisites

- Bash (The script has been tested on macOS, but should work on other Unix-like systems as well)

## Installation

1. Clone the UltraDiff repository:

   ```
   git clone https://github.com/emersunn/ultradiff.git
   ```

2. Navigate to the cloned repository:

   ```
   cd ultradiff
   ```

3. Give the `ultradiff.sh` script execute permissions:

   ```
   chmod +x ultradiff.sh
   ```

## Usage

1. Run the script:

   ```
   ./ultradiff.sh
   ```

2. When prompted, enter the paths of the two files you want to compare.

   ```
   Enter the path of the first file:
   <path_to_first_file>
   Enter the path of the second file:
   <path_to_second_file>
   ```

3. The script will compare the files and generate two markdown files on your desktop:

   - `not_in_<file1>.md`: Contains lines present in file2 but not in file1.
   - `not_in_<file2>.md`: Contains lines present in file1 but not in file2.

## Customization

If you need to modify the ultraDiff script, you can open the `ultradiff.sh` file in your preferred text editor and make the necessary changes. Here are a few examples of modifications you might want to make:

- Change the output directory: Modify the `output_file1` and `output_file2` variables to specify a different directory for the generated markdown files.
- Change the output format: Modify the `echo` and `sed` commands within the script to adjust the format of the generated markdown files.
- Add more advanced comparison options: Modify the `diff` command within the script to include any additional flags or options, such as ignoring case or excluding specific file types.

For more information on the available `diff` command options, consult the `diff` manual by typing `man diff` in your terminal.
