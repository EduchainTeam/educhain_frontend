# frozen_string_literal: true

class HomeController < StoreController
  helper 'spree/products'
  respond_to :html

  def index
    @searcher = build_searcher(params.merge(include_images: true))
    @products = @searcher.retrieve_products

    # Split products into groups of 3 for the homepage blocks.
    # You probably want to remove this logic and use your own!
    homepage_groups = @products.in_groups_of(3, false)
    @featured_products = homepage_groups[0]
    @collection_products = homepage_groups[1]
    @cta_collection_products = homepage_groups[2]
    @new_arrivals = homepage_groups[3]

    # footer_items = [
    #   {
    #     width: "w-9/52",
    #     key: "Решения",
    #     links: [
    #       {
    #         name: "Платформа ДПО",
    #         path: "#"
    #       },
    #       {
    #         name: "Сетевое Взаимодействие",
    #         path: "#"
    #       },
    #       {
    #         name: "Платформа УПК",
    #         path: "#"
    #       }
    #     ]
    #   },
    #   {
    #     width: "w-11/52",
    #     key: "Продукты и услуги",
    #     links: [
    #       {
    #         name: "Конструктор программ",
    #         path: "#"
    #       },
    #       {
    #         name: "СДО Канвас+",
    #         path: "#"
    #       },
    #       {
    #         name: "Получение лицензии",
    #         path: "#"
    #       }
    #     ]
    #   },
    #   {
    #     width: "w-12/52",
    #     key: "Документы",
    #     links: [
    #       {
    #         name: "Политика конфиденциальности",
    #         path: "#"
    #       },
    #       {
    #         name: "Пользовательское соглашение",
    #         path: "#"
    #       },
    #       {
    #         name: "Руководство пользователя",
    #         path: "#"
    #       }
    #     ]
    #   },
    #   {
    #     width: "w-7/52",
    #     key: "Educhain",
    #     links: [
    #       {
    #         name: "O Educhain",
    #         path: "#"
    #       },
    #       {
    #         name: "Блог",
    #         path: "#"
    #       },
    #       {
    #         name: "Контакты",
    #         path: "#"
    #       }
    #     ]
    #   }
    # ]
    # footer_items_struct = Struct.new(:width, :key, :links)
    # @footer_items = footer_items.map { footer_items_struct.new(**_1) }
    # @logo_path = "educhain_fat_type.svg"
    # @logo_width = "w-13/52"
    # @logo_text = "Проектные (техноэкономические) технологии и платформы кадрового суверенитета"
    # @footer_copyright = "Copyright ©	2024 Educhain | All Right Reserved"
  end
end
