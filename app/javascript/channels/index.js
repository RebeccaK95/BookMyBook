// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

import { scrollTo } from "../packs/scroll_to.js"

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

scrollTo();
