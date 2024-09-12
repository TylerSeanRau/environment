function begin_teal()
{
  echo '\033[38;5;38m'
}

function begin_yellow()
{
  echo '\033[38;5;226m'
}

function begin_red()
{
  echo '\033[38;5;196m'
}

function clear_color()
{
  echo '\033[00m'
}

function possible_chroot_prefix()
{
  echo "${debian_chroot:+($debian_chroot) }"
}

function git_parent()
{
  if git rev-parse --git-dir 1> /dev/null 2>&1
  then
    echo "$(basename "$(readlink -f "$(git rev-parse --git-dir 2> /dev/null)/../..")") "
  fi
}

function curdir_or_tilde()
{
  if [ "$HOME" == "$PWD" ]
  then
    echo '~'
  else
    basename "$PWD"
  fi
}

function git_abbrev_ref()
{
  if git rev-parse --git-dir 1> /dev/null 2>&1
  then
    echo "$(git rev-parse --abbrev-ref HEAD) "
  fi
}

function join_ps1()
{
  echo -en "$(possible_chroot_prefix)[$(begin_yellow)$(git_parent)$(clear_color)$(begin_red)$(git_abbrev_ref)$(clear_color)$(begin_teal)$(curdir_or_tilde)$(clear_color)]\$ "
}

PS1="\`join_ps1\`"
