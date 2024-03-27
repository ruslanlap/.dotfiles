# dotfiles Repository using Dotbot

This repository contains my dotfiles managed using Dotbot.

## What are Dotfiles?

Dotfiles are configuration files used to personalize your system. They often start with a dot (hence the name), making them hidden in Unix-like operating systems.

## What is Dotbot?

Dotbot is a tool that makes the management of dotfiles simple and efficient. It allows you to organize your dotfiles neatly and deploy them easily across different machines.

## Structure

- [Instaliation](#installation)
- [Remote settings via SSH](#remote-settings-via-ssh)

## Usage

### Installation

1. Clone this repository:

    ```bash
    git clone --recursive https://github.com/ruslanlap/.dotfiles && cd .dotfiles && ./install
    ```

### Adding New Dotfiles

To add new dotfiles:

1. Place your dotfiles in the `./dotfiles` directory.

2. Update the `./install.conf.yaml` file to include paths to your new dotfiles.

3. Re-run the install script:

    ```bash
    ./install
    ```

### Updating Dotfiles

If you make changes to any dotfile:

1. Simply commit those changes to this repository.

2. Run the install script to deploy the changes:

    ```bash
    ./install
    ```

### Removing Dotfiles

If you want to remove dotfiles:

1. Remove the respective entries from the `./install.conf.yaml` file.

2. Run the install script:

    ```bash
    ./install
    ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


## Remote settings via SSH
change `PermitLocalCommand` to `yes` in `/etc/ssh/config`

add this to ~/.ssh/config
  ```
 PermitLocalCommand true
host 192.168.0.000
  user name_of_user
  port 22
  LocalCommand bash -c 'ssh -o PermitLocalCommand=no %n "which git >/dev/null && ([[ -d ~/.dotfiles ]] && (echo "Updating dotfiles on %h ..." && cd ~/.dotfiles && git pull -q && ./install >/dev/null) || (echo "Installing dotfiles on %h ..." && git clone --recursive -q https://github.com/ruslanlap/.dotfiles && ~/.dotfiles/install >/dev/null && ~/.dotfiles/./lsd-install))"' 
