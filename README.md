# PiShrink-to-crontab

- **1. Download .sh files** <br>
  - 1a. ``` git clone https://github.com/The-Exterminator/PiShrink-to-Crontab.git ``` <br>
  - 2b. ``` cd PiShrink-to-Crontab/ ``` <br>

- **2. Install PiShrink** <br>
  - 2a. ``` chmod +x pishrink.sh ``` <br>
  - 2b. ``` sudo mv pishrink.sh /usr/local/bin/ ``` <br>

- **3. Install Backup** <br>
  - 3a. ``` chmod +x Backup.sh ``` <br>
  - 3b. ``` sudo mv Backup.sh /usr/local/bin/ ``` <br>

- **4. Change "BACKUP_PATH" and "BACKUP_NAME"** <br>
  - 4a. ``` nano /usr/local/bin/Backup.sh ``` <br>

- **5. Delete folder** <br>
  - 5a. ``` cd ``` <br>
  - 5b. ``` sudo rm -r PiShrink-to-Crontab ``` <br>

- **6. chmod /YOU/BACKUP/FOLDER/** <br>
  - 6a. ``` chmod 755 /YOU/BACKUP/FOLDER/ ``` <br>

- **7. sudo nano /etc/crontab** <br>
  Insert -> ``` 59 23 * * 1 root /usr/local/bin/Backup.sh ``` <br>
   **(Makes backup Monday at 23.59) Or look <a href="https://crontab.guru" target="_blank">here</a> and set your own crontab** <br>

<br>
<h2> Thanks </h2>
<ul><li><p>To <a href="https://github.com/Drewsif/PiShrink" target="_blank">@Drewsif</a> : For his magical scripts!!! - 
           Read <a href="https://github.com/Drewsif/PiShrink#usage" target="_blank">here</a> for more information</p></li></ul>
