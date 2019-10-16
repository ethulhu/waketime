# waketime

a tool to log the time since a user either logged in, or woke the system from sleep.

## setup

to enable waketime and start logging, run:

```sh
$ waketime enable
```

this enables, for the current user,

- `waketime@{USER}.service` into systemd's system slice, to run after wake events.
- `waketime.service` into systemd's user slice, to run after the user first logs in.

to disable:

```sh
$ waketime disable
```

## building

the .deb packages are built using [bpkg](https://github.com/javajawa/bpkg).
