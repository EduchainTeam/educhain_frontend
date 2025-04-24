class EduHomeController < ApplicationController
  def show
    items = [
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
    items_s = Struct.new(:width, :key, :links)
    @items = items.map { items_s.new(**_1) }
    @logo_path = "educhain_fat_type.svg"
    @width = "w-13/52"
    @text = "Проектные (техноэкономические) технологии и платформы кадрового суверенитета"
    @copyright = "Copyright ©	2024 Educhain | All Right Reserved"
  end
end
