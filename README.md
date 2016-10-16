# **Currency Converter**
*The purpose of this project is to practice creating objects and understand their interrelationship within Ruby.*

The project is comprised of four files representing four classes:

1. Currency
  * This class holds currency values and their corresponding country code.
  * It can be used to test if two currency objects are equal, and it can add or subtract currency values after checking if country codes are equal. It will also return a new currency object if given a fixnum or float by which to multiply.
  * On initialization, users may enter currency values and codes via fixnum plus string (eg (100, "USD")), or simply string with symbol ($100).
  * If user attempts to enter a country code not identified in the initialization, object will return an error.
2. CurrencyConverter
  * This class is initialized via hash holding country codes (key) and their current exchange rate (value).
  * It will convert the currency object identified into the requested currency, and return a new currency object. If requested currency is equal to currency object entered, the new currency object will be equal to the original.
  * If requested currency is not included in the original initialization hash, object will return an error.
3. CurrencyTrader
  * This class accepts two currency converter objects, representing two sets of rates, and a currency object.
  * Based on the currency code of the currency object, it will return which country code represents the best investment between the two sets of rates.
4. Error
  * This class holds the custom exception message "DifferentCurrencyCodeError" raised in the other classes.
