# ES Custom Collections for MAME Random Of The Week Roms
Create EmulationStation custom collections for RetroPie [MAME Random Of the Week](https://retropie.org.uk/forum/category/16/mame-random-of-the-week).

The script creates the following collections;
- mame-row-crnt (Current ROW)
- mame-row-hist (All historic ROWs)


## Install Method: Add RetroPie Menu

Download the latest version of the script and icon to your RetroPie installation and make it executable;

    cd ~/RetroPie/retropiemenu/
    curl -GO# https://raw.githubusercontent.com/asdfgasfhsn/retropie-mame-row/master/mame-row-custom-collection.sh \
    && chmod +x mame-row-custom-collection.sh
    cd ~/RetroPie/retropiemenu/icons/
    curl -GO# https://raw.githubusercontent.com/asdfgasfhsn/retropie-mame-row/master/artwork/mame-row.png

### Optional: Add ES meta data for script

If you want the menu item to look "nice" exit out of EmulationStation and add the following xml snippet to the end of  `/opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml`;

    <game>
      <path>./mame-row-custom-collection.sh</path>
      <name>MAME ROW</name>
      <desc>Install and update MAME Random Of the Week Custom Collections.
      Note: Requires and active internet connection.
      Note: You will need to restart EmulationStation after running this script.</desc>
      <image>./icons/mame-row.png</image>
    </game>


Now start EmulationStation and enjoy.

## Install Method: Make It Your Own

Download the script to your RetroPie installation and make it executable;

    curl -GO# https://raw.githubusercontent.com/asdfgasfhsn/retropie-mame-row/master/mame-row-custom-collection.sh \
    && chmod +x mame-row-custom-collection.sh

Or you can clone the repo;

    git clone https://github.com/asdfgasfhsn/retropie-mame-row


See the script documentation for actual usage;

    ./mame-row-custom-collection.sh -h

    RetroPie MAME ROW Custom Collection Maker

    Creates EmulationStation Custom Collections for MAME Rom of the Week.
    * note: Requires internet access to download romlist

    Usage: ./mame-row-custom-collection.sh [-s] '<arcade mame-libretro>' [-c] '<current historic>'

    Examples:
    * Create/update collection for historic ROWs using mame-libretro roms
    ./mame-row-custom-collection.sh -s 'mame-libretro' -c 'historic'

    * Create/update collections for historic and current ROWs using arcade roms
    ./mame-row-custom-collection.sh -s 'arcade'

## Artwork
SVG files are located in the `artwork` folder for each collection;
- [mame-row-crnt](artwork/mame-row-crnt.svg)
- [mame-row-hist](artwork/mame-row-hist.svg)

## TODO
- add error output when no internet connection is found
- find a nice way to get script to run at bootup before ES starts
