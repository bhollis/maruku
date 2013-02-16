Test backtick fenced code blocks - right now just test that we don't fail hard
on them, but in the future test that they're supported.
*** Parameters: ***
{}
*** Markdown input: ***
```ruby
john = Twitter::Client.new(
  :oauth_token => "John's access token",
  :oauth_token_secret => "John's access secret"
)
```

```
john = Twitter::Client.new(
  :oauth_token => "John's access token",
  :oauth_token_secret => "John's access secret"
)
```
*** Output of inspect ***

*** Output of to_html ***
