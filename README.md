# OpenTower-Nathaniel-Scuttlebug-Bandy
- opentower but it works on gms2 2024 and it has gmext-fmod

# Requirements

- [Pizza Tower on Steam](https://store.steampowered.com/app/2231450/Pizza_Tower) 

- [Latest release of Gamemaker Studio 2](https://gamemaker.io/en/download)

- [Steamworks SDK 155](https://partner.steamgames.com/downloads)

- [FMOD Engine](https://www.fmod.com/download)

This repository doesn't include any of the datafiles (FMOD, langs) or sprites. An [UndertaleModTool](https://github.com/krzys-h/UndertaleModTool/releases) script is included to extract everything needed from the `data.win`, and port the required files to the decomp folder.

# The Script

1. Make sure Pizza Tower is up to date, and open its `data.win` file in UndertaleModTool. Open the "Scripts" tab at the top of the window, and select "Run other script..."

<img src="github/guide1.png">

2. Go to the decomp's folder, and select the `PTdecompiler.csx` file.

<img src="github/guide2.png">

3. The script will ask you to select a folder. Select the decomp folder.

<img src="github/guide3.png">

4. It takes a while to dump every frame of every sprite. Give it about 15 minutes... Make sure it dumps this to the same folder the YYP file is located.
5. Run the `PizzaTower_GM2.yyp` in the *right version of GameMaker*. Open Extensions > Steamworks and change the "Steam SDK" location to wherever you put your Steamworks SDK. If that doesn't work, try going INTO the Steamworks folder and make that the path instead. Do the same for the FMOD extension.