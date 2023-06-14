DATA="za-traffic-2020"
WORK_DIR="/content"
pip install kaggle --upgrade
echo "{\"username\":\"jeremysu364\",\"key\":\"c989c13d0ac33503a2473e2e19526b15\"}" > kaggle.json
if [ ! -d ~/.kaggle ]; then
    mkdir ~/.kaggle
fi
if [ ! -d $WORK_DIR/dataset ]; then
    cp kaggle.json ~/.kaggle/
    chmod 600 ~/.kaggle/kaggle.json
    kaggle datasets download phhasian0710/$DATA
    unzip $DATA.zip -d $WORK_DIR/dataset
    rm $DATA.zip
fi
