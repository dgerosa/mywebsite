# Upload this website...
MYWEB="davidegerosa.com"
#MYWEB="https://davidegerosa.com"
#MYWEB="davidegerosa.wordpress.com"
echo $MYWEB

# Download all the website
wget --convert-links -r "https://${MYWEB}"

# Upload website the department server
scp -r $MYWEB/* dg438@ssh.damtp.cam.ac.uk:public_html

# Store website on github
git add $MYWEB
git commit -m "Automatic commit from update_website.sh"
git push