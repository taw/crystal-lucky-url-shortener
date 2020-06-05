class Goto::Show < BrowserAction
  route do
    shortcut = ShortcutQuery.new.slug(goto_id).first
    shortcut = SaveShortcut.update!(
      shortcut,
      visits: shortcut.visits + 1,
    )
    redirect shortcut.url
  end
end
