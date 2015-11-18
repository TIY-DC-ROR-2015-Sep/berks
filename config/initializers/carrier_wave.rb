CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     'AKIAIBG3WZGTXKXX6ZFQ',
    aws_secret_access_key: '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'
  }
  config.fog_directory = 'berks.jcd'
end
