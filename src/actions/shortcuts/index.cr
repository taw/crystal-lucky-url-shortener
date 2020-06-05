class Shortcuts::Index < BrowserAction
  route do
    html IndexPage, shortcuts: ShortcutQuery.new
  end
end
