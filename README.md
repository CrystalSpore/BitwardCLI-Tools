# BitwardCLI-Tools
aliases/functions for using Bitwarden's CLI in a more streamlined fashion

## Usage
Just drop the contents of [`bw.tools`](bw.tools.sh) into your bashrc or zshrc (might work in other shells, but I know these 2 shells are compatible). Run `source` on your rc file (or restart), then you have access to the below commands.

---

### bwUnlock
Unlocks bitwarden CLI, & creates a new session environement variable that is stored to `BW_SESSION`, such that it is ready for future commands

### bwSearch \<searchTerm>
Uses bitwarden's list command to search for matching items, then filters down to the (first) uri, username, & password
* NOTE: `jq` is required for this command to work
* NOTE: this command currently only searches in the `items` category, but could be expanded to search other components in the future

### bwLock
This just exists for completeness, runs `bw lock`
