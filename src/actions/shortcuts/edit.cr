class Shortcuts::Edit < BrowserAction
  route do
    shortcut = ShortcutQuery.find(shortcut_id)
    html EditPage,
      operation: SaveShortcut.new(shortcut),
      shortcut: shortcut
  end
end
