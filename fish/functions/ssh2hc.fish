function ssh2hc -d "Wrapper for ssh2hc through cloud desktop"
 ssh -A (ssh marclins.aka.corp.amazon.com "/apollo/env/envImprovement/bin/ssh2hc $argv[1] --print")
end
