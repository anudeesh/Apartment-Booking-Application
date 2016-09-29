using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EncryptionDecryption
{
    public class Class1
    {
        public static string Encryption(string message)
        {
            string encryptedMessage = "";
            int encryptedChar = 0;
            foreach (byte b in System.Text.Encoding.UTF8.GetBytes(message.ToCharArray()))
            {
                int ASCIIValue = Convert.ToInt32(b);
                if ((ASCIIValue + 20) > 126)
                {
                    encryptedChar = (((ASCIIValue + 20) - 127) + 32);
                }
                else
            }


            string encryptedMessage = "";
            byte[] ASCIIArray = Encoding.ASCII.GetBytes(message);
            for (int i = 0; i < ASCIIArray.Length; i++)
            {
                encryptedMessage += ASCIIArray[i] + "@";
            }
            return encryptedMessage;
        }

        public static string Decrypt(string encodedMessage)
        {
            string[] ASCIIArray = encodedMessage.Split('@');
            string decodedMessage = "";
            for (int i = 0; i < ASCIIArray.Length - 1; i++)
            {
                decodedMessage += (char)(Convert.ToInt16(ASCIIArray[i]));
            }
            return decodedMessage;
        }
    }
}
