See PMInterface comment for an overview.



I act like a Dictionary. According to PostMark documentation, I accept the following values:

{
  "From" : "sender@example.com",
  "To" : "receiver@example.com,receiver2@example.com",
  "Cc" : "copied@example.com",
  "Bcc": "blank-copied@example.com",
  "Subject" : "Test",
  "Tag" : "Invitation",
  "HtmlBody" : "<b>Hello</b>",
  "TextBody" : "Hello",
  "ReplyTo" : "reply@example.com",
  "Headers" : [{ "Name" : "CUSTOM-HEADER", "Value" : "value" }]
}