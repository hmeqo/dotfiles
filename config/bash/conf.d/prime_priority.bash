prime_priority() {
    case $1 in
        "nvidia")
            export __NV_PRIME_RENDER_OFFLOAD=1
            export __GLX_VENDOR_LIBRARY_NAME="nvidia"
            export __VK_LAYER_NV_optimus="NVIDIA_only"
            ;;
        *)
            echo "Only nvidia is supported."
            ;;
    esac
}
