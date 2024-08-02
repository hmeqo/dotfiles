function clear_univirsal_env
  set -eU (set -U | awk '{print $1}' | grep -v 'fish_')
end
