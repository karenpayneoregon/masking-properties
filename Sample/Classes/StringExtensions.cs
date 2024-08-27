namespace EnvironmentApplication.Classes;

public static class StringExtensions
{
    /// <summary>
    /// Display SSN last five numbers e.g. xxx-x2-1234
    /// </summary>
    public static string MaskSsn(this string ssn, int digitsToShow = 4, char maskCharacter = '*')
    {
        if (string.IsNullOrWhiteSpace(ssn)) { return string.Empty; }
        if (ssn.Length != 9) { throw new ArgumentException("SSN invalid length"); }

        const int ssnLength = 9;
        const string separator = "-";
        int maskLength = ssnLength - digitsToShow;
        
        int output = int.Parse(ssn.Replace(separator, string.Empty)
            .Substring(maskLength, digitsToShow));

        string format = string.Empty;
        for (int index = 0; index < maskLength; index++)
        {
            format += maskCharacter;
        }

        for (int index = 0; index < digitsToShow; index++)
        {
            format += "0";
        }

        format = format.Insert(3, separator).Insert(6, separator);
        format = $"{{0:{format}}}";

        return string.Format(format, output);
    }

    public static string MaskValue(this string sender, int charactersToMask = 2, MaskPosition position = MaskPosition.Start)
    {
        if (string.IsNullOrEmpty(sender.ToString()) || charactersToMask <= 0)
        {
            return sender.ToString();
        }


        if (charactersToMask >= sender.Length)
        {
            return new string('*', sender.Length);
        }

        switch (position)
        {
            case MaskPosition.Start:
                return new string('*', charactersToMask) + sender[charactersToMask..];
            case MaskPosition.End:
                return sender[..^charactersToMask] + new string('*', charactersToMask);
            case MaskPosition.Middle:
                int startIndex = (sender.Length - charactersToMask) / 2;
                return sender[..startIndex] + new string('*', charactersToMask) + sender[(startIndex + charactersToMask)..];
            default:
                throw new ArgumentException("Invalid MaskPosition.");
        }
    }
}

public enum MaskPosition
{
    Start,
    Middle,
    End
}