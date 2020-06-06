# get session type
SESSION_TYPE="native"
if [[ `systemd-detect-virt` =~ ^lxc.* ]]
then
  SESSION_TYPE="lxc"
elif [[ -n $SSH_CLIENT ]]
then
  SESSION_TYPE="ssh"
fi

