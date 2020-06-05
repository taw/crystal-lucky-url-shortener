class Shortcuts::Update < BrowserAction
  route do
    shortcut = ShortcutQuery.find(shortcut_id)
    SaveShortcut.update(shortcut, params) do |operation, shortcut|
      if operation.saved?
        flash.success = "The record has been updated"
        redirect Show.with(shortcut.id)
      else
        flash.failure = "It looks like the form is not valid"
        html EditPage, operation: operation, shortcut: shortcut
      end
    end
  end
end
