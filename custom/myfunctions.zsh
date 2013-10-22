function silent_in {
  echo $1 | convert $2 -encipher - -depth 8 png24:$3.png
}

function silent_out {
  echo $1 | convert $2 -decipher - $3
}

function tpbcopy {
  tmux showb > /tmp/temple.txt
}

function tpbpaste {
  cat /tmp/temple.txt | pbcopy
}

function removefiles {
  find . -type d -name '.git' -exec rm -rf {} \;
}

function tunes {
  osascript -e 'tell application "iTunes"' -e "$1 track" -e "end tell"
}

function gbrancher {
  git push origin origin:refs/heads/$1
  git fetch origin
  git branch --track $1 remotes/origin/$1
  git branch -a
}

function gtracker {
  git branch --track $1 remotes/origin/$1
  git branch -a
}


function passgen() {
  # openssl rand -base64 $1
  MATRIX='1234567890qwertyuiopasdfghjklzxcvbnm!@$QWERTYUIOPASDFGHJKLZXCVBNM'
  PASS=""
  n=1
  i=1
  [ -z "$1" ] && length=8 || length=$1
  [ -z "$2" ] && num=1 || num=$2
  while [ ${i} -le $num ]; do
    while [ ${n} -le $length ]; do
      PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
      n=$(($n + 1))
    done
    echo $PASS
    n=1
    PASS=""
    i=$(($i + 1))
  done
}

function create_dual_wall {
  convert -crop 50%x100% +repage $1 $2%d.jpg
}

function db_recreate {
  mysql -u root -e "DROP DATABASE $1"
  mysql -u root -e "CREATE DATABASE $1"
  rake db:migrate
  printf "COPY YOUR DATABASE LIKE SO: mysql -u root $1 < db/dump/$1_$(date +%Y\-%m\-%d).sql\n"
}

function chrome {
  open -a /Applications/Google\ Chrome.app/ --args --gpu-switching=force_integrated --ignore-gpu-blacklist --process-per-tab
}
