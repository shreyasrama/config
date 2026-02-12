if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -xg PATH /opt/local/bin /opt/local/sbin $PATH


# pnpm
set -gx PNPM_HOME "/Users/shreyas/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
