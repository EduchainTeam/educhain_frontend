# frozen_string_literal: true

class Educhain::Authors::Item::Component < Educhain::BaseComponent

  def initialize(image_path:, full_name:, description:)
    @image_path = image_path
    @full_name = full_name
    @description = description
  end

  private

  attr_reader :image_path, :full_name, :description
end
