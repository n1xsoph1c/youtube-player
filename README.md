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

## How to use - LINUX
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




## How to use - WINDOWS
NOTE: I am using VLC on windows. For some reason, VLC give can't play MRL error for some videos. 
I do not know how to fix it. But Most of the videos works!


First install **youtube-dl**
```
pip install youtube-dl
```

Then Add **VLC** to **PATH**
Then to run as search mode:
```
python player.py
```

Or to run as nomral player mode:
```
python player.py "Search Query"
```
