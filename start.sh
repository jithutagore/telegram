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
echo "πΎπππ§π‘ππ πΎπππ₯π‘ππ£ Started...."
python bot.py
