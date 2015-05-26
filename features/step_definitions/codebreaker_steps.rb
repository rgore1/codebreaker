class Output

  def messages
    @messages ||= []
  end

  def puts(message)
    messages << message
  end

end


def make_output
  @output ||= Output.new
end

Given(/^I am not yet playing$/) do
end

When(/^I start a new game$/) do
  game = Codebreaker::Game.new(make_output)
  game.start(1234)
end

Then(/^I should see "([^"]*)"$/) do |message|
  make_output.messages.should include(message)
end

Given /^the secret code is "([^"]*)"$/ do |secret|
  game = Codebreaker::Game.new(make_output)
  game.start(secret)
end


When(/^I guess "([^"]*)"$/) do |arg|
end

Then(/^the mark should be "([^"]*)"$/) do |arg|
end