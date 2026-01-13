# A Simple Command-Line Tool for Zoom

## Full command-line help

```
zm - Quickly Connect to a Zoom Meeting

Usage:
 zm [options] <command> (shortcut|id|zoom_url|how)

Commands:
 info        Show address book or details for a specific contact
 join        Join a meeting
 kill        Kill all Zoom processes of yours
 test <how>  Run a test, e.g. 'mic' or 'webrtc' (default)

Options:
 --mictest   Run a microphone test before joining meeting
 --dryrun    Run it through without Zoom actions
 --help      Display this help
 --version   Display version
 --debug     Extra debug outpu

Examples:
 zm info alice
 zm join alice
 zm join --mictest alice
 zm kill
 zm info

Configuration:
In order to use a shortcut (e.g. 'alice') to connect to a Zoom
meeting, an 'alice' entry that specifies the Zoom meeting ID and
the optional Zoom meeting password must be added to the address-book
file '$XDG_CONFIG_HOME/zm/zm-addressbook', where environment
variable 'XDG_CONFIG_HOME' defaults to '~/config'. If directory
'$XDG_CONFIG_HOME/zm/' does not exists, '.zoom/zm-addressbook' is
considered for backward compatibility reasons.
For example:

shortcut: alice
meeting: 123456789
password: ZzxYmrldQVVW09y0RYdwMDctcPVdE22O
comment: Meetings every Monday @ 10:00-11:00

Additional entries can be added the same way. There must be at
least one empty line inbetween entries.

Version: 0.1.0

Copyright: Henrik Bengtsson (2020-2026)
License: GPL (>= 3.0) [https://www.gnu.org/licenses/gpl.html]
Source: https://github.com/HenrikBengtsson/zm
```