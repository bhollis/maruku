describe "The maruku CLI" do
  it "has a nonzero exit code on invalid options" do
    `ruby -Ilib bin/maruku --foo 2>&1`
    $?.exitstatus.should_not == 0
  end
end
