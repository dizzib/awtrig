C = require \commander
_ = require \lodash
P = require \path
J = require \./package.json

config-home = process.env.XDG_CONFIG_HOME or P.join process.env.HOME, \.config
config-path = "#config-home/xawt.yml"

C.version J.version
C.usage '[Options]'
C.option '-c, --config-path [path]' "path to configuration file (default:#config-path)", config-path
C.option '-d, --dry-run' 'bypass command execute'
C.option '-v, --verbose' 'emit detailed trace for debugging'
C.parse process.argv

module.exports = C
