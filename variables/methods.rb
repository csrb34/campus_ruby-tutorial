def baseball_team_list
  ["A's", "Agels", "Astros"]
end

def second_baseball_team_list()
  return ["A's", "Agels", "Astros"] # works but it is bad practice, only used if there is any condition
end

def third_baseball_team_list(x)
  return ["A's", "Agels", "Astros"] if x == 10
  ["Yankees", "Mets"]
end

p baseball_team_list
p second_baseball_team_list
p third_baseball_team_list 10
p third_baseball_team_list 3
