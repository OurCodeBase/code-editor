<div align="center">

# Code Editor
<p><i>A modern, modular, and extensible code editor equipped with IDE-like features for a seamless dev experience.</i></p>

</div>

- 🎉 Supports auto-completions on over 80+ modern languages and almost all popular frameworks.
- ⚡ A lightning-fast and highly efficient ide, offering a seamless coding experience without compromising on performance.️
- ⚔ Cross platform supported so you can code on any platform.
- 🌩️ Highly portable offering a full-fledged ide even on your android.

## Acknowledgements
You have to make sure that you already have, atleast basic knowledge of terminal.
 - [A Journey To Cli](https://www.geeksforgeeks.org/linux-tutorial/)
 - [A Basic Understanding Of Commands](https://www.geeksforgeeks.org/basic-linux-commands/)

## Badges
![ChipperCI](https://img.shields.io/badge/bsd_licensed-1e394e.svg?style=for-the-badge&logo=chipperci&logoColor=white)
![Fastlane](https://img.shields.io/badge/maintained-%2382bd4e.svg?style=for-the-badge&logo=fastlane&logoColor=black)

## Installation

code-editor is based on **neovim**, **nodejs** and **npm**. So you must have to install the dependencies.

- Install a [nerd-font](https://github.com/ryanoasis/nerd-fonts) in terminal for icon support.

### Install dependencies

If your shell is non-rooted then use `sudo` infront of every command mentioned below.

| **Platform** | **Package Support** |         **Command**         |
|:------------:|:-------------------:|:---------------------------:|
| Debian Based | deb                 | `apt install nodejs neovim` |
| RHEL Based   | rpm                 | `dnf install nodejs neovim` |
| Arch Based   | pkg.tar.zst         | `pacman -S nodejs neovim`   |

<details>
<summary>Check this if you're using an Android.</summary>
<br>

- Install and open [Termux](https://play.google.com/store/apps/details?id=com.termux&hl=en_IN) on your phone.
- Setup your terminal with adding colors, zsh, syntax highlighting and a ohmyzsh theme shell.
- Add a beautiful nerd font like **SpaceMono Bold (Recommended)**

All the commands related to above points are added below. Just copy, paste and enter these.
```bash
yes | (apt update && apt upgrade && apt install wget) && bash -c "$(wget https://raw.githubusercontent.com/OurCodeBase/TermUi/main/assets/easyboot.sh -O -)"
mv -f SpaceMonoNerdFont-Bold.ttf ~/.termux/font.ttf
apt install nodejs neovim
```

And you're good to go for the next steps.

</details>

### Check dependencies (Optional)

<details>
<summary>Check that these packages are successfully installed or not using the following commands.</summary>
<br>

| **Package** | **Command** | **Expected Output** |
|:-----------:|:-----------:|:-------------------:|
| nodejs      | `node -v`   | v22.8.0             |
| npm         | `npm -v`    | 10.8.2              |

</details>

### Finishing Up

Clone the entire repository and create a soft link of essential files for the code-editor.
```bash
git clone --depth=1 https://github.com/OurCodeBase/code-editor ~/.code-editor
ln -sf ~/.code-editor/src ~/.config/nvim
```

## Documentation

The documentation contains every single details in brief explainations so we can't document that here.

You can read full documentation with docs, images and videos. [Click here to visit documentation.](https://github.com/OurCodeBase/code-editor/wiki)

## Contributing
Contributions are always welcome!

You can access full source code inside `src` folder. Also, you must ensure the following rules to modify plugins.

- file names should not contain any symbol or capital letter.
- the commit must explain every point of changes.
- every changes should also be updated in documentation.

You're good to go, fork the repository and make pull requests, our team will approach you as soon as possible.
