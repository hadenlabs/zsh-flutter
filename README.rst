===========
zsh-flutter
===========

Functions and tools for zsh

.. code-block:: bash

    antibody bundle luismayta/zsh-flutter


|ci| |GitHub issues| |GitHub license|

.. |ci| image:: https://travis-ci.org/luismayta/zsh-flutter.svg
   :target: https://travis-ci.org/luismayta/zsh-flutter
.. |GitHub issues| image:: https://img.shields.io/github/issues/luismayta/zsh-flutter.svg
   :target: https://github.com/luismayta/zsh-flutter/issues
.. |GitHub license| image:: https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square
   :target: LICENSE

:Version: 0.0.0
:Web: https://github.com/luismayta/zsh-flutter
:Download: http://github.com/luismayta/zsh-flutter
:Source: http://github.com/luismayta/zsh-flutter
:Keywords: zsh-flutter

.. contents:: Table of Contents:
    :local:

Features
--------

* Task

Dependencies
------------

List of applications:

Installation
------------

`oh-my-zsh <https://github.com/robbyrussell/oh-my-zsh>`__ users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you're using
`oh-my-zsh <https://gitub.com/robbyrussell/oh-my-zsh>`__, install this
plugin by doing the following:

1. Go to your oh-my-zsh custom plugins directory -
   ``cd ~/.oh-my-zsh/custom/plugins``
2. Clone the plugin
   ``bash   git clone https://github.com/luismayta/zsh-flutter``\ bash
3. Edit your ``.zshrc`` and add
   ``plugins=( ... zsh-flutter )`` to your list of
   plugins
4. Open a new terminal and enjoy!

`antigen <https://github.com/zsh-users/antigen>`__ users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you're using `Antigen <https://github.com/zsh-lovers/antigen>`__,
install this plugin by doing the following:

1. Add ``antigen bundle luismayta/zsh-flutter`` to your
   ``.zshrc`` where you're adding your other plugins.
2. Either open a new terminal to force zsh to load the new plugin, or
   run ``antigen bundle luismayta/zsh-flutter`` in a
   running zsh session.
3. Enjoy!

`antibody <https://github.com/getantibody/antibody>`__ users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you're using `Antigen <https://github.com/getantibody/antibody>`__,
install this plugin by doing the following:

1. Add ``antibody bundle luismayta/zsh-flutter`` to your
   ``.zshrc`` where you're adding your other plugins.
2. Either open a new terminal to force zsh to load the new plugin, or
   run ``antibody bundle luismayta/zsh-flutter`` in a
   running zsh session.
3. Enjoy!

Contributing
------------

Contributions are welcome! After cloning the repository:

.. code-block:: console

    $ make environment
    $ make setup

Tests are run with ``make``, you can run the baseline environments before submitting a PR:

.. code-block:: console

    $ make test

Style checks and formatting are done automatically during commit courtesy of
`pre-commit <https://pre-commit.com>`_.


Support
-------

If you want to support this project, i only accept ``IOTA`` :p.

.. code-block:: bash

    Address: FTDCZELEMOQGL9MBWFZENJLFIZUBGMXLFVPRB9HTWYDYPTFKASJCEGJMSAXUWDQC9SJUDMZVIQKACQEEYPEUYLAMMD


Team
----

+---------------+
| |Luis Mayta|  |
+---------------+
| `luis mayta`_ |
+---------------+

License
-------

MIT

Changelog
---------

Please see `CHANGELOG`_ for more information what
has changed recently.

Contact Info
------------

Feel free to contact me to discuss any issues, questions, or comments.

* `Email`_
* `Twitter`_
* `GitHub`_
* `LinkedIn`_
* `Website`_
* `PGP`_

|linkedin| |beacon| |made|

Made with :coffee: and :pizza: by `luis mayta`_ and `hadenlabs`_.

.. Links
.. _`changelog`: CHANGELOG.rst
.. _`contributors`: AUTHORS
.. _`contributing`: CONTRIBUTING.rst

.. _`hadenlabs`: https://github.com/hadenlabs
.. _`luis mayta`: https://github.com/luismayta

.. _`Github`: https://github.com/luismayta
.. _`Linkedin`: https://www.linkedin.com/in/luismayta
.. _`Email`: slovacus@gmail.com
    :target: mailto:slovacus@gmail.com
.. _`Twitter`: https://twitter.com/slovacus
.. _`Website`: http://luismayta.github.io
.. _`PGP`: https://keybase.io/luismayta/pgp_keys.asc

.. Team:
.. |Luis Mayta| image:: https://github.com/luismayta.png?size=100
   :target: https://github.com/luismayta

.. Footer:
.. |linkedin| image:: http://www.linkedin.com/img/webpromo/btn_liprofile_blue_80x15.png
   :target: http://pe.linkedin.com/in/luismayta
.. |beacon| image:: https://ga-beacon.appspot.com/UA-65019326-1/github.com/luismayta/zsh-flutter/readme
   :target: https://github.com/luismayta/zsh-flutter
.. |made| image:: https://img.shields.io/badge/Made%20with-Zsh-1f425f.svg
   :target: http://www.zsh.org
