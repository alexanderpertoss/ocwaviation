# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# User.create! email_address: "aviation@gmail.com", password: "123456", password_confirmation: "123456"

Information.create!(
  text1: "Bienvenidos a nuestro sitio web. Aquí encontrarás lo mejor en productos aeronáuticos.",
  text2: "Contamos con una amplia experiencia en el rubro, brindando siempre calidad y confianza.",
  text3: "Nuestros productos están certificados y cumplen con los más altos estándares.",
  text4: "Ofrecemos atención personalizada y soporte técnico especializado.",
  text5: "Estamos ubicados en la ciudad de Cochabamba, pero hacemos envíos a todo el país.",
  text6: "Síguenos en redes sociales para conocer nuestras últimas novedades y promociones.",
  text7: "Gracias por confiar en nosotros. Tu satisfacción es nuestra prioridad.",
  whatsapp_number: "59177498233",
  facebook_link: "https://www.facebook.com/ocwaviation"
)
