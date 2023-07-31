# Juliafromtar

**THIS PROJECT IS NO LONGER BEING MAINTAINED. SIMILAR FUNCTIONALITY IS
AVAILABLE AT https://taarn.srht.site/juliafromtar/README.html**

The purpose of this project is to provide .deb packages containing
the Julia programming language.

The .deb packages are produced using the https://github.com/GHTaarn/juliapt project.

## Usage (i.e. installing Julia)

Choose whether you wish to "download and install manually" or you wish to
"link the repository".

### Download and install manually

In the project source tree, find the .deb file that you wish to install;
in the following we will use
`juliafromtar_1.8.0-1_amd64.deb`. First step is to download the file to the
computer that you wish to install it on. Hereafter you go to the directory
where you have stored it and type:

```
sudo dpkg -i juliafromtar_1.8.0-1_amd64.deb
```

### Link the repository

Type the following in the `bash` commandline:

```
cp -i /etc/apt/sources.list . # Makes a backup of /etc/apt/sources.list in case something goes wrong
echo 'deb [trusted=yes] https://ghtaarn.github.io/juliafromtar stable/' | sudo dd conv=notrunc oflag=append of=/etc/apt/sources.list
sudo apt-get update
sudo apt-get install juliafromtar
```

Hereafter, any time you do an `apt upgrade`, the `juliafromtar` package
will be upgraded to the latest version.

*If you wish to use `LTS` instead of `stable`, just substitute `stable`
with `lts` in the above `bash` commands.*

## Issues

I have been using the .deb files manually installed for
several months now and have had no serious issues.

Please report issues in the issue tracker and of course if you are
knowledgable about .deb files and repositories and want to help fix some of
the warnings then that would be great. I am not a Debian packaging expert
and only wrote this because I wanted to use something like this myself.

