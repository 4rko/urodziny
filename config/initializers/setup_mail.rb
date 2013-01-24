ActionMailer::Base.smtp_settings = {
	address: "smtp.gmail.com",
	port: 587,
	domain: "gmail.com",
	user_name: "MojeEkstraKonto",
	password: "MusoE2k8",
	authentication: "plain",
	enable_starttls_auto: true
}

# przydatne gdybym chciał umieszczać linki do aplikacji w mailach
# ActionMailer::Base.default_url_options[:host] = "localhost:3000"