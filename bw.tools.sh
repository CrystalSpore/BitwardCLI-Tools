# bitwarden unlock & generate BW_SESSION env variable
alias bwUnlock='export BW_SESSION=$(bw unlock --raw)'
# bitward search & get uri/username/passwd
function bwSearch() {
    if [ -z "$1" ]
    then
        echo "Search term required"
    else
        bw list items --search $1 | jq '.[] | {login} | select(.login!=null) | .[] | {uri: .uris[0].uri,username,password}'
    fi
}
# bitwarden lock (for completeness)
alias bwLock='bw lock'
