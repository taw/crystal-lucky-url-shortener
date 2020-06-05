class Shortcuts::EditPage < MainLayout
  needs operation : SaveShortcut
  needs shortcut : Shortcut
  quick_def page_title, "Edit Shortcut with id: #{@shortcut.id}"

  def content
    link "Back to all Shortcuts", Shortcuts::Index
    h1 "Edit Shortcut with id: #{@shortcut.id}"
    render_shortcut_form(@operation)
  end

  def render_shortcut_form(op)
    form_for Shortcuts::Update.with(@shortcut.id) do
      # Edit fields in src/components/shortcuts/form_fields.cr
      mount Shortcuts::FormFields.new(op)

      submit "Update", data_disable_with: "Updating..."
    end
  end
end
