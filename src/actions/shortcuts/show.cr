class Shortcuts::Show < BrowserAction
  route do
    html ShowPage, shortcut: ShortcutQuery.find(shortcut_id)
  end
end
