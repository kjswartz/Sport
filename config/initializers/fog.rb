CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'S3_BUCKET',                        # required
    :aws_access_key_id      => 'S3_KEY',                        # required
    :aws_secret_access_key  => 'S3_SECRET_KEY',                        # required
    :endpoint               => 'https://console.aws.amazon.com/s3/home?region=us-west-2' # optional, defaults to nil
  }
  config.fog_directory  = '/config/initializers/fog.rb'                          # required
end
