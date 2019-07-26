/// scrCalculateRect(dialogueText, wrapWidth)
// calculate the size of drawn dialogue
var _text = argument0, _wrapWidth = argument1;
var _curWidth = 0, _size; _size[0] = 0; _size[1] = 0;
var _shakeState = false;
draw_set_font(fntDialogue);
for (var i = 1; i <= string_length(_text); i++)
{
    var _letter = string_char_at(_text, i);
    if _letter == '\'
    {
        var _nextLetter = string_char_at(_text, i + 1);
        ++i;
        switch _nextLetter
        {
            case 'n':
                _size[1] += string_height(string_char_at(_text, 1));
                _curWidth = 0;
                break;
            case 's':
            case 'c':
            case 't':
            case 'p':
            case 'g':
            case 'i':
                // set the state of shake command
                if _nextLetter == 's'
                {
                    _shakeState = !_shakeState;
                    if !_shakeState continue;
                }
                else if _nextLetter == 'i'
                {
                    var _parameters = scrGetParameters(_text, i + 1);
                    var _icon = _parameters[1];
                    _size[0] += sprite_get_width(_icon) - sprite_get_xoffset(_icon);
                }
                // find the position of parameter section
                var __startIndex = i + 1;
                var __endIndex = __startIndex;
                var __textLength = string_length(_text) - __startIndex;
                __endIndex += string_pos(']', string_copy(_text, __startIndex + 1, __textLength)) + 1;
                i += (__endIndex - __startIndex);
                break;
        }
    }
    else
    {
        show_debug_message(_letter)
        var _width = string_width(_letter);
        if _curWidth + _width >= _wrapWidth
        {
            _curWidth = 0;
            _size[1] += string_height(_letter);
        }
        else
        {
            _curWidth += _width;
        }
        if _size[1] == 0 _size[1] += string_height(_letter);
        _size[0] = min(max(_size[0], _curWidth), _wrapWidth);
    }
}
return _size;
