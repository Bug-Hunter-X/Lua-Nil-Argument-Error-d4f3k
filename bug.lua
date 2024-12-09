local function foo(a)
  if a == nil then
    error("Argument 'a' is nil")
  end
  return a + 1
end

local result = foo(nil)