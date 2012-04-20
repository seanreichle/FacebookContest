EMAIL = YAML.load_file("#{Rails.root}/config/email_config.yml") if File.exist?("#{Rails.root}/config/email_config.yml")

AWS = YAML.load_file("#{Rails.root}/config/s3.yml") if File.exist?("#{Rails.root}/config/s3.yml")