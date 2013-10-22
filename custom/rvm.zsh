function rvmrc {
  echo "creating gemset for $1"
  rvm --create --rvmrc use $ruby19@$1
  check=`cat .rvmrc | grep $1`
  if [[ $check  == "" ]] then
    echo "rvmrc creation failed for $1"
  else
    echo "successfully created $check"
  fi
}
