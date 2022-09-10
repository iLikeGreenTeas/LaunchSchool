names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(names)
  names.sample
end

def activity(activities)
  activities.sample
end

def sentence(name_result, activity_result)
  "#{name_result} went #{activity_result} today."
end



puts sentence(name(names), activity(activities))