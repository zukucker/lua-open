function read()
  content = {}
  f = io.open('testfile', "r")
  for line in f:lines() do
    print(line)
    content[#content+1] = line
    remove()
  end
end

function remove()
  for i = 1, #content do
    f = io.open('testfile', "w+")
      print(content[i], " wurde gelöscht")
      f:write("", "")
    f:close()
  end
  sleep(2)
end

local clock = os.clock
function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end
read()
