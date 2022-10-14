

# SYNC LOCAL VERSION OF WEBSITE TO GU-DOMAINS SERVER
rsync -alvr anly-501-project-elliotzli elliotzl@gtown.reclaimhosting.com:/home/elliotzl/public_html/

# PUSH GIT REPO TO THE CLOUD FOR BACKUP
DATE=$(date +"DATE-%Y-%m-%d-TIME-%H-%M-%S")
message="GITHUB-UPLOAD:$DATE";
echo "commit message = "$message; 
git add ./; 
git commit -m $message; 
git push

git config --global user.email "zl516@georgetown.edu"       
git config --global user.name "elliotzli"

hiih remove hiih