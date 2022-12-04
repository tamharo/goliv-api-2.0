set -ev

apt-get update
apt-get install -yq git supervisor python python-pip python3-distutils
pip install --upgrade pip virtualenv


export HOME=/root
git clone https://github.com/tamharo/goliv-api-2.0.git /opt/app/goliv

useradd -m -d /home/pythonapp pythonapp

virtualenv -p python3 /opt/app/goliv/env
/bin/bash -c "source /opt/app/goliv/env/bin/activate"
/opt/app/goliv/env/bin/pip install -r /opt/app/goliv/requirements.txt

chown -R pythonapp:pythonapp /opt/app

cp /opt/app/goliv/python-app.conf /etc/supervisor/conf.d/python-app.conf

supervisorctl reread
supervisorctl update
