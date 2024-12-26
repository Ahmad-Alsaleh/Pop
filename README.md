# Pop

A simple tool to populate my projects with template files

## Installation

1. Clone this repo
2. Change the path of the `templates_dir` in `genten.sh`
3. Write any files you need in the `templates/` folder
4. Run `mv genten.sh /usr/local/bin/genten`
5. Run `chmod +x /usr/local/bin/genten`

# Usage

1. Change to your project directory: `cd path/to/proj`
2. Run `genten <PROJNAME>` to populate your project directory

`genten` will auto-replace any occurrences of `PROJNAME` in the `templetes/` folder (see installation). This includes the file names as well.

