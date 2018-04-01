



## MapSet
順序不定かつ重複を許さない集合

```
    new_set = MapSet.new(@set, fn x -> 3 * x end)

    assert MapSet.member?(new_set, 15) == true
    assert MapSet.member?(new_set, 1) == false
  end
```

# String はマッチングで分割できる

```
  koan "Strings come apart just as easily" do
    "Shopping list: " <> items = "Shopping list: eggs, milk"

    assert items == "eggs, milk"
  end
```

# ラムダ式の作り方
```
    f = fn
        1 ->  4
        2 ->  9
        _ -> 15
    end

    a = f.(5)

```


# when でガード
```
  def sum_up(thing) when is_list(thing), do: :entire_list
  def sum_up(_thing), do: :single_thing

  koan "Functions can have guard expressions" do
    assert sum_up([1, 2, 3]) == :entire_list
    assert sum_up(1) == :single_thing
  end
```

# lambda の短縮
```
    multiply = fn (a,b) -> a * b end
    multiply = &(&1 * &2)

    assert multiply.(2,3) == 6
```

# process
```

f = fn -> :timer.sleep(1) end

p = spawn(f)

```

spawn/1
spawn_link/1
spawn_monitor/1

ふつうは
*Task
*Agent
*Genserver
を使うよって書いてある

ちょっとTask周りはちゃんとやりたい

# Map
* fetch/2

