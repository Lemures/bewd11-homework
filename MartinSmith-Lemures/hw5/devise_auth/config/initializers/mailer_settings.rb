ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "msmith3dart@icloud.com",
    :password =>       "1Enderki.aiaiai",
    :domain =>         'domain here',
    :authentication => :plain
}