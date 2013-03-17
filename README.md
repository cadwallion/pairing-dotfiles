# Dotfiles - Pairing Edition

I have recently started remote pairing on a regular basis, and find that my configurations for 
a pairing station are very different from my solo system, as the focus becomes less on my 
personal efficiency and more on the coding style and workflow of myself and my pair.  Therefore,
I decided that my pairing machine should have a new set of dotfiles to assist in setting up a
remote pairing station.

## Pair System Setup

If you are interested in how my pairing stations work, they operate on a tmux'd session of vim
that uses the vim Screen plugin to allow commands to be sent from one pane to another. This
allows things like line-based test macros to be possible without having to leave the vim pane in
tmux.

These configs were based on my personal dotfiles with significant improvements and reduction of 
cruft.  I expect further work to go into blending macros of my pairs.

## Contributing

This is designed to facilitate bootstrapping new remote pairs and to help with my remote pairing
system.  If you have a contribution, please feel free to submit a pull request for it. I :heart: 
open source.
