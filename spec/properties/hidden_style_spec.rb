require "spec_helper"

describe Rocx::Properties::HiddenStyle do
  include ValuePropertyTestMacros

  it_should_use tag: :hidden, name: "hidden_style"

  with_value(true) do
    it_should_work
    it_should_output "<w:hidden/>"
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
