LOG_FILE="/opt/devops-project/scripts/install_log_SanzharK.txt"

echo "--- Start Update ---" | tee -a $LOG_FILE
sudo apt-get update -y >> $LOG_FILE 2>&1

echo "--- Install PHP, Git, Utilities ---" | tee -a $LOG_FILE
sudo apt-get install -y git curl unzip php-cli php-mbstring php-xml php-bcmath php-curl php-zip php-pgsql >> $LOG_FILE 2>&1

echo "--- Install Composer ---" | tee -a $LOG_FILE
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer >> $LOG_FILE 2>&1

echo "--- Verification ---" | tee -a $LOG_FILE
echo "PHP Version:" >> $LOG_FILE
php -v >> $LOG_FILE
echo "Composer Version:" >> $LOG_FILE
composer --version >> $LOG_FILE
echo "Git Version:" >> $LOG_FILE
git --version >> $LOG_FILE

echo "Done! Check $LOG_FILE"

