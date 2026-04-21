using System.Text.RegularExpressions;

namespace Spinrise.API.Models;

internal static partial class ValidationErrorMapper
{
    /// <summary>
    /// Converts raw ASP.NET DataAnnotations messages to human-readable text.
    /// Custom ErrorMessage values (not starting with "The ") are returned as-is.
    /// </summary>
    internal static string Friendlify(string rawMessage)
    {
        if (!rawMessage.StartsWith("The ", StringComparison.OrdinalIgnoreCase))
            return rawMessage;

        // "The field X must be a string with a maximum length of N."
        var maxLen = MaxLengthRegex().Match(rawMessage);
        if (maxLen.Success)
            return $"Must be at most {maxLen.Groups[1].Value} characters.";

        // "The field X must be a string or array type with a minimum length of N."
        var minLen = MinLengthRegex().Match(rawMessage);
        if (minLen.Success)
            return $"Must be at least {minLen.Groups[1].Value} characters.";

        // "The field X must be between N and M."
        var range = RangeRegex().Match(rawMessage);
        if (range.Success)
            return $"Must be between {range.Groups[1].Value} and {range.Groups[2].Value}.";

        if (rawMessage.Contains("field is required", StringComparison.OrdinalIgnoreCase))
            return "This field is required.";

        if (rawMessage.Contains("is not valid", StringComparison.OrdinalIgnoreCase))
            return "Invalid value.";

        return rawMessage;
    }

    internal static string? InferCode(string rawMessage)
    {
        if (rawMessage.Contains("required",       StringComparison.OrdinalIgnoreCase)) return "required";
        if (rawMessage.Contains("maximum length", StringComparison.OrdinalIgnoreCase)) return "max_length";
        if (rawMessage.Contains("minimum length", StringComparison.OrdinalIgnoreCase)) return "min_length";
        if (rawMessage.Contains("between",        StringComparison.OrdinalIgnoreCase)) return "range";
        if (rawMessage.Contains("not valid",      StringComparison.OrdinalIgnoreCase)) return "invalid";
        return null;
    }

    /// <summary>
    /// Converts ModelState keys (e.g. "Lines[0].ItemCode", "DivCode") to camelCase field paths.
    /// </summary>
    internal static string ToCamelCaseKey(string key)
    {
        if (string.IsNullOrEmpty(key)) return key;
        var k = key.TrimStart('$', '.');
        return k.Length == 0 ? key : char.ToLowerInvariant(k[0]) + k[1..];
    }

    [GeneratedRegex(@"maximum length of (\d+)", RegexOptions.Compiled)]
    private static partial Regex MaxLengthRegex();

    [GeneratedRegex(@"minimum length of (\d+)", RegexOptions.Compiled)]
    private static partial Regex MinLengthRegex();

    [GeneratedRegex(@"must be between (.+?) and (.+?)\.", RegexOptions.Compiled)]
    private static partial Regex RangeRegex();
}
