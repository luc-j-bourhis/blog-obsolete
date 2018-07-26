# Kramdown monkey-patching
module Kramdown
    module Parser
        class Kramdown
            prepend KramdownMonkeyPatching
        end
    end
end
