CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAZDPUJYIA32AEK4PI',                        # required unless using use_iam_profile
    aws_secret_access_key: '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',                        # required unless using use_iam_profile
    region:                'eu-west-3',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'bien-reviews-max'                                      # required
end
