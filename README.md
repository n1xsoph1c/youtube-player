# youtube-player
A terminal based youtube player

## Dependencies
- mpv
- youtube-dl

### Install MPV:
Visit their official site to install MPV: https://mpv.io/installation/

### Install Youtube-dl:

To install on **Debian Based Distros**:
```
$ sudo apt-get install youtube-dl
```

To install on **Arch Based Distros**:
```
$ sudo pacman -S youtube-dl
```

To install on **REDHAT Based Distros**:
```
$ sudo dnf install snapd
$ sudo ln -s /var/lib/snapd/snap /snap
$ sudo snap install youtube-dl
```

## How to use
Using **youtube-player** is easy. 


### Use from the directory:
First clone the repository:
```
$ git clone https://www.github.com/mrchocolat3/youtube-player.git
```

Then cd into the directory:
```
$ cd youtube-player
```

And run the script:
```
$ bash player.sh
```


### To use as command:
First clone the repository:
```
$ git clone https://www.github.com/mrchocolat3/youtube-player.git
```

Then cd into the directory:
```
$ cd youtube-player
```

Then make **player.sh** executable:
```
$ chmod +x player.sh
```

Then move **player.sh** to **/usr/bin/**:
```
$ sudo cp player.sh /usr/bin/player
```

And simply run **player** from your terminal.
