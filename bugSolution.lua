local function foo(a)
  if a == nil then
    error("Argument 'a' is nil in function 'foo'", 2)
  elseif type(a) ~= "number" then
    error("Argument 'a' must be a number in function 'foo'", 2)
  end
  return a + 1
end

local function safeFoo(a)
  local status, result = pcall(foo, a)
  if not status then
    print("Error: ", result)
    return nil
  end
  return result
end

local result = safeFoo(nil)
print(result)

result = safeFoo(10)
print(result)

result = safeFoo("hello")
print(result)