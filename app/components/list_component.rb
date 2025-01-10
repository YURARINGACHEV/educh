class ListComponent < ViewComponent::Base
  renders_one :header, "HeaderComponent"
  # `HeaderComponent` is defined within this component, so we refer to it using a string.
  renders_many :titles, TitleComponent
  # `titleComponent` will be defined in another file, so we can refer to it by class name.
  class HeaderComponent < ViewComponent::Base
    def call
      content_tag :h1, content
    end
  end
end