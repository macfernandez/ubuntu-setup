# parameterize
TMP_FOLDER="./tmp"

mkdir -p $TMP_FOLDER

if ! command -v snap &> /dev/null
then
    echo "not installed"
    sudo apt install -y snapd
fi

sudo apt-get update
sudo apt-get ugrade

# check snap is installed

# chrome
wget -O "${TMP_FOLDER}/google-chrome-stable_current_amd64.deb" \
    https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i "${TMP_FOLDER}/google-chrome-stable_current_amd64.deb"

sudo snap install --classic code
code --install-extension \
    waderyan.gitblame \
    donjayamanne.githistory \
    mhutchie.git-graph \
    eamodio.gitlens \
    ms-toolsai.jupyter \
    ms-toolsai.vscode-jupyter-cell-tags \
    ms-toolsai.jupyter-keymap \
    ms-toolsai.jupyter-renderers \
    ms-toolsai.vscode-jupyter-slideshow \
    mathematic.vscode-latex \
    torn4dom4n.latex-support \
    tecosaur.latex-utilities \
    james-yu.latex-workshop \
    nickfode.latex-formatter \
    berublan.vscode-log-viewer \
    ms-python.vscode-pylance \
    ms-python.python \
    ms-python.debugpy \
    mechatroner.rainbow-csv \
    redhat.vscode-yaml \
    ms-azuretools.vscode-docker \
    ms-vscode-remote.remote-containers \
    rangav.vscode-thunder-client \
    ms-vscode-remote.remote-containers \
    davidanson.vscode-markdownlint


sudo snap install spotify

sudo apt-get install \
    liblzma-dev \
    lzma \
    texlive-full \
    texmaker

sudo apt install -y \
    gimp \
    telegram-desktop \
    python3-tk

wget -O "${TMP_FOLDER}/install_pyenv.sh" \
    https://github.com/macfernandez/venv-creation/blob/main/install-pyenv.sh?raw=true
chmod +x "${TMP_FOLDER}/install_pyenv.sh"
bash "${TMP_FOLDER}/install_pyenv.sh"

rm -r $TMP_FOLDER