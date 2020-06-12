require 'rails_helper'

FactoryBot.define do
  factory(:park) do
    name {'Grand Canyon National Park'}
    location {'Arizona'}
    content {'This epic canyon has been formed over millions of years and was crafted by the Colorado River – indeed the river still runs through the canyon today.'}
  end
end