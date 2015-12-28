# Jerry's Foods Lookup Quiz

A QBasic "game" for training oneself on the old Jerry's Foods lookup codes

This game was written in QBasic by Jordan Price on January 10, 1996.

## Prerequisites

Download and install [DOSBox](http://www.dosbox.com/download.php?main=1) for
your current operating system.

Download and unzip [QBasic version
4.5]http://www.qbasic.net/en/qbasic-downloads/compiler/qbasic-compiler.htm). Unzip the archive
`qb45.zip` and place on your hard drive in a directory known to you. When
unzipped, the files will be placed in the current directory.

```
mkdir qb45
mv qb45.zip qb45
cd qb45
unzip qb45.zip
```

## Installing QBasic

To install Qbasic 4.5 you need to run the DOSBox and mount a path on your host
drive.

Inside DOSBox, you will have a DOS terminal from which to execute commands.
Mount a directory on your host machine by running the following command. For
example, if this repository and the qb45 folder both live on a location on your
host machine under `/home/username/qbasic/` then run the following in the
DOSBox:

```
mount C /home/username/qbasic/
```

Now in the DOSBox terminal you can go type `C:` to go to the mounted point and
then run QB. Type QB to run the QBasic interpreter.

```
C:
cd qb45
QB
```

### Automating the mount and path setting

You can update the path to include the qb45 path and then QB can be run from
any directory within your DOSBox:

```
SET PATH=Z:\;C:\qb45\
```

These commands will have to be run each time you run DOSBox. You can have it
automatically set the mount point and the path to QB and start QBasic each time
you launch DOSBox to save time, by adding the following lines to your dosbox
config file (located in `~/.dosbox/dosbox-0.74.conf` on linux for example):

```
mount C /home/username/qbasic/
SET PATH=Z:\;C:\qb45\
QB
```

## Running the Program

Once QBasic is running, choose from the menu `File -> Open Program...` to
navigate to the `JERRYS.BAS` program file and press enter. Once loaded, press
`F5` to run the program.

You can also launch the game directly from the DOSBox terminal by running the
following:

```
cd JERRYS~1
QB /run JERRYS.BAS
```

In the game, you will be presented with a random produce item. Using the
keypad, type in the look-up code for that item and then press the `Page Down`
key on your keyboard (this key is an approximate location of the UPC button on
the old cash registers).

Press `F1` for help inside the game.

Press `ESC` to exit the game.

Have fun!!!

