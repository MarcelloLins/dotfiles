# Defined in - @ line 1
function preview --description alias\ preview=fzf\ --preview\ \'bat\ --color\ \"always\"\ \{\}\'
	fzf --preview 'bat --color "always" {}' $argv;
end
