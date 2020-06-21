+++
title = "View Images on A Remote Machine"
author = ["remysucre"]
date = 2020-06-18
tags = ["linux", "tools"]
draft = false
aliases = "/log/ssh-image"
+++

First connect to remate machine with port-forwarding: `ssh -L
8000:localhost:8000 usr@machine.cs.school.edu`, `cd` to project directory, then
serve the whole directory with `python3 -m http.server &`. Use a web browser to 
connect to `http://0.0.0.0:8000`.
