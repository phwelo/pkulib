# pkulib
[pkulib on rubygems.org](https://rubygems.org/gems/pkulib "")

Ruby Library for calculating phe content in food and converting the relating weight and volume metrics

## Installing With Rubygems
<code>$ gem install pkulib</code>

## Available methods
* oz2gram
* mg2gram
* floz2ml
* litre2ml
* average
* phecalc

## oz2gram
Converts ounces to grams.

grams = ounces / 0.035274

usage:

```Ruby
PKUlib.oz2gram(ounces)
```

## mg2gram
Converts milligrams to grams.

grams = milligrams / 1000

usage:
```Ruby
PKUlib.mg2gram(milligrams)
```
##floz2ml
Converts fluid ounces to milliliters.

milliliters = fluid ounces / .033814

usage:
```Ruby
PKUlib.floz2ml(fluid ounces)
```

##litre2ml
Converts litres to milliliters.

milliliters = litres / .001

usage:

```Ruby
PKUlib.litre2ml(litres)
```

##average
Averages the provided numbers and returns a single value.  Provide any number of arguments as long as all are numbers.

average = (x1 + x2 + x3) / 3
```Ruby
PKUlib.average(num1, num2 ,num3, ...)
```

###phecalc
Input is protein content of food, in grams as well as food type qualifier if applicable.

For food that is not comprised of fruit and/or vegetables, the low multiplier is 20 and the high 64.5

For food that is comprised of only fruit, the low multiplier is 20 and the high is 30

For food which is vegetable only, the low multiplier is 20 and the high is 40
