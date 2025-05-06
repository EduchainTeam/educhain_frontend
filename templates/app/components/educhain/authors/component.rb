# frozen_string_literal: true

class Educhain::Authors::Component < Educhain::BaseComponent
  renders_many :items, Educhain::Authors::Item::Component

  def initialize(**attributes)
    @attributes = attributes
    @attributes[:class] = [
      "rounded-2xl px-5 flex flex-col items-center w-72",
      @attributes[:class]
    ].join(" ")
  end
end
