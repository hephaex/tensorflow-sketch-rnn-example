# tensorflow-sketch-rnn-example

## Quick Install

Launch GCE instance.
- 2vCPU, 4G Memory
- Debian GNU/Linux 9 (stretch)
- Allow HTTP traffic

Install prereq packages.
```
sudo -i
apt-get update
apt-get install -y build-essential python-pip unzip python-cairosvg git
pip install ipython==5.5.0 rdp==0.8 svgwrite==1.1.6 tensorflow==1.3.0 Flask==0.12.2
pip install magenta 
```

Download pre-trained models.
```
mkdir -p /opt/sketch_demo/models
cd /opt/sketch_demo/models
curl -OL http://download.magenta.tensorflow.org/models/sketch_rnn.zip
unzip sketch_rnn.zip
```

Install demo app.
```
cd $HOME
git clone https://github.com/enakai00/tensorflow-sketch-rnn-example
cp -a tensorflow-sketch-rnn-example/sketch_demo /opt/
cp /opt/sketch_demo/sketch_demo.service /etc/systemd/system/
```

This application provides a simple user authentication mechanism. You can change the username and password by modifying the following part in /opt/sketch_demo/auth_decorator.py.
```
USERNAME = 'username'
PASSWORD = 'passw0rd'
```

Launch the demo application.
```
systemctl daemon-reload
systemctl enable sketch_demo
systemctl start sketch_demo
systemctl status sketch_demo
```
