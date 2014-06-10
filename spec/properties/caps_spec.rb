require "spec_helper"

describe Rocx::Properties::Caps do
  include ValuePropertyTestMacros

  it_should_use tag: :caps, name: "caps"

  with_value(true) do
    it_should_work
    it_should_output "<w:caps/>"
  end

  with_value(false) do
    it_should_work
    it_should_output ""
  end

  with_value(nil) do
    it_should_work
    it_should_output ""
  end

end
