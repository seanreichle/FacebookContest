EMAIL = YAML.load_file("#{Rails.root}/config/email_config.yml") if File.exist?("#{Rails.root}/config/email_config.yml")