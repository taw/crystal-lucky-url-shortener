class Shortcuts::New < BrowserAction
  route do
    html NewPage, operation: SaveShortcut.new
  end
end
