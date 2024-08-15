info() {
    local prefix=$1
    local selected_entry
    local alias_list

    if [[ -n $prefix ]]; then
        alias_list=$(grep -P "^alias .*${prefix}.*=" ~/.bashrc | sed -E "s/^alias ([^=]+)='([^']+)'(\s*#.*)?/\1\t\2\t\3/")
        selected_entry=$(echo "$alias_list" | column -t -s $'\t' | fzf --height 40% --reverse --ansi)
    else
        echo "Bitte geben Sie einen Präfix an."
        return
    fi

    if [[ -n $selected_entry ]]; then
        local alias_name=$(echo "$selected_entry" | awk '{print $1}')
        local alias_command=$(echo "$selected_entry" | awk '{$1=""; print substr($0, 2)}' | cut -d '#' -f 1 | sed 's/\s*$//')
        local comment=$(echo "$selected_entry" | cut -d '#' -f 2- | sed 's/^\s*//')

        echo -e "Alias: \033[38;5;13m$alias_name\033[0m"
        echo -e "Befehl: \033[38;5;14m$alias_command\033[0m"
        echo -e "Beschreibung: \033[38;5;93m$comment\033[0m"


        local command=$(echo "$alias_command" | awk '{print $1}')
        local options=$(echo "$alias_command" | awk '{$1=""; print substr($0, 2)}' | sed 's/^ *//;s/ *$//')

        if [[ -n "$options" ]]; then
            alias_command="$command $options"
        else
            alias_command="$command"
        fi



        if [[ "$command" =~ ^(cp|mv|chmod|cd)$ ]]; then
            echo -e "\033[36mAusgangspunkt der Odysee: \033[0m"

		if [[ "$command" == "cd" ]]; then
			local source_path=$(find ~/ -type d | fzf --height 40% --reverse --ansi)  # Nur Verzeichnisse für cd
			echo "$source_path"
			
		else
			local source_path=$(find ~/ -type f | fzf --height 40% --reverse --ansi)  # Dateien für cp, mv, chmod
		fi

            case $command in
                mv)
                    echo -e "\033[35mOdyssee oder Metamorphose: \033[0m"  # Magenta für "Vaporwave Rose"
                    read -p "$(echo -e "\033[36mEntität verschieben (v) oder umbenennen (u)? \033[0m")" move_or_rename
                    echo ""
                    if [[ $move_or_rename == "u" ]]; then
			    echo -e "\033[36mKreiere die neue Identität der Entität:\033[0m"  # Cyan für "Vaporwave Türkis"
			    read new_name
                        alias_command="${command} ${options} '$source_path' '$(dirname "$source_path")/$new_name'"
                    elif [[ $move_or_rename == "v" ]]; then
                        echo -e "\033[36mZiel der Odysee: \033[0m"
                        local target_path=$(find ~/ -type d | fzf --height 40% --reverse --ansi)
                        alias_command="${command} ${options} '$source_path' '$target_path'"
                    fi
                    ;;
                cp|chmod)
                    echo "\033[36mZiel der Odysee: \033[0m"
                    local target_path=$(find ~/ -type d | fzf --height 40% --reverse --ansi)
                    alias_command="${command} ${options} '$source_path' '$target_path'"
                    ;;
                cd)
                    alias_command="${command} ${options} '$source_path'"
                    ;;
            esac
        fi

	orange="\033[38;5;208m"
	bold="\033[1m"
	reset="\033[0m"

	echo -e "${bold}${orange}Entfesseln wir die digitale Alchemie? (j/n): ${reset}"
	read execute  # Hier fehlte der Befehl zum Einlesen der Benutzereingabe

	if [[ $execute == "j" ]]; then
	    echo "Die digitale Alchemie beginnt!"
	    eval "$alias_command"  # Führt den Befehl aus, der in $alias_command gespeichert ist
	else
	    echo "Digitale Alchemie abgebrochen."
	fi

    else
        echo "Kein Alias gefunden für: $prefix"
    fi
}

alias i='info' # Meine Linux-Befehle (:

