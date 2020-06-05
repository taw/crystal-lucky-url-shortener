class Shortcuts::IndexPage < MainLayout
  needs shortcuts : ShortcutQuery
  quick_def page_title, "All Shortcuts"

  def content
    h1 "All Shortcuts"
    link "New Shortcut", to: Shortcuts::New
    render_shortcuts
  end

  def render_shortcuts
    ul do
      @shortcuts.each do |shortcut|
        li do
          link "#{shortcut.slug} - #{shortcut.url}", Shortcuts::Show.with(shortcut)
        end
      end
    end
  end
end
