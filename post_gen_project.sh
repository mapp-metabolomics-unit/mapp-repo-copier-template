#!/bin/bash

echo "Starting Git initialization script..."

# Print variables for debugging
echo "GitHub Username: {{ github_username }}"
echo "Repository Name: {{ repository_name }}"

# Initialize git repository
git init
if [ $? -ne 0 ]; then
    echo "Failed to initialize git repository"
    exit 1
fi
echo "Git repository initialized."

# Add remote origin
git remote add origin "https://github.com/{{ github_username }}/{{ repository_name }}.git"
if [ $? -ne 0 ]; then
    echo "Failed to add remote origin"
    exit 1
fi
echo "Remote origin added."

# Add all files to git
git add .
if [ $? -ne 0 ]; then
    echo "Failed to add files to git"
    exit 1
fi
echo "Files added to git."

# Commit the files
git commit -m "Initial commit"
if [ $? -ne 0 ]; then
    echo "Failed to commit files"
    exit 1
fi
echo "Files committed."

# Push to the remote repository
git push -u origin main
if [ $? -ne 0 ]; then
    echo "Failed to push to remote repository"
    exit 1
fi
echo "Pushed to remote repository."

echo "Git initialization script completed."
