def s3_key
  ENV['S3KEY'] ||= AWS[Rails.env]['S3KEY']
end
def s3_secret
  ENV['S3SEC'] ||= AWS[Rails.env]['S3SEC']
end

CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines
  
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => s3_key,       # required
    :aws_secret_access_key  => s3_secret      # required
    # :region                 => 'us-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = AWS[Rails.env]['bucket']                     # required
  config.cache_dir = "#{Rails.root}/public/uploads"
  # config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  # config.fog_public     = false                                   # optional, defaults to true
  # config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end