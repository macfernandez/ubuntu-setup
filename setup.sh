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

# chrome
wget -O "${TMP_FOLDER}/google-chrome-stable_current_amd64.deb" \
    https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i "${TMP_FOLDER}/google-chrome-stable_current_amd64.deb"

# vscode & extensions
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
    davidanson.vscode-markdownlint

# docker
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
## add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# spotify
sudo snap install spotify

# python dependency & texlive & texmaker
sudo apt-get install \
    liblzma-dev \
    lzma \
    texlive-full \
    texmaker

# gimp & telegram & python & node
sudo apt install -y \
    gimp \
    telegram-desktop \
    python3-tk \
    nodejs

# pyenv
wget -O "${TMP_FOLDER}/install_pyenv.sh" \
    https://github.com/macfernandez/venv-creation/blob/main/install-pyenv.sh?raw=true
chmod +x "${TMP_FOLDER}/install_pyenv.sh"
bash "${TMP_FOLDER}/install_pyenv.sh"

rm -r $TMP_FOLDER