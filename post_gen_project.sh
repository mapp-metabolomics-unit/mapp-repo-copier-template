#!/bin/bash

# Initialize git repository
git init

# Add remote origin
git remote add origin https://github.com/{{ github_username }}/{{ repository_name }}.git

# Add all files to git
git add .

# Commit the files
git commit -m "Initial commit"

# Push to the remote repository
git push -u origin main
