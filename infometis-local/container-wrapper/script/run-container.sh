#!/usr/bin/env bash

echo 'Container instantiated.'

if [ $# -eq 0 ]; then

  $entrypoint
  echo 'Container wrapper execution completed.'
  exit 0

elif [ $1 == '--docs' ] 

  then 
    mkdir -p /container-wrapper/output/docs
    cp -R /container-wrapper/docs/* /container-wrapper/output/docs
	  echo 'Extracted docs folder.'
    exit 0
	
elif [ $1 == '--help' ] 

  then 
    cat /container-wrapper/docs/cli/help.txt
    exit 0
	
fi

for f in /container-wrapper/setup/*;
  do
    base=$(basename $f)
    if [ $1 == $base ]; then
      cp -R $f/* /container-wrapper/output/
      echo "Extraction of $base completed"
	  exit 0
	fi
  done;
	
"$@"
echo 'Container wrapper execution completed.'
