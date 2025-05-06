class EduProductsController < ApplicationController
  # Структуры данных для экземпляров
  User         = Struct.new(:name, :avatar_url)
  NavbarItem   = Struct.new(:position, :type, :text, :href, keyword_init: true)
  Course       = Struct.new(:title, :tags, :description, :price, keyword_init: true)
  CourseModule = Struct.new(:position, :name, keyword_init: true)
  Author       = Struct.new(:image_path, :full_name, :description, keyword_init: true)
  FooterItem   = Struct.new(:width, :key, :links, keyword_init: true)

  def show
    # Экземпляры для Navbar
    @user = User.new("Андрей", nil)
    @navbar_items = navbar_items.map { NavbarItem.new(**_1) }

    # Экземпляры для Курса
    @course = Course.new(
      title: "Повышение квалификации по программе «Радиационая безопасность, учет, контроль, и физическая защита пунктов хранения радиоактивных веществ и радиоактивных отходов»",
      tags: ["Программа", "Профессиональное обучение"],
      description: %(Курс предназначен для специалистов, работающих с радиоактивными материалами, и направлен на углубленное
        изучение современных требований и практик в области радиационной безопасности.
        В рамках программы рассматриваются актуальные нормативно-правовые аспекты, включая законодательные
        и технические регламенты, регулирующие обращение с радиоактивными веществами и отходами.
      ),
      price: 10000
    )

    # Экземпляр модуля
    @modules = module_items.map { CourseModule.new(**_1) }.sort_by(&:position)

    # Экземпляр для Авторов
    @authors_items = authors_items.map { Author.new(**_1) }

    # Экземпляры для Footer
    @footer_items = footer_items.map { FooterItem.new(**_1) }
    @logo_path = "educhain_fat_type.svg"
    @logo_width = "w-13/52"
    @logo_text = "Проектные (техноэкономические) технологии и платформы кадрового суверенитета"
    @footer_copyright = "Copyright © 2024 Educhain | All Right Reserved"
  end

  private

  def navbar_items
    [
      { 
        position: 0,
        type: "link",
        text: "Профиль",
        href: "#" 
      },
      { 
        position: 2,
        type: "link",
        text: "Помощь",
        href: "#" 
      },
      {
        position: 1,
        type: "link",
        text: "Настройки",
        href: "#" 
      },
      {  
        position: 99,
        type: "button",
        text: "Выйти",
        href: "#"
      }
    ]
  end

  def authors_items
    [
      {
        image_path: "",
        full_name: "Имя Фамилия Отчество",
        description: "Ординарный профессор, научный руководитель по программам"

      },
      {
        image_path: "",
        full_name: "Фамилия Имя Отчество",
        description: "Ординарный профессор, научный руководитель по программам"
      }
    ]
  end

  def module_items
    [
      {position: 4, name: "Оценка и минимизация радиационных рисков на рабочем месте"},
      {position: 1, name: "Основы и принципы радиационной безопасности"},
      {position: 2, name: "Нормативно-правовая база и международные стандарты"},
      {position: 5, name: "Документация и регламентация радиационно-опасных работ"},
      {position: 3, name: "Обращение с радиоактивными веществами и отходами"},
      {position: 6, name: "Аудит, проверка и ответственность при нарушениях"}
    ]
  end

  def footer_items
    [
      {
        width: "w-9/52",
        key: "Решения",
        links: [
          {
            name: "Платформа ДПО",
            path: "#"
          },
          {
            name: "Сетевое Взаимодействие",
            path: "#"
          },
          {
            name: "Платформа УПК",
            path: "#"
          }
        ]
      },
      {
        width: "w-11/52",
        key: "Продукты и услуги",
        links: [
          {
            name: "Конструктор программ",
            path: "#"
          },
          {
            name: "СДО Канвас+",
            path: "#"
          },
          {
            name: "Получение лицензии",
            path: "#"
          }
        ]
      },
      {
        width: "w-12/52",
        key: "Документы",
        links: [
          {
            name: "Политика конфиденциальности",
            path: "#"
          },
          {
            name: "Пользовательское соглашение",
            path: "#"
          },
          {
            name: "Руководство пользователя",
            path: "#"
          }
        ]
      },
      {
        width: "w-7/52",
        key: "Educhain",
        links: [
          {
            name: "O Educhain",
            path: "#"
          },
          {
            name: "Блог",
            path: "#"
          },
          {
            name: "Контакты",
            path: "#"
          }
        ]
      }
    ]
  end
end