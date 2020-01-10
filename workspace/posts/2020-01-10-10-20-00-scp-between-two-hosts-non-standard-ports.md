---
title: SCP between two hosts with non-standard ports
slug: scp-between-two-hosts-non-standard-ports
date: 2019-01-10 10:20
---

This applies to the BSD version of SCP, so that means MacOS.

When using SCP to transfer files between two remote hosts which both have non-standard ports, the `-p` and `-P` flags will not help you. For this, you need to use the scp protocol format. In addition, you have to pass the `-3` arg, which transfers the files indirectly through your local machine, rather than directly between the source and destination machines.

```
scp -3 \
  scp://<user>@<source_hostname>:<port>/<path> \
  scp://<user>@<dest_hostname>:<port>/<path>
```
