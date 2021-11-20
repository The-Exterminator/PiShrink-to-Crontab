# PiShrink-to-crontab

- **1. Download both .sh files (You can skip 2a. and 3a.)** <br>
  - 1a. ``` git clone https://github.com/The-Exterminator/PiShrink-to-Crontab.git ``` <br>
  - 2b. ``` cd PiShrink-to-Crontab/ ``` <br>

- **2. Download and install PiShrink** <br>
  - 2a. ``` wget https://github.com/The-Exterminator/PiShrink-to-Crontab/blob/main/pishrink.sh ``` <br>
  - 2b. ``` chmod +x pishrink.sh ``` <br>
  - 2c. ``` mv pishrink.sh /usr/local/bin/ ``` <br>

- **3. Download and install Backup** <br>
  - 3a. ``` wget https://github.com/The-Exterminator/PiShrink-to-Crontab/blob/main/Backup.sh ``` <br>
  - 3b. ``` chmod +x Backup.sh ``` <br>
  - 3c. ``` mv Backup.sh /usr/local/bin/ ``` <br>

- **4. Change "BACKUP_PATH" and "BACKUP_NAME"** <br>
  - 4a. ``` nano /usr/local/bin/Backup.sh ``` <br>

- **5. chmod /YOU/BACKUP/FOLDER/** <br>
  - 5a. ``` chmod 755 /YOU/BACKUP/FOLDER/ ``` <br>

- **6. sudo nano /etc/crontab
  - 6a. ``` 59 23 * * 1 root /usr/local/bin/Backup.sh ``` <br>
  -   **(Makes backup Monday at 23.59) Or look <a href="https://crontab.guru" target="_blank">here</a> and set your own crontab** <br>

<br>
<h2> Thanks </h2>
<ul><li><p>To <a href="https://github.com/Drewsif/PiShrink" target="_blank">@Drewsif</a> : For his magical scripts!!! - 
           Read <a href="https://github.com/Drewsif/PiShrink#usage" target="_blank">here</a> for more information</p></li></ul>
