if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_OtLzTZPzZsn6O2CaUPAlipaW',
    secret_key: 'sk_test_JQgrhlLyKdwpZLgWMSty3ire'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
