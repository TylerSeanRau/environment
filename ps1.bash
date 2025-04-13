function begin_teal()
{
  echo -n '\[\033[38;5;38m\]'
}

function begin_yellow()
{
  echo -n '\[\033[38;5;226m\]'
}

function begin_red()
{
  echo -n '\[\033[38;5;196m\]'
}

function clear_color()
{
  echo -n '\[\033[00m\]'
}

function possible_chroot_prefix()
{
  echo -n "${debian_chroot:+($debian_chroot) }"
}

function git_parent()
{
  if git rev-parse --git-dir 1> /dev/null 2>&1
  then
    echo -n "$(basename "$(readlink -f "$(git rev-parse --git-dir 2> /dev/null)/../..")") "
  fi
}

function curdir_or_tilde()
{
  if [ "$HOME" == "$PWD" ]
  then
    echo -n '~'
  else
    echo -n "$(basename "$PWD")"
  fi
}

function git_abbrev_ref()
{
  if git rev-parse --git-dir 1> /dev/null 2>&1
  then
    echo -n "$(git rev-parse --abbrev-ref HEAD) "
  fi
}

function join_ps1()
{
  possible_chroot_prefix
  echo -n '['
  begin_yellow
  git_parent
  clear_color
  begin_red
  git_abbrev_ref
  clear_color
  begin_teal
  curdir_or_tilde
  clear_color
  echo -n ']$ '
}

PROMPT_COMMAND='PS1="$(join_ps1)"'
