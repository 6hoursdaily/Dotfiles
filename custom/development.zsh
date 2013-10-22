alias virb='VIRB=pry rails c'

function dbreset {
  ~/Codes/$1
  powder down
  rake db:reset
  rake $2
  powder up
}

function convert2haml {
  # FILES=`ls ~/Codes/cabvisor/app/views/$1/*.erb`
  for f in $1/*.erb
  do
    echo "Processing file $f..."
    html2haml -e --trace --unix-newlines $f "${f%.erb}.haml"
    rm $f
  done
}
