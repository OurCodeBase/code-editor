
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

code-editor is based on `neovim` and it's language server protocol is installed and used through `nodejs` and `npm`. So you must have to install the dependencies.

### Install dependencies

If your device is non-rooted then use `sudo` infront of every command mentioned below. *`eg: apt install git nodejs neovim -y`*

|     **Platform**     | **Supported Package** | **Rooted** |         **Command**         |
|:--------------------:|:---------------------:|:----------:|:---------------------------:|
| Debian Based, Termux | deb                   |      ✅     | `apt install git nodejs neovim -y` |
| RHEL Based           | rpm                   |      ✅     | `dnf install git nodejs neovim -y` |
| Arch Based           | pkg.tar.zst           |      ✅     | `pacman -S git nodejs neovim -y`   |

### Check dependencies

Check that these packages are successfully installed or not using the following commands.

| **Packages** | **Command** | **Expected Results** |
|:------------:|:-----------:|:--------------------:|
| nodejs       | `node -v`   | v22.8.0              |
| npm          | `npm -v`    | 10.8.2               |

### Finishing Up

Clone the entire repository.
```bash
git clone --depth=1 https://github.com/OurCodeBase/code-editor ~/.code-editor
```

Create a soft link of essential files for the code-editor.
```bash
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
