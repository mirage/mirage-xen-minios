This repository contains the scripts to install the library dependencies required
by the MirageOS Xen backend.  It contains:

* An unofficial fork of Mini-OS, a small operating system kernel that
  runs as a Xen guest. Mini-OS is part of Xen, but for convenience the
  non-Mini-OS parts have been deleted for this library.
  <https://github.com/talex5/xen/releases/tag/minios-v0.1>

* OpenLibM, from the upstream master, but forked in order to have a
  stable tag while waiting for an upstream release.
  <https://github.com/talex5/openlibm/releases/tag/v0.3.1-tal1>
