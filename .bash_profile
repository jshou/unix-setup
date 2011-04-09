LANG=en_US.UTF-8
alias ls="ls -G"
alias ll="ls -Gl"
alias rm="rm -i"
export PATH=/usr/local/git/bin:$PATH

# Original: http://henrik.nyh.se/2008/12/git-dirty-prompt
#
# I've modified the prompt to be simple and clean; also, I colored the branch rather than the path
#   ~/dev/dir[master]$   # clean working directory
#   ~/dev/dir[master*]$  # dirty working directory

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
  }
  function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\[\033[0m\]\u@\h \W\[\033[1;33m\]$(parse_git_branch)\[\033[0m\]$ '

# git bash completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi


alias gitrm="git ls-files --deleted | xargs git rm"
alias mci="mvn clean install"
alias mcix="mvn clean install -Dmaven.test.skip"
alias gsra="git svn rebase --all"

export MAVEN_OPTS=-Xmx1024m
