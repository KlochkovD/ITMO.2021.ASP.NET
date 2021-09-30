using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebMVCR1.Models
{
    public enum AccountType
    {
        Checking,
        Deposit
    }
    public class StudyCsharp
    {
        public static string SetStatus(int age)
        {
            string status = "junior developer";
            if ((age > 2) && (age < 7)) status = "middle developer";
            else if ((age >= 7) && (age < 15)) status = "senior developer";
            else if ((age >= 15)) status = "sensei";
            return status;
        }

        public static string ExeSwitch(string status)
        {
            string res;
            switch (status)
            {
                case "junior developer":
                    res = "Набирайся знаний"; break;
                case "middle developer":
                    res = "Набирайся опыта"; break;
                case "senior developer":
                    res = "Руководи другими"; break;
                case "sensei":
                    res = "Учи других"; break;
                default:
                    res = "Не знаю, что делать";
                    break;
            }
            return res;
        }

    }



    public struct BankAccount

   {
    public long accNo;
    public decimal accBal;
    public AccountType accType;
    public override string ToString()
    {
        string res = String.Format("Номер счета {0}", accNo);
        return res;
    }
}
   
}

