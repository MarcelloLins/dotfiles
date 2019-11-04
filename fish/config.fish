# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Load Custom Functions
source $HOME/.config/fish/functions/ssh2hc.fish

# Paths
set -gx PATH /home/linuxbrew/.linuxbrew/bin/ $PATH

# SAM Variables
set -x SAM_ISENGARD_ROLE_NAME "Admin"
set -x SAM_REGION "us-east-1"
set -x SAM_REGION_SHORT "iad"
set -x SAM_ASSUME_ACCOUNT "465667093377"
set -x SAM_BUCKET "bonesbootstraplocal-iad-465667093377-marclins"
