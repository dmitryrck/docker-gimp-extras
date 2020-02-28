from ubuntu

run \
  apt update && \
  apt install -y gimp gimp-data-extras gimp-dcraw gimp-resynthesizer gimp-plugin-registry gimp-texturize && \
  rm -rf /var/lib/apt/lists/*
