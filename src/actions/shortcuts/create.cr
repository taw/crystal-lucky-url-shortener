class Shortcuts::Create < BrowserAction
  route do
    SaveShortcut.create(params) do |operation, shortcut|
      if shortcut
        flash.success = "The record has been saved"
        redirect Show.with(shortcut.id)
      else
        flash.failure = "It looks like the form is not valid"
        html NewPage, operation: operation
      end
    end
  end
end
