# All files in the 'lib' directory will be loaded
# before nanoc starts compiling.
include Nanoc3::Helpers::Blogging
include Nanoc3::Helpers::LinkTo

def language_of(item)
    c = item.identifier.to_s.match(%r{/([a-z]{2})/})
    c && c[1]
end