class Shortcuts::ShowPage < MainLayout
  needs shortcut : Shortcut
  quick_def page_title, "Shortcut with id: #{@shortcut.id}"

  def content
    link "Back to all Shortcuts", Shortcuts::Index
    h1 "Shortcut with id: #{@shortcut.id}"
    render_actions
    render_shortcut_fields
  end

  def render_actions
    section do
      link "Edit", Shortcuts::Edit.with(@shortcut.id)
      text " | "
      link "Delete",
        Shortcuts::Delete.with(@shortcut.id),
        data_confirm: "Are you sure?"
    end
  end

  def render_shortcut_fields
    ul do
      li do
        text "url: "
        strong @shortcut.url.to_s
      end
      li do
        text "slug: "
        strong @shortcut.slug.to_s
      end
      li do
        text "visits: "
        strong @shortcut.visits.to_s
      end
    end
  end
end
