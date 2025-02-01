function clean_univirsal_env
    set -l envs (set -U | awk '{print $1}' | grep -v 'fish_')
    if not test -z "$envs"
        for env in $envs
            set -eU $env
            echo "removed $env"
        end
    end
end
