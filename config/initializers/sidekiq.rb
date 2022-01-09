Sidekiq.configure_client do |config|
  config.redis = { url: ENV["REDIS_URL"], size: 4, network_timeout: 5 }
end

Sidekiq.configure_server do |config|
  config.redis = { url: ENV["REDIS_URL"], size: 4, network_timeout: 5 }
end

Sidekiq::Cron::Job.create(name: "CronWorker every min", cron: "* * * * *", class: "InterestSubscriptionMailerJob") if Sidekiq.server?
