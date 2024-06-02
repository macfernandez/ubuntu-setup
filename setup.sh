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

# TODO: add extensions
sudo snap install --classic code
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