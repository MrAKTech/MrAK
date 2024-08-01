if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MrAKTech/MrAK.git /MrAK
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MrAK
fi
cd /MrAK
pip3 install -U -r requirements.txt
echo "Starting MrAK...."
python3 bot.py
