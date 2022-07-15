# PiShrink-to-crontab

The first thing you need to do is install pv. <br>
```sudo apt update && sudo apt install pv``` <br>

- **1. Download .sh files** <br>
  - 1a. ``` git clone https://github.com/The-Exterminator/PiShrink-to-Crontab.git ``` <br>
  - 2b. ``` cd PiShrink-to-Crontab/ ``` <br>

- **2. Install PiShrink and Backup** <br>
  - 2a. ``` chmod +x *.sh ``` <br>
  - 2b. ``` sudo mv *.sh /usr/local/bin/ ``` <br>
  
- **3. Change ```BACKUP_PATH="/media/Backup```** <br>
- **DO NOT CHANGE ```/$(get_codename)/${HOSTNAME}```** <br>
  - 3a. ``` sudo nano /usr/local/bin/Backup.sh ``` <br>

- **4. Delete folder** <br>
  - 4a. ``` cd ``` <br>
  - 4b. ``` sudo rm -r PiShrink-to-Crontab ``` <br>

- **5. chmod /YOU/BACKUP/FOLDER/** <br>
  - 5a. ``` chmod 755 /YOU/BACKUP/FOLDER/ ``` <br>

- **6. sudo nano /etc/crontab** <br>
  Insert -> ``` 59 23 * * 1 root /usr/local/bin/Backup.sh ``` <br>
   **(Makes backup Monday at 23.59) Or look <a href="https://crontab.guru" target="_blank">here</a> and set your own crontab** <br>

<br>
<h2> Thanks </h2>
<ul><li><p>To <a href="https://github.com/Drewsif/PiShrink" target="_blank">@Drewsif</a> : For his magical scripts!!! - 
           Read <a href="https://github.com/Drewsif/PiShrink#usage" target="_blank">here</a> for more information</p></li></ul>
