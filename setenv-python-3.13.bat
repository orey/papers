@echo off
set PYTHON3PATH=C:\ProgramData\orey\Software\python-3.13.4

rem set PYTHONHOME=%PYTHON3PATH%
set PYTHONPATH=%PYTHON3PATH%;%PYTHON3PATH%\Lib;%PYTHON3PATH%\Scripts
set PATH=%PYTHONPATH%;%PATH%

set proxy=http://127.0.0.1:3128

set http_proxy=%proxy%
set HTTP_PROXY=%proxy%
set https_proxy=%proxy%
set HTTPS_PROXY=%proxy%

set REQUESTS_CA_BUNDLE=C:\ProgramData\orey\home\cert\cacert.pem
set CURL_CA_BUNDLE=C:\ProgramData\orey\home\cert\cacert.pem
set SSL_CERT_DIR=C:\ProgramData\orey\home\cert
set SSL_CERT_FILE=C:\ProgramData\orey\home\cert\cacert.pem
rem set PYTHONHTTPSVERIFY=0
set PIP_CONFIG_FILE=C:\ProgramData\orey\home\pip.ini

echo Variables set
python --version
pip --version


