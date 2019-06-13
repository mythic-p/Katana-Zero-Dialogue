/// scrInitDialogue(dialogueArray)
// dialogueArray: an array of string
with instance_create(0, 0, obj_dialogue)
{
    speaker = other.id;
    for (var i = 0; i < array_length_1d(argument0); i++)
    {
        ds_queue_enqueue(textSequence, argument0[i]);
    }
    event_user(1);
}
