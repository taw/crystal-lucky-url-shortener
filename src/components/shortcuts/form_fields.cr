class Shortcuts::FormFields < BaseComponent
  needs operation : SaveShortcut

  def render
    mount Shared::Field.new(operation.url), &.text_input(autofocus: "true")
    mount Shared::Field.new(operation.slug)
    mount Shared::Field.new(operation.visits)
  end
end
