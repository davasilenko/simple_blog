# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Article.create([
  {
    title: 'Как начать программировать на Ruby on Rails',
    content: 'Ruby on Rails — это мощный фреймворк для веб-разработки. В этой статье мы рассмотрим основные шаги для начала работы с Rails, включая установку, настройку среды разработки и создание первого приложения.'
  },
  {
    title: 'Советы по повышению продуктивности для разработчиков',
    content: 'Продуктивность — ключ к успешной карьере разработчика. Узнайте, как оптимизировать свой рабочий процесс, использовать правильные инструменты и избегать распространенных ловушек прокрастинации.'
  },
  {
    title: 'Понимание архитектуры MVC',
    content: 'Архитектура Model-View-Controller (MVC) является основой многих современных веб-фреймворков. В этой статье мы подробно рассмотрим, как работает MVC и как применять этот шаблон в ваших проектах.'
  }
])
User.create!(
  name: 'Admin',
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password',
  admin: true
)
