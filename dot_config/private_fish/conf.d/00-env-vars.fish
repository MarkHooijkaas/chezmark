# This file is read as first config file,
# because conf.d is read before config.fish
#
# https://github.com/mattmc3/fishconf/blob/b5680bab2b7b4fdb913efd23712d3c3919653717/conf.d/01-env.fish
# env - set environment vars
#

# XDG will be set a universal vars only if not exists yet
# The fish_variables file should not be put under version control
# since the dirs can change between systems
if not set -q XDG_BASEDIRS_SET
    set_xdg_basedirs
    set -Ux XDG_BASEDIRS_SET true
end

# disable new user greeting
set fish_greeting

# Editor variables
set -gx PAGER less
set -gx VISUAL hx
set -gx EDITOR hx

# Browser
# switch (uname -s)
# case Darwin
#     set -gx BROWSER open
# end

# Add my bin directory to path.
# fish_add_path ~/bin

# add function subdirs to fish_function_path
# set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

# add completion subdirs to fish_completion_path
# set fish_complete_path (path resolve $__fish_config_dir/completions/*/) $fish_complete_path

# Man pages paths
# set -q MANPATH || set -gx MANPATH ''
# for manpath in
#     $__fish_data_dir/man \
#     /opt/homebrew/share/man \
#     /usr/local/share/man \
#     /usr/share/man

#     test -d $manpath && set -a MANPATH $manpath
# end

# # XDG apps
# set -gx SQLITE_HISTORY $XDG_DATA_HOME/sqlite_history
# set -gx LESSHISTFILE $XDG_DATA_HOME/lesshst
# set -gx GNUPGHOME $XDG_DATA_HOME/gnupg

# # My special dirs
# set -gx MY_PROJECTS $HOME/Projects
# set -gx my_plugins_path $__fish_config_dir/plugins

# # Reel plugins
# set -gx REEL_HOME $XDG_DATA_HOME/reel
