# frozen_string_literal: true

voted = {}

def verify_elector(name, voted)
  if voted.fetch(name, false)
    p 'You cant vote'
  else
    voted[name] = true
    p 'You can vote'
  end
end

verify_elector('Michel', voted)
verify_elector('Mila', voted)
verify_elector('Mila', voted)

p voted
