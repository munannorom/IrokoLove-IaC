add-content -path c:/users/munan/.ssh/config -value @'

Host $(hostname)
  HostName $(hostname)
  User $(user)
  IdentityFile $(identityfile)
'@