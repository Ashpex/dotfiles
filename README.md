# dotfiles

## Keyboard backlight
- Basic usage is as simple as

```
kbdbacklight up
kbdbacklight down
kbdbacklight [ 0 | 1 | 2 | 3 ]
```

- i3 config:
```
# increase/decrease keyboard brightness
bindsym XF86KbdBrightnessUp exec kbdbacklight up
bindsym XF86KbdBrightnessDown exec kbdbacklight down 
```
- The scripts is available in the dotfiles. Just save somewhere in your PATH and enjoy. I went with the name kbdbacklight and used it in the examples and i3 config above, please be mindful to update those if you name it differently.

- Most Linux distributions encourage a practice in which each user has a specific directory for the programs he/she personally uses. This directory is called bin and is a subdirectory of your home directory. If you do not already have one, create it with the following command:

`[me@linuxbox me]$ mkdir bin`

- Move your script into your new bin directory:

- Add directories to your path with the following command, where directory is the name of the directory you want to add:

`[me@linuxbox me]$ export PATH=$PATH:directory`

- In this case, it is:

`[me@linuxbox me]$ export PATH=$PATH:~/bin`

Now, you are all set.
