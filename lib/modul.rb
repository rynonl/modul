require "modul/version"

module Modul
  class Error < StandardError; end

  def self.included(base)
    base.parent.send(:private_constant, base.name.demodulize.to_sym)
  end
end
