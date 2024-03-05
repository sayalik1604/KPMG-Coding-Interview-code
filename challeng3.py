def get_nested_value(obj, key):
    keys = key.split('/')
    current = obj
    try:
        for k in keys:
            current = current[k]
        return current
    except (KeyError, TypeError):
        return None

# Example Usage
obj1 = {"a": {"b": {"c": "d"}}}
key1 = "a/b/c"
result1 = get_nested_value(obj1, key1)
print(f"Example 1: {result1}")

obj2 = {"x": {"y": {"z": "a"}}}
key2 = "x/y/z"
result2 = get_nested_value(obj2, key2)
print(f"Example 2: {result2}")
