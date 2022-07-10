# Some useful Linux system junk

Here you find scripts, systemd units, and other things that I've created for my Linux system.

Blog posts that reference things here:

https://www.doomd.net/lvm-and-you-zero-data-loss-lvm-caching-and-properly-configure-your-linux-box-to-get-the-most-out-of-ssd.html

## Installing whats here:

```
make Install
```
Then enable and start the systemd units:

```
systemctl enable <service>
systemctl start <service>
```
For each one.

## Whats here:
- boot-email.service
- boot-email.sh
    - Sends and email when the system boots


- elevators.service
- elevators.sh  
  - Sets the elevators for SSD's.


- trimit.sh
  - A script to be run via cron that runs fstrim on SSDs.


- Makefile
  - Make file to install everything

## License

All files are covered under the GNU General Public License v2.

(c) 2016 Derrik Walker v2.0, dwalker@doomd.net
