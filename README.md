# bashrc-context-finder


![License](https://img.shields.io/badge/license-MIT-green)

A script designed to enhance terminal skills, using fzf to extract context-appropriate commands from .bashrc aliases. Results display in a three-column view: Alias, Command, Description, and are directly executable.

You can view and download the script [here](./info.sh).

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)



## Introduction
> **EN** | [DE](#DE)  
I created this script to hone my Linux terminal skills, introducing a method to input descriptive words into the terminal and receive contextually appropriate commands. Utilizing fzf, it searches through aliases defined in .bashrc, enabling swift access based on contextual relevance. The aliases should ideally contain self-defined words that best describe their commands. If an alias contains the searched word, all related commands are displayed in a three-column layout within the fzf list: Alias, Command, and Description. Additionally, commands are directly selectable and executable from this list, and for commands like cd, cp, and mv, relevant paths can be intelligently selected through fuzzy search.

> **DE** | [EN](#EN)  
Ich habe dieses Skript entwickelt, um meine Fähigkeiten mit dem Linux-Terminal zu verbessern. Durch Eingabe beschreibender Worte ins Terminal werden zum Kontext passende Befehle ausgegeben. Es nutzt fzf, um in der .bashrc definierte Aliases zu durchsuchen, was einen schnellen und kontextbezogenen Zugriff ermöglicht. Die Aliases sollten idealerweise selbst definierte Worte enthalten, die den Befehl bestmöglich beschreiben. Enthält der Alias eines Befehls das gesuchte Wort, werden alle entsprechenden Befehle in einem 3-Spalten-Layout in der fzf-Liste angezeigt: Alias; Befehl; # Beschreibung. Zudem sind die Befehle dort direkt auswählbar und einsetzbar. Für gängige Befehle wie cd, cp und mv lassen sich auch direkt die Pfade sinnvoll über die Fuzzy-Suche auswählen.

## Installation

1. **Install `fzf`**:
   - On Debian/Ubuntu:
     ```bash
     sudo apt install fzf
     ```
   - On Fedora:
     ```bash
     sudo dnf install fzf
     ```
   - On Arch:
     ```bash
     sudo pacman -S fzf
     ```
   - On openSuse:
     ```bash
     sudo zypper install fzf
     ```

1. **Download the script**:
   - Download `info.sh`[here](https://github.com/theus-V/bashrc-context-finder/raw/main/info.sh) and choose "Save Link As..." to download the script directly to your computer.
   - Download `aliases.sh` [here](https://github.com/theus-V/bashrc-context-finder/blob/main/aliases.sh) and note that the aliases are in German.

2. **Include the scripts in your bash session**:
   - Move the downloaded scripts to a directory of your choice, for example, `~/scripts/`.
   - Add the following lines to your `.bashrc` file:
     ```bash
     source ~/scripts/info.sh
     source ~/scripts/aliases.sh
     ```

3. **Reload your `.bashrc`**:
   - Apply the changes by sourcing your `.bashrc`:
     ```bash
     source ~/.bashrc
     ```

## Usage

1. **For example, define the alias for 'mv' as you wish**
   ```bash
   alias pathrenamemove='mv' # The `mv` command in Unix-based systems is used to move files or directories from ...
   ```

2. **Invoke the script with a keyword**
   ```bash
   i <context keyword>
   ```
     ⤷ 
   "i pathrename"
   or
   "i rename"
   or
   "i move"
   or
   "i path"
   
   

3. **Select the desired command from the list**
   ```bash
   # Use arrow keys and Enter to select and execute
   ```

⟹ **Result:**

|    alias             |    command     |  description  |
|----------------------|----------------|---------------|
|pathrenamemove        |mv              | # loremipsum  |
|pathrenamemovesafety  |mv -i           | # ...         |

The commands will be shown and can be selected


## Contributing

Got a tweak or an improvement? Pop an issue and let’s enhance it. It's that simple.
