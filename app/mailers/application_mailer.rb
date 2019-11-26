# frozen_string_literal: true

# Mailer para o envio de emails.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
