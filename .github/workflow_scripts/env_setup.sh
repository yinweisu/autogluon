function setup_build_env {
    python3 -m pip install flake8
}

function setup_build_contrib_env {
    python3 -m pip install -r $(dirname "$0")/../../docs/requirements_doc.txt
    python3 -m pip install git+https://github.com/zhanghang1989/d2l-book
}

function setup_mxnet_gpu {
    export MXNET_CUDNN_AUTOTUNE_DEFAULT=0
}

function install_common {
    python3 -m pip install --upgrade -e common/[tests]
}

function install_core {
    install_common
    python3 -m pip install --upgrade -e core/
}

function install_core_all {
    install_common
    python3 -m pip install --upgrade -e core/[all]
}

function install_core_all_tests {
    install_common
    python3 -m pip install --upgrade -e core/[all,tests]
}

function install_features {
    python3 -m pip install --upgrade -e features/
}

function install_tabular {
    python3 -m pip install --upgrade -e tabular/[tests]
}

function install_tabular_all {
    python3 -m pip install --upgrade -e tabular/[all,tests]
}

function install_text {
    python3 -m pip install --upgrade -e text/
}

function install_vision {
    python3 -m pip install --upgrade -e vision/
}

function install_forecasting {
    python3 -m pip install --upgrade -e forecasting/
}

function install_autogluon {
    python3 -m pip install --upgrade -e autogluon/
}