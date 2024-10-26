# Code Editor
This code-editor is a self suffient Code Editor which provide you an unbelievable experience in coding.
This Code Editor supports almost all the Major and minor languages which provide you the facility to code in all languages in a simple way.
## Features

<h3 style="color:#d96914;">Multi-Language Support</h3>

You can use this code editor for Working on any language like : python, Java, HTML, etc.

## Installing on Linux (Debian Based only)
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
`apt install python`

## How to Open a File in code-editor
In Termux window write the following query :-

`<Language_Name> <File_Name>`

Example :-
```python
python example.py
```
## Modes in Code Editor 
There are 3 Modes in Code Editor :- 
1. Normal Mode
2. Insert Mode
3. Visual Mode

## Normal Mode 

When You open the Code Editor, It always starts in Normal mode. In Normal Mode you can run commands & Shortcuts. For Command press colon : first.


Example for command
```
: exit
```

#### Some Basic Comamnds in Normal Mode
| Command | Description |
| ----------- | ----------- |
| `F` | Fold the Selected Block |
|`ctrl + F`| fold All  |
|`ctrl + J` | Unfold All |
|`ctrl + Q` | Close the File without Saving |
|`Alt + E` | Open File Manager |
|`Alt + R` |  Run Code  |
|`Alt + Q` | Close All Files |

 For Split the terminal in 2 horizontal parts, run the following Command and use one part as Code Editor and other as Code Terminal.
 ```bash
 :horizontal terminal
 ```
 
For Split the terminal in 2 Vertical parts, run the following Commandand use one part as Code Editor and other as Code Terminal.
 ```bash
 :Vertical terminal
 ```
Use the following syntax to Run Program on Terminal  part.

`<Language_Name> <File_Name>`

Example :-
```python
python example.py
```

#### Normal Mode to Insert Mode
You can Switch to Insert Mode from Normal Mode by Pressing I.

## Insert Mode

In Insert Mode you can Edit, Modify and make changes to your Code.

### Some Basic Comamnds in Insert Mode
| Command | Description |
| ----------- | ----------- |
|`ctrl + D`| Duplicate Line |
|`ctrl + S` | Save |
|`ctrl + Q` | Save and Close File |
|`Ctrl + U`| Undo |
|`Ctrl + R` | Redo |
|`Ctrl + ↑` | Shift Code line Up|
|`Ctrl + ↓` | Shift Code Line Down |
|`Ctrl + C`| Copy |
|`Ctrl + V` | Paste |
