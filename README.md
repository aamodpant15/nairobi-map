# Nairobi map

cd /Users/aamodpant/code/nairobi-map
./scripts/install_deps.sh
source .venv/bin/activate
python scripts/inventory_raw.py
python -m http.server 8000 --directory app
