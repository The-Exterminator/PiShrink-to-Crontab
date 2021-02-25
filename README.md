# PiShrink-to-crontab

- **1. Download both .sh files (You can skip 2a. and 3a.)** <br>
  - 1a. ``` sudo git clone https://github.com/The-Exterminator/PiShrink-to-Crontab.git ``` <br>
  - 2b. ``` cd PiShrink-to-Crontab/ ``` <br>

- **2. Download and install PiShrink** <br>
  - 2a. ``` sudo wget https://github.com/The-Exterminator/PiShrink-to-Crontab/blob/main/pishrink.sh ``` <br>
  - 2b. ``` sudo mv pishrink.sh /usr/local/bin/ ``` <br>
  - 2c. ``` sudo chmod +x /usr/local/bin/pishrink.sh ``` <br>

- **3. Download and install Backup** <br>
  - 3a. ``` sudo wget https://github.com/The-Exterminator/PiShrink-to-Crontab/blob/main/Backup.sh ``` <br>
  - 3b. ``` sudo mv Backup.sh /usr/local/bin/ ``` <br>
  - 3c. ``` sudo chmod +x /usr/local/bin/Backup.sh ``` <br>

- **4. Change "BACKUP_PATH" and "BACKUP_NAME"** <br>
  - 4a. ``` sudo nano /usr/local/bin/Backup.sh ``` <br>

- **5. chmod /YOU/BACKUP/FOLDER/** <br>
  - 5a. ``` sudo chmod 755 /YOU/BACKUP/FOLDER/ ``` <br>

- **6. Insert this in "``` sudo nano /etc/crontab ```" (Makes backup Monday at 23.59)** <br>
  **Or look <a href="https://crontab.guru" target="_blank">here</a> and set your own crontab** <br>
  - 6a. ``` 59 23 * * 1 root /usr/local/bin/Backup.sh ``` <br>

<br>
<h2> Thanks </h2>
<ul><li><p>To <a href="https://github.com/Drewsif/PiShrink" target="_blank">@Drewsif</a> : For his magical scripts!!! - 
           Read <a href="https://github.com/Drewsif/PiShrink#usage" target="_blank">here</a> for more information</p></li></ul>
