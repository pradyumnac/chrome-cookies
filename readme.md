# Chromecookies
Steal(take control of) your chrome cookies for any site. use thsi to curl from commandline 😄😄


# Pre-Requisites
- For system with gnome-keyring ( Linux)
- Chrome must be installed
- Python-Poetry & pyinstaller to build
- Make 


# Usage
```bash
chromecookies <url basepath>
# For example
> chromecookies https://www.youtube.com
```

# Build & Install
```bash
make
```

# Cleanup & Uninstall
```bash
make clean
```

```bash
make uninstall
```

The binary tar.gz file is built in release dir. Make automatically installs to user's binary folder

# Todo
- [x] Print out cookie data in nestscape cookie jar format. 
- [X] curl compatibility
- [ ] Reduce binar tar size
- [ ] Release in pip
- [ ] pipx compatibility
- [ ] More testing: Ubuntu Gnome only at present

# References  
[Stackoverflow](https://stackoverflow.com/questions/23153159/decrypting-chromium-cookies)  
[Dict to Nescape cookies](https://github.com/Neolyum/JsonToNetscape/blob/master/convert.py)

# Disclamer
The software is provided as is without any guarantee/assurance of correct output, security risks and/or
any loss arising due to use of this cli app. You take responsibility for any issues.
No support is promised. If you run into any issues with the software, feel free to open an issue/pr
in github 

Beware: anyone with run privledges to this script can steal you chrome cookies which
can lead to data theft, monetary loss or account hijack. Be careful about using this script

# License
MIT 
