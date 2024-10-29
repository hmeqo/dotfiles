function __proxy_on_complete
    set -l line (commandline -o)
    if [ (count $line) -eq 1 ]
        echo -e "clash\tSet proxy to Clash"
        echo -e "clash_verge\tSet proxy to Clash Verge"
        echo -e "clash_verge_rev\tSet proxy to Clash Verge Rev"
        echo -e "clash_rev\tSet proxy to Clash Verge Rev"
        echo -e "v2raya\tSet proxy to V2RayA"
        echo -e "v2raya_global\tSet proxy to V2RayA Global"
    end
end

complete -f -c proxy_on -a '(__proxy_on_complete)'
