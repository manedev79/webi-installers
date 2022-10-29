#!/bin/sh

# shellcheck disable=SC2034
# "'pkg_cmd_name' appears unused. Verify it or export it."

__init_tflint() {
    set -e
    set -u

    ##################
    # Install tflint #
    ##################

    # Every package should define these 6 variables
    pkg_cmd_name="tflint"

    pkg_dst_cmd="$HOME/.local/bin/tflint"
    pkg_dst="$pkg_dst_cmd"

    pkg_src_cmd="$HOME/.local/opt/tflint-v$WEBI_VERSION/bin/tflint"
    pkg_src_dir="$HOME/.local/opt/tflint-v$WEBI_VERSION"
    pkg_src="$pkg_src_cmd"

    # pkg_install must be defined by every package
    pkg_install() {
        # ~/.local/opt/tflint-v0.42.0/bin
        mkdir -p "$(dirname "${pkg_src_cmd}")"

        # mv ./tflint-*/tflint ~/.local/opt/tflint-v0.42.0/bin/tflint
        mv ./tflint "${pkg_src_cmd}"
    }

    # pkg_get_current_version is recommended, but not required
    pkg_get_current_version() {
        # 'tflint --version' has output in this format:
        #       TFLint version 0.42.0
        #       + ruleset.terraform (0.2.0-bundled)
        # This trims it down to just the version number:
        #       0.42.0
        tflint --version 2> /dev/null |
            head -n 1 |
            cut -d ' ' -f 3
    }

}

__init_tflint
