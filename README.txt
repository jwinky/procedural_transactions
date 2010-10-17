= procedural_transactions

* http://github.com/jwinky/procedural_transactions

== Description:

Procedural transaction is a gem that adds methods to ActiveRecord::Base for managing transactions
procedurally (i.e. without the ActiveRecord::Base.transaction method's block syntax.)

This was written for situations where transaction control is necessary but cannot be applied
using blocks, such as in a test setup/teardown.

== Synopsis:

To start a new transaction:

    ActiveRecord::Base.start_transaction

To rollback the current transaction:

    ActiveRecord::Base.rollback_transaction

WARNING: These methods operate on the currently-open transaction, whether or not you started it.

== Install:

The procedural_transactions gem in hosted on Gemcutter.org

    gem install procedural_transactions

In the appropriate rails environment, add:

    config.gem "procedural_transactions"

== Credits:

- Justin Wienckowski (github.com/jwinky)
- Kevin Fitzpatrick (github.com/kfitzpatrick)

== License:

(The MIT License)

Copyright (c) 2010 Justin Wienckowski

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.