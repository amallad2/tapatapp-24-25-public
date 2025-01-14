## 1. Prerequisites

Git Installed: Ensure Git is installed on your system. Check by running:

$ git --version

If not installed, download Git.

## 2. Set Up Git in VS Code
Enable Git in VS Code:

Open VS Code.<br>
Go to File > Preferences > Settings (or Cmd + , / Ctrl + ,).<br>
Search for "Git: Enabled" and ensure it is checked.<br>
Sign In to GitHub:

Install the GitHub extension for VS Code from the Extensions Marketplace.<br>
In the bottom-left corner, click on Accounts and sign in with your GitHub credentials.

## 3. Initialize Git in Your Local Project<br>
Open your project folder in VS Code.<br><br>
Open the terminal (`Ctrl + ```) and initialize Git:

$ git init<br>
$ Add and commit your changes:

$ git add . <br>
$ git commit -m "Initial commit"

## 4. Create a New Repository on GitHub

Go to your GitHub account and click on the + icon in the top-right corner.<br>
Select New Repository.<br>
Enter a repository name, add a description, and leave the repository empty (do not initialize with README or .gitignore).

## 5. Link Local Repository to Remote<br>
In the terminal, add the remote repository URL:

$ git remote add origin &lt;repository-URL&gt;<br>
Replace &lt;repository-URL&gt; with the HTTPS or SSH URL of your GitHub repository (e.g., https://github.com/username/repository.git).

Push your local branch to GitHub:

$ git branch -M main<br>
$ git push -u origin main
