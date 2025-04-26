# frozen_string_literal: true

class Educhain::Authors::Component < Educhain::BaseComponent
  renders_many :items, Educhain::Authors::Item::Component

  def initialize(title:, **attributes)
    @title = title
    @attributes = attributes
    @attributes[:class] = [
      "bg-gray-100 rounded-2xl p-5 flex flex-col items-center w-72",
      @attributes[:class]
    ].join(" ")
  end
end
