file1=~/.bash_profile
if [ -f "$file1" ] && grep "mybash_profile.sh" "$file1"
  then echo "bashrc all good."
  else echo source `pwd`/mybash_profile.sh >> "$file1"
fi
