# bashrc-context-finder


![License](https://img.shields.io/badge/license-MIT-green)

A script designed to enhance terminal skills, using fzf to extract context-appropriate commands from .bashrc aliases. Results display in a three-column view: Alias, Command, Description, and are directly executable.

## Table of Contents
- [Introduction](#introduction)
- [Installation](#installation)
- [Usage](#usage)
- [Examples](#examples)
- [Contributing](#contributing)



## Introduction
> **EN** | [DE](#DE)  
I created this script to hone my Linux terminal skills, introducing a method to input descriptive words into the terminal and receive contextually appropriate commands. Utilizing fzf, it searches through aliases defined in .bashrc, enabling swift access based on contextual relevance. The aliases should ideally contain self-defined words that best describe their commands. If an alias contains the searched word, all related commands are displayed in a three-column layout within the fzf list: Alias, Command, and Description. Additionally, commands are directly selectable and executable from this list, and for commands like cd, cp, and mv, relevant paths can be intelligently selected through fuzzy search.

> **DE** | [EN](#EN)  
Ich habe dieses Skript entwickelt, um meine Fähigkeiten mit dem Linux-Terminal zu verbessern. Durch Eingabe beschreibender Worte ins Terminal werden zum Kontext passende Befehle ausgegeben. Es nutzt fzf, um in der .bashrc definierte Aliases zu durchsuchen, was einen schnellen und kontextbezogenen Zugriff ermöglicht. Die Aliases sollten idealerweise selbst definierte Worte enthalten, die den Befehl bestmöglich beschreiben. Enthält der Alias eines Befehls das gesuchte Wort, werden alle entsprechenden Befehle in einem 3-Spalten-Layout in der fzf-Liste angezeigt: Alias; Befehl; # Beschreibung. Zudem sind die Befehle dort direkt auswählbar und einsetzbar. Für gängige Befehle wie cd, cp und mv lassen sich auch direkt die Pfade sinnvoll über die Fuzzy-Suche auswählen.

## Installation

1. **Clone the repository**
   ```
   git clone https://github.com/yourusername/bashrc-context-finder.git
   ```

2. **Add the script to your `.bashrc`**
   ```
   echo "source ~/bashrc-context-finder/info.sh" >> ~/.bashrc
   ```

3. **Reload your bash configuration**
   ```
   source ~/.bashrc
   ```

## Usage
## Usage

1. **Define an alias for 'mv'**
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
⟹ Result:
|    alias             |    command     |  description  |
|pathrenamemove        |mv              | # loremipsum  |
|pathrenamemovesavety  |mv -i           | # ...         |

   # The commands will be shown and can be selected
   ```


## Contributing

Contributions are welcome! If you have suggestions for improvements, feel free to fork the repository and create a pull request. For major changes, please open an issue first to discuss what you would like to change.
