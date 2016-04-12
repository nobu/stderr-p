# -*- coding: us-ascii -*-

require 'test/unit'
require 'tempfile'
require_relative '../lib/stderr/p'

class TestSTDERR < Test::Unit::TestCase
  def test_p
    args = [[1,2,3], {foo: "bar"}]
    result = Tempfile.open("x") do |tmp|
      tmp.close
      begin
        stderr = STDERR.dup
        STDERR.reopen(tmp.path)
        STDERR.p(*args)
      ensure
        STDERR.reopen(stderr)
      end
      tmp.open
      tmp.read
    end
    assert_equal(args.map {|arg| arg.inspect + "\n"}.join(""), result)
  end
end
