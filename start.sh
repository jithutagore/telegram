if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/PachGit/charlie-chaplin.git /charlie-chaplin
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /charlie-chaplin
fi
cd /charlie-chaplin
pip3 install -U -r requirements.txt
echo "𝘾𝙝𝙖𝙧𝙡𝙞𝙚 𝘾𝙝𝙖𝙥𝙡𝙞𝙣 Started...."
python bot.py
