# Explanation of Packages
A lot of this is for me when setting up a new dev environment

## Fonts:
- ttf-hack (hack font)

## Terminal:
- urxvt (terminal emulator)
- i3 (window manager)
- i3bar/lemonbar/polybar (bars)

## Development
- nvm (node version manager)
- rustup (rust manager)
- go
- neovim
  * plug (plugin manager)
  * python (pip install neovim / pip3 install neovim, or something similar)

## Shell
- zsh/oh-my-zsh

## Workflow
- rafi (application launcher)
- xstow (gnu stow replacement)

## Misc
- archey (display the distro logo & sys info)

## Useful commands
- `xset r rate [delay] [rate] xset r rate 250 30 in xinitrc // sets key repeat` 
- `xstow -target [home_dir] [package]`

## Troubleshooting notes
- Webpack
  * Increase max watchers in
- Typescript/vim
  * setcopy in vimrc (should already be set)
  * Run `:UpdateRemotePlugins` after installing 
- Input issues
  * f86-input-libinput (Solves some input issues)
- Focus IntelliJ with i3
  * If trying to focus intellij with I3 and you have to click the cursor to input. Restart i3 in place (with ctrl + shift + r) to regain functionality 
