if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Nelsonooij/Helpful.git /Helpful
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Helpful
fi
cd /Helpful
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
