#!/bin/bash

# Define the target directory and file name
TARGET_DIR="build"
HTACCESS_FILE="$TARGET_DIR/.htaccess"

# Ensure the target directory exists
if [[ ! -d $TARGET_DIR ]]; then
    echo "The directory '$TARGET_DIR' does not exist. Creating it..."
    mkdir -p $TARGET_DIR
fi

# Define the content for the .htaccess file
HTACCESS_CONTENT="<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /
    RewriteCond %{REQUEST_FILENAME} !-f
    RewriteCond %{REQUEST_FILENAME} !-d
    RewriteRule ^ index.html [L]
</IfModule>"

# Create or overwrite the .htaccess file with the content
echo "$HTACCESS_CONTENT" > $HTACCESS_FILE

# Check if the file was created successfully
if [[ -f $HTACCESS_FILE ]]; then
    echo "$HTACCESS_FILE has been created successfully in the '$TARGET_DIR' directory."
else
    echo "Failed to create $HTACCESS_FILE in the '$TARGET_DIR' directory."
fi
