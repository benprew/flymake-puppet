flymake-puppet.el
==========================

An Emacs flymake handler for syntax-checking puppet using
[puppet-lint](https://rubygems.org/gems/puppet-lint).  Based on
Steve Purcell's
[flymake-coffe](https://github.com/purcell/flymake-coffee)

Installation
=============

If you choose not to use one of the convenient packages in
[Melpa][melpa] and [Marmalade][marmalade], you'll need to add the
directory containing `flymake-puppet.el` to your `load-path`, and then
`(require 'flymake-puppet)`. You'll also need to install
[flymake-easy](https://github.com/purcell/flymake-easy).

Usage
=====

Add the following to your emacs init file:

    (require 'flymake-puppet)
    (add-hook puppet-mode-hook 'flymake-puppet-load)

[marmalade]: http://marmalade-repo.org
[melpa]: http://melpa.milkbox.net

<hr>

