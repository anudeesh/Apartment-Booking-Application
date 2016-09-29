using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{
    string cardType;
    bool cardValid;
    public string CrediCardVerification(string cardNumber)
    {
        //ReturnIndicator CCri = new ReturnIndicator();
        cardValid = false;

        byte[] creditCardNumber = new byte[16];

        int length = 0;
        for (int i = 0; i < cardNumber.Length; i++)
        {
            if (char.IsDigit(cardNumber, i))
            {
                if (length == 16)
                    return cardType;

                creditCardNumber[length++] = byte.Parse(cardNumber[i].ToString());


            }
        }

        int digitsSum = 0;

        for (int i = length - 1; i >= 0; i--)
        {
            if (i % 2 == length % 2)
            {
                int n = creditCardNumber[i] * 2;
                digitsSum = digitsSum + (n / 10) + (n % 10);
            }
            else
                digitsSum = digitsSum + creditCardNumber[i];
        }

        cardValid = (bool)(digitsSum % 10 == 0);
        if (cardValid == true)
        {
            switch (cardNumber.Substring(0, 1))
            {
                case "3":
                    cardType = "AMEX/Diners Club/JCB";
                    break;
                case "4":
                    cardType = "VISA";
                    break;
                case "5":
                    cardType = "MasterCard";
                    break;
                case "6":
                    cardType = "Discover";
                    break;
                default:
                    cardType = "Unknown";
                    break;
            }
        }
        else
            cardType = "NONE";

        return cardType;
    }
    




}
