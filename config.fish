# silent intro
set -U fish_greeting ""

# include stuff in subdirs
set includes path exports aliases prompt

for file in $includes
  source ~/.config/fish/inc/$file.fish
end

# initialize rbenv
# have to use bash, doesn't work with fish
bash -c 'eval "$(rbenv init -)"' >/dev/null