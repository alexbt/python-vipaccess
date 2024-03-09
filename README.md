forked from https://github.com/dlenski/python-vipaccess

updated to customize it for my needs: generate a SYMC code with qrcode, without the need to install anything.

```
docker build . -t vipaccess
```
```
docker run -it vipaccess

Generating request...
Fetching provisioning response from Symantec server...
Getting token from response...
Decrypting token...
Checking token against Symantec server...
Credential created and saved successfully: /root/.vipaccess
You will need the ID to register this credential: SYMC12345678
ID: SYMC12345678
Secret: 0123456789ABCDEF0123456789ABCDE
█████████████████████████████████████████
█████████████████████████████████████████
████ ▄▄▄▄▄ ██▀▀▄▄▄ █ █  ▀▄▄█▄█ ▄▄▄▄▄ ████
████ █   █ █▀███ ▀▄▀▄▄▀▀  ▀▄▄█ █   █ ████
...
████ █   █ ██  ▀█▄▄▄▀ ██▄ ▄█ ▄▄▄ ▀█▀▄████
████ █▄▄▄█ █▀▄ █▄▀▀█▀▄   ▀▄ ▄███▄▀▀▄▄████
████▄▄▄▄▄▄▄█▄█▄▄█▄█▄█▄▄▄████▄█▄██▄█▄█████
█████████████████████████████████████████
█████████████████████████████████████████
```