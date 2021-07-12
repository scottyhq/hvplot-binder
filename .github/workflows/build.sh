#!/bin/bash

echo "machine urs.earthdata.nasa.gov login $EARTHDATA_USER password test" > .netrc
chmod 0600 .netrc
python -c "import netrc; (ASF_USER, account, ASF_PASS) = netrc.netrc().authenticators('urs.earthdata.nasa.gov'); print(ASF_USER, ASF_PASS)"
