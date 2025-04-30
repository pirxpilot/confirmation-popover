# Confirmation Popover

  Popover confirmation component built on top of [Popover](https://github.com/pirxpilot/popover).

  Live demo is [here](https://pirxpilot.github.io/confirmation-popover/).

## Installation

  Install with [npm]:

    $ npm install @pirxpilot/confirmation-popover

## Features

  - all the features of Popover / Tip

## Events

  - `show` the confirmation is shown
  - `hide` the confirmation is hidden
  - `cancel` the user closed the confirmation or cancelled
  - `ok` the user accepted

## API

### new ConfirmationPopover(msg, [title])

  Create a new popover with `msg` and optional `title`.

```js
var Confirmation = require('confirmation-popover');
var confirm = new Confirmation('This action cannot be undone.', 'Delete tobi?');
confirm.show(el);
```

### .focus(type)

  By default the "cancel" button is focused, however you
  may invoke `.focus('ok')`.

### .cancel(text)

  Set cancel button `text`.

### .ok(text)

  Set cancel ok `text`.

### .show(el, [fn])

  Attach to `el`, and invoke `fn` with
  a boolean representing the user's choice.

  When `fn` is omitted you may still utilize the `cancel` / `ok` events.

### ...

  View [Tip](https://github.com/pirxpilot/tip) and [Popover](https://github.com/pirxpilot/popover) for additional
  API documentation.

## License

  MIT

[npm]: https://www.npmjs.org/
