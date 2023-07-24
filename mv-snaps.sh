#!/bin/bash

function choose_backup_or_default_or_custom() {
    echo "Do you want to backup the previous configuration, load the default configuration, provide a custom path, or exit?"
    echo "Enter '1' to backup the previous configuration"
    echo "Enter '2' to load the default configuration"
    echo "Enter '3' to provide a custom path"
    echo "Enter '4' to exit without making any changes"
    read -p "Your choice: " choice

    if [ "$choice" = "1" ]; then
        # Backup the previous configuration
        echo "Backing up the previous configuration..."
        sudo mv /var/lib/snapd /var/lib/snapd_backup
    elif [ "$choice" = "2" ]; then
        # Load the default configuration
        echo "Loading the default configuration..."
        sudo rm -rf /var/lib/snapd
        sudo mv /media/pixl8d3d/Fast\ Data/Snaps/snapd /var/lib/
    elif [ "$choice" = "3" ]; then
        # Provide a custom path
        read -p "Enter the custom path: " custom_path
        echo "Moving the Snap installation to $custom_path..."
        sudo mv /var/lib/snapd "$custom_path"
    elif [ "$choice" = "4" ]; then
        # Exit without making any changes
        echo "Exiting without making any changes."
        exit 0
    else
        echo "Invalid choice. Please enter '1', '2', '3', or '4'."
        choose_backup_or_default_or_custom
    fi
}

# Stop the Snap service
sudo systemctl stop snapd.service
sudo systemctl stop snapd.service

# Prompt the user to choose backup, default configuration, custom path, or exit
choose_backup_or_default_or_custom

# Create a symbolic link from the original location to the new location
sudo ln -s /var/lib/snapd $custom_path

# Start the Snap service
sudo systemctl start snapd.service
sudo systemctl enable --now snapd.service
sudo systemctl start snapd.apparmor

