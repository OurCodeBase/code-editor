# Installing on Linux (Debian Based only)

This Documentation is only for Debian Based Linux.
<br>
Follow these Steps :-
<ol>
  <li>Install Package</li>
  <li>Files Clonning & Configuration</li>
  <li>Installing Language Server</li>
</ol>

### Install Package

Write the following Command in Terminal
```bash
apt install git neovim nodejs
```

### Files Clonning & Configuration

``` bash
git clone ---depth=1 https://github.com/OurCodeBase/code-editor ~/.config/nvim
```
### Installing Language Server

```bash
LspInstall jedi_language_server
```

> [!CAUTION]
> If You use this code editor for Python, You need to run  a command in Termux Terminal to install Python Server after Installing the Package
> 

```bash
apt install python
```

<br>
<br>

# Update Code Editor 

If u want to update the Editor, then Run the following Command in Terminal to get its lateat version.

```bash
cd ~/.config/nvim
git pull
```

> [!CAUTION]
> If Error Occurs run the following Command 
>

```bash
git pull --force
```

<br>
<br>

# For Reset the Code Editor

If u have not updated your Code editor for a long...please Reset it with new updates.by us8ng following codes in terminal.

```bash
cd
rm -rf .config/nvim
rm -rf .local
git clone https://github.com/OurCodeBase/code-editor.git .config/
```

## How to Open a File in code-editor

In Termux window write the following query :-

`<Language_Name> <File_Name>`
<br>

Example :-
```python
python example.py
```

# Code Editor Modes

Click here to know more about modes 
[Code Editor Modes](README.md)
