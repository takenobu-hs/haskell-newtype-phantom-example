Haskell examples of newtype and phantom type
--------------------------------------------

This is an example collection for [the article](https://qiita.com/takenobu-hs/items/14101cabf313e6d594ca) (in Japasene).

Using:
```
$ ghci examples/xxx.hs

Prelude> y = 100 :: Yen
Prelude> z = 1 :: USD

Prelude> :type y
y :: Yen
Prelude> :type z
z :: USD

Prelude> y + 1
Val 101
Prelude> y + y
Val 200
Prelude> z * 3
Val 3

Prelude> z + y
<interactive>:9:5: error:
```
