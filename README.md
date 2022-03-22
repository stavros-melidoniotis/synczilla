# synczilla

synczilla.sh is a shell script that automatically pushes/pulls Filezilla's site-manager entries from/to a mounted Google Drive location.

# Why I wrote this script?

So that I could have the same Filezilla site manager entries to both my PC and laptop without the need of manually updating them everytime.

# How it works

To use this script you need to:
1. Clone the repo
2. Have at least one Google account connected to your Linux machine ([how to](https://www.techrepublic.com/article/how-to-connect-ubuntu-18-04-to-your-google-account/))
3. Run `chmod u+x synczilla.sh` to give execution permission to the script
4. Run `./synczilla.sh <your-gmail-account> <action>`

`<your-gmail-account>` (required): one of the connected to your Linux maching Google accounts

`<action>` (required): can be either `pull` or `push`

## Notice
By default, Filezilla stores it's sitemanager.xml file in `~/.config/filezilla/sitemanager.xml` and that's also the location used by the script. If for any reason your sitemanager.xml file is stored somewhere else, then you have to specify the correct location by editing the path inside the script.
