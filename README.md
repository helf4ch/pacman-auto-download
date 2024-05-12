# Pacman Auto Download

Automaticly downloads packages for further ease update.

Updates downloading are automatically **postponed** under unfavorable conditions:
- 🔋 The **battery** has less than 50% of charge.
- 💸 networkmanager is installed, and the **connection** is guessed as metered.
- 🔒 The package database has a **lock** younger than a day, and older than boot time. Otherwise the lock is automatically removed.

## Idea

Recently I was searching how can I make my life easier with pacman.
Downloading all packages might take a lot of time (cause I forget to update...),
and sometimes I need updates right now. I saw original repo and didn't like the 
idea to run updates automatically. But downloading it automatically and installing 
**manualy** is a different thing, and it's more safely. So thats why it's here!

## Installing

Clone this repo:

```sh
git clone https://github.com/helf4ch/pacman-auto-download.git
```

Install package:

```sh
cd package; makepkg -si
```

Done!

## Inspecting status

Of the **service**:
```sh
systemctl status pacman-auto-download
```

Of the **timer**:
```sh
systemctl list-timers pacman-auto-download
```

