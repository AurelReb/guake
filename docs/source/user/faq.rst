Frequently Asked Questions
==========================

Manual keybinding
-----------------

If you want to trigger guake manually, for instance on system where ``libkeybinder3`` does not work,
you can register the following snippet in your window manager

.. code-block:: bash

    dbus-send --type=method_call --dest=org.guake3.RemoteControl \
        /org/guake3/RemoteControl org.guake3.RemoteControl.show_hide

You can use the simpler

.. code-block:: bash

    guake -t

But it will be slower since ultimately it sends the very same D-Bus message.

Note on Wayland
---------------

There are some reports of Guake not opening when a Wayland app or empty desktop is focused.
The issue has been reported on Ubuntu 17.10 LTS, Fedora 26 and Fedora 27.
For more context, see issue #1041.

The workaround is setting a manual keybinding as described above.
On Fedora 26, for example, this can be accomplished by going to *Settings > Keyboard* and
adding a new custom shortcut to execute :code:`guake -t`.

Note for Archlinux users
------------------------

This applies to users of Archlinux based distributions too and may be of help to non
Debian/Ubuntu users as well. Currently ``make install`` is optimized for Ubuntu, which
does not mean that it can not be used on other systems, but depending on your system
you may have to tell ``make install`` where to install guake
(the default for Ubuntu is ``/usr/local/lib/python<python version>/dist_packages/guake``).

So on Ubuntu the following commands are equivalent:

.. code-block:: bash

    $ sudo make install
    $ sudo make install PREFIX=/usr/lobal

On Archlinux this can be done by passing ``/usr`` as ``PREFIX``:

.. code-block:: bash

    $ sudo make install PREFIX=/usr

which will changes the installation destination to ``/usr/lib/python3.6/site-packages/guake``.

Note that the install script automatically determines to use  whether to use
``dist-packages`` or ``site-packaes``.
For more details checkout the official PKGBUILD at
`archlinux.org <https://www.archlinux.org/packages/community/any/guake/>`_, the PKGBUILD on
the `aur <http://aur.archlinux.org/packages/guake-git>`_ or this
`gist <https://gist.github.com/aichingm/ed35ba3b136be4424b1ac947207dbca3>`_.