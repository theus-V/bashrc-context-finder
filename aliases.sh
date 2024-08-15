# ==============================
# Abschnitt: Aliases
# ==============================

#Rechte #chmod
alias RechteBerechtigungZugriffVoll='chmod 700'  # Volle Rechte für den Eigentümer, keine für andere
alias RechteBerechtigungZugriffLesen='chmod 444'  # Nur Leserechte für Eigentümer, Gruppe und andere
alias RechteBerechtigungZugriffStandardDatei='chmod 644'  # Standardberechtigung für Dateien
alias RechteBerechtigungZugriffGruppeLesenAusfuehren='chmod 750'  # Volle Rechte für den Eigentümer, Lesen und Ausführen für Gruppe
alias RechteBerechtigungZugriffGruppeVoll='chmod 770'  # Volle Rechte für Eigentümer und Gruppe, keine für andesre
alias RechteBerechtigungZugriffZuruecksetzen='chmod 777'  # Setzt die Rechte auf volle Zugriffsberechtigung für alle

#Wechseln #Dateiverzeichnis
alias PfadWechseln='cd'  # Wechselt das Verzeichnis
alias PfadWechselnHome='cd ~'  # Wechselt in das Home-Verzeichnis
alias PfadWechselnRoot='cd /'  # Wechselt in das Root-Verzeichnis
alias PfadWechselnZurueck='cd ..'  # Geht ein Verzeichnis zurück
alias PfadWechselnDokumente='cd ~/Documents'  # Wechselt zum Dokumente-Verzeichnis
alias PfadWechselnDownloads='cd ~/Downloads'  # Wechselt zum Downloads-Verzeichnis
alias PfadWechselnWeiterTiefer='cd $(ls -d */ | fzf)'  # Wechselt zum Downloads-Verzeichnis
alias ..='cd ..'
alias ...='cd $(ls -d */ | fzf)'
alias :='cd $(find . -type d | fzf)'



#Festplatte
alias FestplatteListe='lsblk'  # Listet alle Blockgeräte auf
alias FestplatteDetails='lsblk -f'  # Zeigt Details zu allen Blockgeräten, einschließlich Dateisystemen
alias FestplatteBaum='lsblk -t'  # Zeigt Blockgeräte in einem Baumformat
alias FestplatteNutzung='lsblk -b'  # Zeigt Blockgerätenutzung in Byte an
alias FestplatteAusfuehrlich='lsblk -a'  # Zeigt alle Blockgeräte, auch die ohne Zuordnung
alias FestplatteEigenschaften='lsblk -o NAME,FSTYPE,LABEL,UUID,MOUNTPOINT'  # Zeigt spezifische Eigenschaften der Blockgeräte
alias FestplatteScannen='lsblk -o +TRAN'  # Zeigt erweiterte Informationen zu Transportinterfaces
alias FestplatteMounts='lsblk -m'  # Zeigt Berechtigungen und Eigentümer von Mountpoints
alias FestplatteSmart='sudo smartctl -i /dev/sda'  # Zeigt S.M.A.R.T.-Informationen der Festplatte /dev/sda
alias FestplattePruefen='sudo fsck /dev/sda'  # Startet eine Überprüfung des Dateisystems auf /dev/sda
alias FestplattePartitionInfo='fdisk -l'  # Zeigt Informationen zu den Partitionen

#Netzwerk #IP
alias IPNetzwerkSchnittstellen='ip link show'  # Listet alle Netzwerkschnittstellen auf
alias IPNetzwerkFluss='ip -s link'  # Zeigt eingehende und ausgehende Pakete auf allen Schnittstellen
alias IPNetzwerkKonfig='ip addr show'  # Zeigt Konfigurationen aller Netzwerkinterfaces
alias IPmyip='curl http://ipecho.net/plain; echo'  # Zeigt die öffentliche IP-Adresse an, indem die Webseite ipecho.net abgerufen wird

#Liste #ls
alias ListeAuflisten='ls'  # Listet Dateien und Verzeichnisse auf
alias ListeDetailliert='ls -l'  # Zeigt detaillierte Informationen zu Dateien und Verzeichnissen
alias ListeVersteckt='ls -a'  # Listet auch versteckte Dateien und Verzeichnisse auf
alias ListeSehrDetailliert='ls -lah'  # Zeigt ausführliche Informationen inklusive Dateigrößen in lesbarem Format
alias ListeNachDatum='ls -lt'  # Sortiert Dateien und Verzeichnisse nach Änderungsdatum
alias ListeNachGroesse='ls -lS'  # Sortiert Dateien und Verzeichnisse nach Dateigröße
alias ListeRueckwaerts='ls -lr'  # Listet Dateien und Verzeichnisse in umgekehrter Reihenfolge
alias ListeVerzeichnisse='ls -ld */'  # Listet nur Verzeichnisse
alias ListeGruppiert='ls --group-directories-first'  # Listet zuerst Verzeichnisse, dann Dateien
alias ListeMitInode='ls -i'  # Zeigt Inode-Nummern neben Dateien und Verzeichnissen
alias ListeHumanReadable='ls -lh'  # Zeigt Dateigrößen in einer für Menschen leicht verständlichen Form
alias ListeFarbig='ls --color=auto'  # Zeigt Dateien und Verzeichnisse farbig, abhängig von der Art
alias ListeMitRechten='ls -l --color=auto'  # Kombiniert detaillierte Ansicht mit farbiger Ausgabe
alias Listll='ls -lah'  # Listet Dateien und Verzeichnisse im aktuellen Verzeichnis detailliert auf, inklusive versteckter Dateien

#VerschiebenUmbenennen #mv
alias VerschiebenUmbenennen='mv'  # Verschiebt oder benennt Dateien um
alias VerschiebenUmbenennenSicheres='mv -i'  # Fragt nach, bevor eine existierende Zieldatei überschrieben wird
alias VerschiebenUmbenennenAlle='mv *'  # Verschiebt alle Dateien aus dem aktuellen Verzeichnis
alias VerschiebenUmbenennenVersteckt='mv .*'  # Verschiebt alle versteckten Dateien und Verzeichnisse
alias VerschiebenUmbenennenNach='mv -t'  # Verschiebt mehrere Dateien in ein Zielverzeichnis

#kopieren #cp
alias Kopieren='cp'  # Kopiert Dateien und Verzeichnisse
alias KopierenSicheresKopieren='cp -i'  # Fragt nach, bevor eine existierende Zieldatei überschrieben wird
alias KopierenVerzeichnis='cp -r'  # Kopiert Verzeichnisse rekursiv
alias KopierenVersteckt='cp -a'  # Kopiert alle Dateien und Verzeichnisse, inklusive versteckter und spezieller Dateien
alias KopierenMitBackup='cp --backup'  # Erstellt ein Backup von existierenden Zieldateien, bevor diese überschrieben werden
alias KopierenMitStatus='cp -v'  # Zeigt den Fortschritt beim Kopieren der Dateien an

#python
alias python3='/usr/bin/python3.12'  # Verwendet explizit Python 3.12 für den Befehl 'python3'

#youtube yt-dl
alias yt-mp4='yt-dlp -f bestvideo+bestaudio --merge-output-format mp4 -o "/home/theus/Himmelsarchiv/Ästhetik/Theatron/0wnloads/%(title)s.%(ext)s"'  # Lädt das beste verfügbare Video und Audio von YouTube herunter und speichert es als MP4
alias yt-mp4-2='yt-dlp -f "bestvideo[height<=720]+bestaudio/best[height<=720]" --merge-output-format mp4 -o "/home/theus/Himmelsarchiv/Ästhetik/Theatron/0wnloads/%(title)s.%(ext)s"'  # Lädt das beste Video bis zu 720p und passendes Audio herunter und speichert als MP4
alias yt-mp4-3='yt-dlp -f worstvideo+worstaudio --merge-output-format mp4 -o "/home/theus/Himmelsarchiv/Ästhetik/Theatron/0wnloads/%(title)s.%(ext)s"'  # Lädt das schlechteste verfügbare Video und Audio herunter und speichert es als MP4
alias yt-mp3='yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata -o "/home/theus/Himmelsarchiv/Klangraum/0wnloads/%(title)s.%(ext)s"'  # Extrahiert Audio von YouTube-Videos, speichert es als MP3 mit der höchsten Qualität, fügt Metadaten und Thumbnails hinzu
alias yt='yt-dlp --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail --add-metadata -o "/home/theus/Himmelsarchiv/Klangraum/0wnloads/%(title)s.%(ext)s"'  # Alias von yt-mp3



#System #Update
alias SystemUpdateUpgrade='sudo dnf upgrade'  # Aktualisiert und upgradet alle Pakete über dnf
alias SystemUpdateRedundant='sudo dnf update && sudo dnf upgrade'  # Aktualisiert und upgradet alle Pakete über dnf
alias SystemUpdateBereinigenCleaner='sudo dnf autoremove; sudo dnf clean all'  # Entfernt ungenutzte Pakete und bereinigt den dnf-Cache

# Systemüberwachung
alias SystemTop='top'  # Zeigt aktuelle Leistungsdaten des Systems an
alias SystemProzesse='ps aux'  # Zeigt detaillierte Informationen zu allen laufenden Prozessen
alias SystemDienste='systemctl'  # Verwaltet und überprüft den Status von Systemdiensten
alias SystemJournal='journalctl -xe'  # Zeigt das System-Journal für Fehlerdiagnosen
alias SystemDmesg='dmesg'  # Zeigt Boot- und Systemmeldungen
alias SystemRessourcen='htop'  # Visualisiert Systemressourcen in Echtzeit
alias SystemProzessKillen='kill -9'  # Beendet einen Prozess sofort, PID folgt
alias SystemOffeneDateien='lsof'  # Listet alle offenen Dateien und die Prozesse, die sie geöffnet haben
alias SystemStartDienste='systemctl list-unit-files --type=service'  # Listet alle systemd-Dienste

# Hardware-Infos
alias SystemHardwareInfo='lshw'  # Zeigt detaillierte Information über die Hardware-Komponenten
alias SystemHardwareCPU='lscpu'  # Zeigt detaillierte Information über die CPU
alias SystemHardwareSpeicher='free -h'  # Zeigt Informationen über den verfügbaren und genutzten Speicher
alias SystemRessourcen='htop'  # Visualisiert Systemressourcen in Echtzeit
alias SystemProzessKillen='kill -9'  # Beendet einen Prozess sofort, PID folgt
alias SystemOffeneDateien='lsof'  # Listet alle offenen Dateien und die Prozesse, die sie geöffnet haben
alias SystemStartDienste='systemctl list-unit-files --type=service'  # Listet alle systemd-Dienste



#Besitzer #chown
alias BesitzerWechsel='chown'  # Ändert den Besitzer einer Datei oder eines Verzeichnisses
alias BesitzerGruppeWechsel='chown :gruppe'  # Setzt eine neue Gruppe für die Datei oder das Verzeichnis
alias BesitzerUndGruppe='chown benutzer:gruppe'  # Setzt neuen Besitzer und Gruppe für die Datei oder das Verzeichnis
alias BesitzerAlleDateien='chown benutzer *'  # Setzt neuen Besitzer für alle Dateien im aktuellen Verzeichnis
alias BesitzerVerzeichnis='chown -R benutzer:gruppe verzeichnis'  # Ändert rekursiv Besitzer und Gruppe eines Verzeichnisses und aller enthaltenen Dateien
alias BesitzerRoot='chown root:root'  # Setzt root als Besitzer und Gruppe für die angegebenen Dateien
alias BesitzerBenutzer='chown $USER:$USER'  # Setzt den aktuellen Benutzer und dessen Gruppe als Besitzer für die angegebenen Dateien
alias BesitzerRekursiv='chown -R benutzer:gruppe verzeichnis'  # Ändert rekursiv den Besitzer und die Gruppe eines Verzeichnisses und aller enthaltenen Dateien
alias BesitzerRootSetzen='chown root:root datei'  # Setzt root als Besitzer und Gruppe für die angegebene Datei
alias BesitzerAktueller='chown $USER:$USER datei'  # Setzt den aktuellen Benutzer und dessen Gruppe als Besitzer für die angegebene Datei
alias BesitzerAlleZuBenutzer='chown benutzer *'  # Ändert den Besitzer aller Dateien im aktuellen Verzeichnis zu 'benutzer'
alias BesitzerVersteckteZuBenutzer='chown benutzer .*'  # Ändert den Besitzer aller versteckten Dateien im aktuellen Verzeichnis zu 'benutzer'
alias BesitzerVerzeichnisseZuBenutzer='find . -type d -exec chown benutzer:gruppe {} +'  # Ändert den Besitzer aller Verzeichnisse im aktuellen Pfad zu 'benutzer'
alias BesitzerDateienZuBenutzer='find . -type f -exec chown benutzer:gruppe {} +'  # Ändert den Besitzer aller Dateien im aktuellen Pfad zu 'benutzer'
alias BesitzerGruppeAller='chown :gruppe *'  # Ändert die Gruppe aller Dateien im aktuellen Verzeichnis zu 'gruppe'
alias BesitzerRekursivGruppe='chown -R :gruppe verzeichnis'  # Ändert rekursiv die Gruppe aller Dateien und Verzeichnisse zu 'gruppe'
alias BesitzerSymbolisch='chown -h benutzer:gruppe symbolischer_link'  # Ändert den Besitzer eines symbolischen Links ohne dessen Ziel zu ändern
alias BesitzerNachUID='chown --from=uid:gid benutzer:gruppe datei'  # Ändert den Besitzer und die Gruppe einer Datei von spezifischer UID und GID

#dd ##schreiben
alias ddBackupPartition='sudo dd if=/dev/sda1 of=/home/theus/Backup/sda1_backup.img'  # Erstellt ein Image der Partition /dev/sda1 und speichert es als Backup
alias ddKopiereDisk='sudo dd if=/dev/sda of=/dev/sdb'  # Kopiert direkt alle Daten von einer Festplatte /dev/sda zu einer anderen /dev/sdb
alias ddErstelleBootUSB='sudo dd if=/path/to/ubuntu.iso of=/dev/sdx bs=4M status=progress'  # Erstellt einen bootfähigen USB-Stick von einer ISO-Datei, ersetze /dev/sdx mit dem entsprechenden Gerät
alias ddSichereMBR='sudo dd if=/dev/sda of=/home/theus/Backup/mbr_backup.img bs=512 count=1'  # Sichert den Master Boot Record (MBR) der Festplatte /dev/sda
alias ddWiederherstelleMBR='sudo dd if=/home/theus/Backup/mbr_backup.img of=/dev/sda bs=512 count=1'  # Stellt den MBR von einem Backup-Image wieder her
alias ddLoescheDisk='sudo dd if=/dev/zero of=/dev/sdx bs=1M'  # Überschreibt eine gesamte Festplatte /dev/sdx mit Nullen zur sicheren Löschung, ersetze /dev/sdx mit dem entsprechenden Gerät
alias ddTestSchreibgeschwindigkeit='sudo dd if=/dev/zero of=/tmp/testfile bs=1G count=1 oflag=dsync'  # Testet die Schreibgeschwindigkeit auf die Festplatte durch Schreiben einer großen Datei
alias ddTestLeseGeschwindigkeit='sudo dd if=/tmp/testfile of=/dev/null bs=1G'  # Testet die Lesegeschwindigkeit von der Festplatte durch Lesen einer großen Datei und Verwerfen der Daten

#Suche
alias SucheText='grep'  # Sucht Text in Dateien
alias SucheRegex='grep -E'  # Ermöglicht erweiterte reguläre Ausdrücke
alias SucheIgnoriere='grep -i'  # Ignoriert Groß- und Kleinschreibung bei der Suche
alias SucheZeile='grep -n'  # Zeigt die Zeilennummer jeder Übereinstimmung
alias SucheRekursiv='grep -r'  # Durchsucht rekursiv Verzeichnisse
alias SucheWort='grep -w'  # Sucht nur ganze Wörter
alias SucheCount='grep -c'  # Zählt die Anzahl der Zeilen, die dem Muster entsprechen

#Archiv
alias ArchivErstellen='tar -cvf'  # Erstellt ein neues Tar-Archiv
alias ArchivAuspacken='tar -xvf'  # Extrahiert ein Tar-Archiv
alias ArchivListen='tar -tvf'  # Listet den Inhalt eines Tar-Archivs auf
alias ArchivZip='tar -czvf'  # Erstellt ein komprimiertes Tar-Archiv mit Gzip
alias ArchivUnzip='tar -xzvf'  # Extrahiert ein mit Gzip komprimiertes Tar-Archiv

#Finden
alias FindenDatei='find . -type f -name'  # Findet Dateien nach Namen
alias FindenVerzeichnis='find . -type d -name'  # Findet Verzeichnisse nach Namen
alias FindenGross='find . -size +100M'  # Findet Dateien größer als 100MB
alias FindenAenderung='find . -mtime -1'  # Findet Dateien, die innerhalb der letzten 24 Stunden geändert wurden
alias FindenBerechtigung='find . -perm 0777'  # Findet Dateien mit spezifischen Berechtigungen

#Speicher
alias SpeicherZeigen='du -h'  # Zeigt Verzeichnisgrößen in menschenlesbarer Form
alias SpeicherMax='du -hs *'  # Zeigt Größen aller Elemente im aktuellen Verzeichnis
alias SpeicherSortiert='du -h | sort -h'  # Sortiert Ausgabe nach Größe

#rg #suche
alias SucheKrass='rg'  # Durchsucht Dateien und Verzeichnisse nach angegebenem Muster
alias SucheOhneGrossKlein='rg -i'  # Ignoriert Groß- und Kleinschreibung bei der Suche
alias SucheGanzesWort='rg -w'  # Sucht nach ganzen Wörtern, die dem Muster entsprechen
alias SucheMitRegex='rg -e'  # Ermöglicht die Verwendung regulärer Ausdrücke für komplexere Suchmuster
alias SucheUeberall='rg -uu'  # Durchsucht alle Dateien im Verzeichnis, auch versteckte und ignorierte Dateien
alias SucheNurTyp='rg --type'  # Begrenzt die Suche auf Dateien eines spezifischen Typs, z.B. --type=js für JavaScript-Dateien
alias SucheAusschliessen='rg --glob'  # Schließt Dateien oder Verzeichnisse von der Suche aus, die spezifischen Glob-Mustern entsprechen
alias SucheMitZeilennummer='rg -n'  # Zeigt die Zeilennummer mit den Suchergebnissen an
alias SucheZaehle='rg -c'  # Zählt die Anzahl der Treffer für das Suchmuster
alias SucheFarbig='rg --color always'  # Erzwingt farbige Ausgabe der Suchergebnisse
alias SucheSchnell='rg --mmap'  # Verwendet memory-mapped files für die Suche, was unter bestimmten Umständen schneller sein kann
alias SucheInVerzeichnis='rg -g'  # Ermöglicht das Filtern der Suche auf bestimmte Verzeichnisse, z.B. -g 'src/*'
alias SucheFunktionData='__'  # Suchfunktion
alias SucheFunktionInhalt='___'  # Inhaltssuchfunktion


# Netzwerkmanagement
alias NetzwerkDetails='ifconfig'  # Zeigt detaillierte Informationen zu Netzwerkschnittstellen
alias NetzwerkNeustart='sudo systemctl restart network.service'  # Startet die Netzwerkdienste neu
alias NetzwerkPruefen='ping -c 4 google.com'  # Führt einen Ping-Test zu google.com aus
alias NetzwerkStatistiken='nload'  # Zeigt Netzwerkverkehr und Bandbreitennutzung
alias NetzwerkFirewall='firewalld-cmd --list-all'  # Zeigt alle Firewalld-Zonen und Regeln
alias NetzwerkRouting='ip route show'  # Zeigt Routing-Tabelle

#Internet
alias NetzwerkInternetPing='ping google.com'  # Führt einen Ping-Test zu google.com aus

# Firewall Management
alias FirewallZustand='sudo firewall-cmd --state'  # Zeigt den Status der Firewall
alias FirewallRegeln='sudo firewall-cmd --list-all'  # Listet alle Firewall-Regeln auf
alias FirewallOffen='sudo firewall-cmd --zone=public --add-port='  # Öffnet einen Port, Portnummer folgt
alias FirewallSchliessen='sudo firewall-cmd --zone=public --remove-port='  # Schließt einen Port, Portnummer folgt

# DNF Paketmanagement
alias PaketSuchen='dnf search'  # Sucht in den Paketquellen nach einem Paket
alias PaketInfo='dnf info'  # Zeigt Informationen zu einem Paket
alias PaketInstallieren='sudo dnf install'  # Installiert ein Paket
alias PaketEntfernen='sudo dnf remove'  # Entfernt ein Paket
alias PaketUpdate='sudo dnf update'  # Aktualisiert alle installierten Pakete
alias PaketUpgrade='sudo dnf upgrade'  # Upgradet alle Pakete
alias PaketCheck='sudo dnf check'  # Überprüft auf Probleme in den installierten Paketen
alias PaketListe='dnf list installed'  # Listet alle installierten Pakete
alias PaketRepos='dnf repolist'  # Zeigt alle konfigurierten Repositories
alias PaketClean='sudo dnf clean all'  # Bereinigt den DNF-Cache
alias PaketAbhängigkeiten='dnf repoquery --requires'  # Zeigt Abhängigkeiten eines Pakets
alias PaketReverseDep='dnf repoquery --whatrequires'  # Zeigt Pakete, die von einem Paket abhängig sind
alias PaketHistory='dnf history'  # Zeigt die Historie von Paketinstallationen und Updates
alias PaketVerwaiste='dnf list --extras'  # Listet Pakete ohne verfügbare Quelle
alias PaketDuplikate='dnf repoquery --duplicates'  # Listet doppelte Pakete auf

# Updates
alias SicherheitUpdates='dnf updateinfo'  # Zeigt Sicherheitsupdates
alias SicherheitCheck='rpm -Va --nofiles --nodigest'  # Überprüft die Integrität aller installierten Pakete
alias SicherheitSelinuxFix='restorecon -Rv /'  # Stellt die korrekten SELinux-Kontexte wieder her

# Benutzerverwaltung
alias BenutzerListe='getent passwd'  # Listet alle Benutzer des Systems
alias BenutzerHinzufuegen='sudo useradd'  # Fügt einen neuen Benutzer hinzu
alias BenutzerLoeschen='sudo userdel'  # Löscht einen Benutzer
alias GruppeHinzufuegen='sudo groupadd'  # Fügt eine neue Gruppe hinzu
alias GruppeLoeschen='sudo groupdel'  # Löscht eine Gruppe

# Festplattenmanagement
alias FestplatteZustand='df -h'  # Zeigt den belegten und freien Speicherplatz auf allen eingehängten Dateisystemen
alias FestplatteDetails='sudo fdisk -l'  # Zeigt Details zu allen Partitionen
alias FestplatteAufräumen='sudo dnf autoremove; sudo dnf clean all'  # Bereinigt ungenutzte Pakete und den Cache

# Datensicherung und -wiederherstellung
alias BackupErstellen='tar -czvf'  # Erstellt ein komprimiertes Backup eines Verzeichnisses
alias BackupWiederherstellen='tar -xzvf'  # Stellt Daten aus einem komprimierten Backup wieder her
alias BackupSync='rsync -a'  # Synchronisiert Dateien/Direktorien sicher zwischen zwei Orten

# Spezielle Netzwerkoperationen
alias NetzwerkTrace='traceroute'  # Verfolgt den Pfad von Paketen zu einem Netzwerkhost
alias NetzwerkSniff='sudo tcpdump'  # Schnüffelt Netzwerkverkehr auf einer Schnittstelle
alias NetzwerkPorts='netstat -tuln'  # Zeigt alle offenen Ports

# Systemhärtung und Überwachung
alias SystemAudit='sudo aureport -a'  # Zeigt einen Audit-Report aller Aktivitäten
alias SystemSelinuxStatus='sestatus'  # Zeigt den Status von SELinux

# Entwicklertools
alias EntwicklerGitStatus='git status'  # Zeigt den Status des aktuellen Git-Repositories
alias EntwicklerGitAdd='git add .'  # Fügt alle geänderten Dateien zum Git-Index hinzu
alias EntwicklerGitCommit='git commit -m'  # Committet Änderungen im Git-Repository, Commit-Nachricht folgt
alias EntwicklerSicherheitUpdates='dnf updateinfo'  # Zeigt Sicherheitsupdates
alias EntwicklerSicherheitCheck='rpm -Va --nofiles --nodigest'  # Überprüft die Integrität aller installierten Pakete
alias EntwicklerSicherheitSelinuxFix='restorecon -Rv /'  # Stellt die korrekten SELinux-Kontexte wieder her

# Benutzerverwaltung
alias BenutzerPasswortSetzen='sudo passwd'  # Setzt das Passwort eines Benutzers
alias BenutzerGruppeHinzufuegenUser='sudo usermod -aG'  # Fügt einen Benutzer einer Gruppe hinzu

# Backup und Datensynchronisation
alias BackupRsync='rsync -avz'  # Synchronisiert Dateien sicher mit Archivierung und Kompression
alias BackupDifferential='rsync -avz --link-dest='  # Erstellt ein differenzielles Backup, Pfad folgt

# Umgebungsmanagement
alias UmgebungPythonVenv='python -m venv'  # Erstellt eine virtuelle Python-Umgebung, Verzeichnis folgt
alias UmgebungDockerPS='docker ps'  # Zeigt alle laufenden Docker-Container
alias UmgebungDockerImages='docker images'  # Zeigt alle Docker-Images

# Servermanagement
alias ServerSSH='ssh'  # Startet eine SSH-Verbindung, Benutzer und Host folgen
alias ServerSCP='scp'  # Kopiert Dateien über SSH, Pfade folgen
alias ServerNFSRestart='systemctl restart nfs-server'  # Startet den NFS-Server neu

# Logs und Überwachung
alias LogSyslog='cat /var/log/messages'  # Zeigt Systemmeldungen
alias LogDmesg='dmesg | tail'  # Zeigt die neuesten Kernel-Nachrichten
alias LogFollow='tail -f'  # Folgt den neuen Log-Einträgen einer Datei, Dateiname folgt

#Lesen
alias LesenDateiTextinhaltKonsole='cat' # Zeigt Textinhalt in der Konsole an

# Festplatten- und Dateiverwaltung
alias DateiSuche='find / -name'  # Sucht nach Dateien im gesamten Dateisystem, Dateiname folgt
alias DateiGroesse='du -sh'  # Zeigt die Größe eines Verzeichnisses oder einer Datei
alias DateiFestplatteIOStat='iostat'  # Zeigt I/O-Statistiken der Festplatten


# ==============================
# ==============================

# Netzwerkanalyse
alias NetzwerkSniff='sudo tcpdump'  # Erfasst Pakete auf einem Netzwerkinterface
alias NetzwerkScan='nmap'  # Scant Netzwerke nach offenen Ports und erfassten Diensten
alias NetzwerkScanDetails='nmap -sV'  # Scant Netzwerke und bestimmt Dienstversionen
alias NetzwerkTiefScan='nmap -p 1-65535 -T4 -A -v'  # Tiefenscan aller Ports mit Betriebssystemerkennung, Service-Versionen und Traceroute
alias NetzwerkVulnDetailScan='nmap -sV --script=vuln -oN vuln_scan_report.txt'  # Detaillierter Schwachstellenscan mit Ausgabe in eine Datei

# Sicherheitsprüfungen
alias SicherheitPortScan='nmap -p 1-65535'  # Scant alle Ports einer Ziel-IP
alias SicherheitVulnScan='nmap --script vuln'  # Scant auf bekannte Schwachstellen
alias SicherheitSSLCheck='openssl s_client -connect'  # Überprüft SSL/TLS eines Hosts, Host:Port folgen
alias SicherheitWebAudit='nikto -h'  # Führt einen umfassenden Sicherheitscheck einer Webanwendung durch, Host folgt
alias SicherheitNetzwerkAudit='sudo lynis audit system -Q'  # Führt ein systemweites Sicherheitsaudit durch

# Intrusion Detection
alias IDSLogs='tail -f /var/log/snort/alert'  # Verfolgt Snort-IDS-Alarme in Echtzeit
alias IDSStatus='sudo systemctl status snort'  # Überprüft den Status des Snort-Dienstes

# Exploitation-Tools
alias ExploitSearch='searchsploit'  # Sucht in der Exploit-Database nach Schwachstellen
alias ExploitMetasploitStart='msfconsole'  # Startet die Metasploit-Konsole
alias ExploitSQLInjectionTest='sqlmap -u'  # Testet eine URL auf SQL-Injection, URL folgt
alias ExploitFramework='msfconsole -q'  # Startet Metasploit Framework im Quiet-Modus
alias ExploitCustom='msfconsole -r'  # Startet Metasploit mit einem benutzerdefinierten Skript, Skriptpfad folgt


# Passwort-Cracking
alias CrackZip='fcrackzip -u -D -p'  # Knackt ZIP-Dateien, Pfad zu Wörterbuch und ZIP-Datei folgen
alias CrackMD5='hashcat -m 0 -a 0'  # Knackt MD5-Hashes, Pfad zu Hashliste und Wörterbuch folgen
alias CrackSSH='hydra -t 4 -l user -P /path/to/passlist.txt -vV ssh://'  # SSH-Passwort-Cracking, Host folgt
alias CrackSSHComplex='hydra -L userlist.txt -P passlist.txt -t 4 -u -vV -o ssh_cracked.txt ssh://'  # SSH-Passwort-Cracking mit Benutzerliste, Ausgabe in Datei

# Web-Sicherheit
alias WebSpider='wget --spider -r'  # Durchsucht eine Website rekursiv ohne Download, URL folgt
alias WebDirBust='dirb'  # Startet ein Directory-Busting auf einer Webanwendung, URL folgt
alias WebXSSCheck='xsser -u'  # Überprüft eine URL auf XSS-Anfälligkeit, URL folgt
alias WebSecurityScan='wpscan --url'  # Führt einen Sicherheitsscan von WordPress-Sites durch, URL folgt
alias WebSpiderDeep='wget --mirror -p --convert-links -P ./LOCAL-DIR'  # Spiegelt eine gesamte Website rekursiv für Offline-Analyse

# Forensik-Tools
alias ForensicImageInfo='exiftool'  # Zeigt Metadaten von Bildern und anderen Dateitypen
alias ForensicDisk='autopsy'  # Startet Autopsy für forensische Analyse einer Festplatte
alias ForensicRecover='foremost -t all -i'  # Stellt gelöschte Dateien wieder her, Image-Datei folgt

# Anonymität und Privatsphäre
alias AnonymTOR='tor'  # Startet den TOR-Client
alias AnonymVPNStart='openvpn --config'  # Startet eine VPN-Verbindung, Konfigurationsdatei folgt
alias AnonymProxychains='proxychains'  # Führt Befehle über Proxychains aus, Befehl folgt
alias AnonymTorRouting='proxychains torify'  # Führt Befehle über TOR mit Proxychains aus, Befehl folgt
alias EncryptFolder='gpg -c --cipher-algo AES256'  # Verschlüsselt einen ganzen Ordner mit AES-256, Ordnerpfad folgt

# Skripting und Automation
alias AutomatePython='python -u'  # Führt ein Python-Skript unbuffered aus, Skript-Pfad folgt
alias AutomateBash='bash -x'  # Führt ein Bash-Skript mit Debug-Ausgabe aus, Skript-Pfad folgt

# Verschlüsselung und Datenschutz
alias EncryptFile='openssl enc -aes-256-cbc -salt -in'  # Verschlüsselt eine Datei, Dateipfad folgt
alias DecryptFile='openssl enc -d -aes-256-cbc -in'  # Entschlüsselt eine Datei, verschlüsselter Dateipfad folgt

# Penetration Testing Frameworks
alias PenTestStartOWASPZAP='owasp-zap'  # Startet OWASP ZAP für Webanwendungstests
alias PenTestStartBurp='burpsuite'  # Startet Burp Suite für umfassende Webanwendungstests
alias PenTestAutomate='python3 /path/to/pen_test_script.py'  # Führt ein angepasstes Penetrationstest-Skript aus
alias PenTestNetworkAutomate='bash /path/to/network_test_script.sh'  # Führt ein Netzwerkpenetrationstest-Skript aus

# Systemüberwachung und Log-Analyse
alias LogAnalyzeAdvanced='cat /var/log/syslog | grep -i error | less'  # Filtert und analysiert Logs nach Fehlern
alias SystemWatchConfig='inotifywait -m -r -e modify,create,delete /etc/'  # Überwacht Änderungen in Konfigurationsdateien

# Entwicklung und Sicherheitstests von APIs
alias APIFuzzTest='wfuzz -c -z file,wordlist.txt --hc 404 http://api_target/fuzz'  # Fuzz-Testing einer API, Ziel-URL folgt
alias APISecurityScan='zap-api-scan.py -t'  # Führt eine API-Sicherheitsanalyse durch, API-URL folgt

# Bash und Shell-Konfigurations-Aliase

# Neuladen der Bash-Konfiguration
alias ShellTerminalKonsoleNeuLadenBashrc='source ~/.bashrc'  # Lädt die .bashrc Konfiguration neu
alias reload='source ~/.bashrc'  # Lädt die .bashrc Konfiguration neu

# Bearbeiten wichtiger Konfigurationsdateien
alias ShellTerminalKonsoleEditBashrc='nano ~/.bashrc'  # Öffnet die .bashrc Datei im Editor
alias ShellTerminalKonsoleEditBashProfile='nano ~/.bash_profile'  # Öffnet die .bash_profile Datei im Editor
alias ShellTerminalKonsoleEditProfile='nano ~/.profile'  # Öffnet die .profile Datei im Editor

# Hilfsfunktionen für die ShellTerminalKonsole-Umgebung
alias ShellTerminalKonsoleAliasListe='alias'  # Listet alle definierten Aliase auf
alias ShellTerminalKonsoleUmgebungsvariablen='env'  # Zeigt alle Umgebungsvariablen
alias ShellTerminalKonsoleUmgebungsvariableSetzen='export'  # Setzt eine neue Umgebungsvariable, Nutzung: Shell NAME=Wert

# Kurzbefehle für das Management von Sessions und Jobs
alias ShellTerminalKonsoleJobsListe='jobs -l'  # Listet alle aktuellen Jobs mit Detailinformationen
alias ShellTerminalKonsoleJobVordergrund='fg'  # Bringt einen Job in den Vordergrund, Nutzung: Shell %[Jobnummer]
alias ShellTerminalKonsoleJobHintergrund='bg'  # Setzt einen gestoppten Job im Hintergrund fort, Nutzung: Shell %[Jobnummer]
alias ShellTerminalKonsoleJobStoppen='kill -STOP'  # Stoppt einen Job, Nutzung: Shell %[Jobnummer]
alias ShellTerminalKonsoleJobFortsetzen='kill -CONT'  # Setzt einen gestoppten Job fort, Nutzung: Shell %[Jobnummer]

# Schnelles Verlassen und Neustarten von Bash-Sitzungen
alias ShellTerminalKonsoleBeenden='exit'  # Beendet die aktuelle Bash-Sitzung
alias ShellTerminalKonsoleNeustart='exec bash'  # Startet die Bash neu in der aktuellen Terminal-Sitzung

# Funktion zur Sicherung und Wiederherstellung der .bashrc
alias ShellTerminalKonsoleBackupBashrc='cp ~/.bashrc ~/.bashrc.bak'  # Erstellt ein Backup der .bashrc
alias ShellTerminalKonsoleRestoreBashrc='cp ~/.bashrc.bak ~/.bashrc; source ~/.bashrc'  # Stellt das Backup der .bashrc wieder her und lädt es

# Bash-Geschichte
alias ShellTerminalKonsoleHistorieLeeren='history -c'  # Löscht die Bash-Historie
alias ShellTerminalKonsoleHistorieAnzeigen='history'  # Zeigt die Bash-Befehlshistorie

# Einfaches Ein- und Ausblenden von Dateien
alias ShellTerminalKonsoleVersteckteDateienAnzeigen='ls -a'  # Zeigt alle Dateien, einschließlich versteckten Dateien
alias ShellTerminalKonsoleDateiVerstecken='chattr +i'  # Macht eine Datei unveränderlich, Nutzung: Shell Dateiname
alias ShellTerminalKonsoleDateiSichtbarMachen='chattr -i'  # Macht eine Datei veränderlich, Nutzung: Shell Dateiname
