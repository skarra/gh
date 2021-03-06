function gh
  set git_host github.com
  set -l repo ""

  if [ (count $argv) -ne 2 ]
    echo "USAGE: gh [user] [repo]"
    return -1
  end

  set user $argv[1]
  set repo $argv[2]

  set -l path $HOME/src/$git_host/$user/$repo
  if not test -d $path
    git clone git@$git_host:$user/$repo.git $path
  end

  cd $path
end
