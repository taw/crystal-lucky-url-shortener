class Shortcuts::Delete < BrowserAction
  route do
    ShortcutQuery.find(shortcut_id).delete
    flash.success = "Deleted the record"
    redirect Index
  end
end
