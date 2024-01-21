# Generate an automated Windows ISO image from the Linux terminal.
Windows ISO's can be patched with an Autounattend.xml file to make the setup process automatic.
Microsoft has extensive documentation on accomplishing this from a Windows environment, but information to get this done on Linux is less common.

This script is for anyone who needs automatic deployment of Windows VM's from the comfort of the Linux terminal.
This took me a good bit of research to figure out, but this script puts all the pieces together to make it easy peasy.

## Usage
```bash
git clone https://github.com/gbiz123/generate-automated-windows-iso-linux
sudo ./make-iso
```

## References
https://adminthing.blogspot.com/2020/06/modify-windows-ISO.html
https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/windows-setup-automation-overview?view=windows-11
