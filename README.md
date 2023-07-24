# Snap Configuration Manager

The **Snap Configuration Manager** is a bash script that provides an interactive way to manage Snap configuration options on your Linux system. It allows you to choose from different options to backup the previous Snap configuration, load the default configuration, or provide a custom path for Snap installation.

## Features

- Backup the previous Snap configuration to restore it later if needed.
- Load the default Snap configuration to revert to the system's original state.
- Provide a custom path to move the Snap installation to a location of your choice.
- Exit the script without making any changes if needed.

## Usage

1. Clone this repository or download the script file directly to your system.
2. Open a terminal and navigate to the directory where the script is located.
3. Make sure the script has execution permissions: `chmod +x script.sh`
4. Run the script: `./script.sh`

The script will guide you through the process of managing your Snap configuration. Simply follow the prompts and choose the appropriate option for your needs.

## Requirements

- Linux-based system with `bash` shell.
- Administrative privileges (sudo) are required to make changes to Snap configuration.

## Caution

- Always create a backup or snapshot of your system before running this script to ensure you can revert changes if necessary.
- Use this script at your own risk. We are not responsible for any potential data loss or system issues caused by its usage.

## Contributing

Contributions to this project are welcome. If you encounter any issues or have suggestions for improvement, feel free to submit a pull request or open an issue.

## License

This project is licensed under the GNU General Public License. See the [LICENSE](LICENSE) file for details.
