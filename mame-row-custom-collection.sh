#!/usr/bin/env bash

HOME="$(eval echo ~$user)"
DATADIR="$HOME/RetroPie"
ROM_PATH="$DATADIR/roms"
COLLECTIONS_PATH="/opt/retropie/configs/all/emulationstation/collections"

function _usage(){
  echo ""
  echo "RetroPie MAME ROW Custom Collection Creater"
  echo ""
  echo "Creates EmulationStation Custom Collections for MAME Random Of the Week."
  echo "* note: Requires internet access to download romlist"
  echo ""
  echo "Usage: ${0} [-s] '<arcade mame-libretro>' [-c] '<current historic>'"
  echo ""
  echo "Examples:"
  echo "* Create/update collection for historic ROWs using mame-libretro roms"
  echo "${0} -s 'mame-libretro' -c 'historic'"
  echo ""
  echo "* Create/update collections for historic and current ROWs using arcade roms"
  echo "${0} -s 'arcade'"
  echo ""
}

while getopts ":s:c:" opt; do
  case ${opt} in
    s)
      OPT_SYSTEMS="$OPTARG"
      ;;
    c)
      OPT_COLLECTIONS="$OPTARG"
      ;;
    \?|h)
      _usage;
      exit 0
      ;;
  esac
done
shift $((OPTIND -1))

MROW_LIST=$(curl --fail -s https://raw.githubusercontent.com/asdfgasfhsn/retropie-mame-row/master/resources/rom_list.txt) || exit 1
SYSTEMS="${OPT_SYSTEMS:-arcade mame-libretro}"
COLLECTIONS="${OPT_COLLECTIONS:-CURRENT HISTORIC}"

for COLLECTION in ${COLLECTIONS[@]}; do
  case ${COLLECTION} in
    CURRENT|current)
    ROWLIST=$(for rom in ${MROW_LIST[@]};do echo ${rom};done | tail -1)
    CFG_NAME="mame-row-crnt"
    ;;
    HISTORIC|historic)
    ROWLIST=$(for rom in ${MROW_LIST[@]};do echo ${rom};done | head -n -1)
    CFG_NAME="mame-row-hist"
    ;;
    *)
    echo "[ERR] ${COLLECTION} is not a valid collection."
    break 1
    ;;
  esac

  CUSTOM_CONF="${COLLECTIONS_PATH}/custom-${CFG_NAME}.cfg"

  echo -n "Creating custom collection $CFG_NAME -> $CUSTOM_CONF:"
  echo -n '' > "${CUSTOM_CONF}";
  for rom in ${ROWLIST[@]}; do
    for system in ${SYSTEMS[@]}; do
      echo ${ROM_PATH}/${system}/${rom}.zip >> ${CUSTOM_CONF}
    done
  done
  echo " done";
done
