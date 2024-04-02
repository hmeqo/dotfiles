function prime_priority
    switch $argv[1]
        case "nvidia"
            set -x __NV_PRIME_RENDER_OFFLOAD 1
            set -x __GLX_VENDOR_LIBRARY_NAME "nvidia"
            set -x __VK_LAYER_NV_optimus "NVIDIA_only"
        case "*"
            echo "Only nvidia is supported."
    end
end

function __prime_priority_complete
    set -l line (commandline -o)
    if [ (count $line) -eq 1 ]
        echo -e "nvidia\tSet nvidia prime priority"
    end
end

complete -f -c prime_priority -a '(__prime_priority_complete)'
