/// scrGetParameters(text, startIndex)
// example:
// \c[1,2,3]
//   ^ <- this is start index
// result[0] -> the total length of parameter string. (from '[' to ']')
// result[1..] -> the value of each parameter.
var _text = argument0, _startIndex = argument1;
var _parameters, _analyzedText;
var _endIndex = _startIndex;
var _textLength = string_length(_text) - _startIndex;
_endIndex += string_pos(']', string_copy(_text, _startIndex + 1, _textLength));
_textLength = _endIndex - (_startIndex + 1);
_analyzedText = string_copy(_text, _startIndex + 1, _textLength);
_textLength = string_length(_analyzedText);
var _storedText = "", _nowArrayPos = -1;
_parameters[++_nowArrayPos] = (_endIndex - _startIndex) + 1;
for (var i = 1; i <= _textLength; i++)
{
    var _char = string_char_at(_analyzedText, i);
    if _char == '[' || _char == ']'
    {
        if _storedText != "" _parameters[++_nowArrayPos] = _storedText;
        break;
    }
    if _char == ',' && _storedText == ''
    {
        show_error('Parsing Error!#Missing necessary argument!', 1);
    }
    else if _char == ','
    {
        _parameters[++_nowArrayPos] = _storedText;
        _storedText = "";
    }
    else
    {
        _storedText += _char;
    }
    if i == _textLength
    {
        _parameters[++_nowArrayPos] = _storedText;
    }
}
return _parameters;
