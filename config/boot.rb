ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.

if %w[s server].any? { |a| ARGV.include?(a) }
  $stdout.puts "=> Booting Rails"
end
