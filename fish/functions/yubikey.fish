function yubikey -d "Initializes Yubikey and Kerberos creds"
 eval "ssh-agent -s"
 mwinit && ssh-add 
end
