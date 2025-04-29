class EduHomesController < ApplicationController
  def show
    authors_items = [
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
    authors_items_struct = Struct.new(:image_path, :full_name, :description)
    @authors_items = authors_items.map { authors_items_struct.new(**_1) }
    @authors_title = "Авторы курса"

    footer_items = [
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
    footer_items_struct = Struct.new(:width, :key, :links)
    @footer_items = footer_items.map { footer_items_struct.new(**_1) }
    @logo_path = "educhain_fat_type.svg"
    @logo_width = "w-13/52"
    @logo_text = "Проектные (техноэкономические) технологии и платформы кадрового суверенитета"
    @footer_copyright = "Copyright ©	2024 Educhain | All Right Reserved"
  end
end
