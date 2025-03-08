# function __auto_venv --on-variable PWD --description "Automatically activate Python virtual environment"
#     # Start from the current directory and go up
#     set -l dir (pwd)
#     set -l venv_dir ""
#
#     # Search for .venv directory
#     while test "$dir" != /
#         if test -d "$dir/.venv"
#             set venv_dir "$dir/.venv"
#             break
#         end
#         # Move up one directory
#         set dir (dirname "$dir")
#     end
#
#     # If a virtual environment is already active
#     if set -q VIRTUAL_ENV
#         # If we're not in the same project or no .venv found, deactivate
#         if test -z "$venv_dir" -o "$VIRTUAL_ENV" != "$venv_dir"
#             deactivate
#         end
#     end
#
#     # If .venv found and no virtual environment is active, activate it
#     if test -n "$venv_dir" -a -z "$VIRTUAL_ENV"
#         source "$venv_dir/bin/activate.fish"
#     end
# end

# Run the function when the shell starts
# __auto_venv
