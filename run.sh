# ************************************************************
#
# This step will install your project dependencies
#
#   Variables used:
#
#   Outputs:
#
# ************************************************************

cd $FLOW_CURRENT_PROJECT_PATH

if [[ ! -f ./package.json ]]; then
  echo -e "${ANSI_RED}No such file ./package.json!${ANSI_RESET}"
  flow_terminate 2
fi

flow_cmd "npm install" --echo --retry --assert
