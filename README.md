# pkulib
Ruby Library for calculating phe content in food and converting the relating weight and volume metrics

## installing with rubygems
<code>$ gem install pkulib</code>

## Example
```Ruby
require 'pkulib'
steak = oz2gram(8)
metricfood = mg2gram(129)
soda = floz2ml(20)
moresoda = litre2ml(2)
$avggrams = average (steak,metricfood,soda,moersoda)

$foodphe = phecalc(100)
$fruitphe = phecalc(5,"fruit")
$vegetablephe = phecalc(20,"veg")
```
