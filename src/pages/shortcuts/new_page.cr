class Shortcuts::NewPage < MainLayout
  needs operation : SaveShortcut
  quick_def page_title, "New Shortcut"

  def content
    h1 "New Shortcut"
    render_shortcut_form(@operation)
  end

  def render_shortcut_form(op)
    form_for Shortcuts::Create do
      # Edit fields in src/components/shortcuts/form_fields.cr
      mount Shortcuts::FormFields.new(op)

      submit "Save", data_disable_with: "Saving..."
    end
  end
end
