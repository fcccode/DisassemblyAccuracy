_jabber_x_data_cancel_cb
original code :
push|push|push|push|sub|mov|mov|mov|xor|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|test|je|mov|mov|call|mov|test|jne|mov|mov|call|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|jmp|call|endproc|_jabber_x_data_ok_cb|
disassembled code :
push|push|push|push|sub|mov|mov|mov|xor|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|je|xchg|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|test|je|mov|mov|call|mov|test|jne|mov|mov|call|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|jmp|call|

end _jabber_x_data_cancel_cb
_jabber_x_data_ok_cb
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|call|mov|mov|test|je|mov|mov|mov|cmp|mov|je|call|mov|test|je|mov|mov|call|mov|mov|mov|mov|mov|call|cmp|ja|jmp|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|mov|mov|test|jne|mov|mov|mov|call|mov|mov|test|je|mov|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|mov|test|je|mov|mov|call|mov|test|jne|mov|mov|mov|call|mov|mov|call|mov|mov|test|je|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|xor|jne|mov|mov|add|pop|pop|pop|pop|jmp|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|test|mov|je|mov|mov|mov|mov|mov|call|mov|mov|mov|call|test|je|mov|mov|mov|call|mov|test|jne|mov|mov|test|jne|jmp|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|test|je|mov|mov|call|mov|mov|mov|mov|call|add|mov|test|jne|mov|call|mov|test|jne|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|mov|test|je|mov|mov|call|mov|test|jne|jmp|mov|mov|call|mov|test|jne|jmp|call|mov|test|je|mov|mov|call|mov|mov|mov|repe|je|mov|test|jne|jmp|mov|call|mov|mov|mov|mov|call|mov|call|mov|mov|mov|mov|test|jne|jmp|mov|mov|mov|mov|mov|mov|call|jmp|call|endproc|_jabber_x_data_request_with_actions|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|call|mov|mov|test|je|xchg|mov|mov|mov|cmp|mov|je|call|mov|test|je|lea|mov|mov|call|mov|mov|mov|mov|mov|call|cmp|ja|jmp|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|mov|mov|test|jne|mov|mov|mov|call|mov|mov|test|je|mov|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|mov|test|je|mov|mov|call|mov|test|jne|mov|mov|mov|call|mov|mov|call|mov|mov|test|je|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|xor|jne|mov|mov|add|pop|pop|pop|pop|jmp|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|test|mov|je|mov|mov|mov|mov|mov|call|mov|mov|mov|call|test|je|mov|mov|mov|call|mov|test|jne|mov|mov|test|jne|jmp|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|test|je|xchg|mov|mov|call|mov|mov|mov|mov|call|add|mov|test|jne|mov|call|mov|test|jne|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|mov|test|je|mov|mov|call|mov|test|jne|jmp|mov|mov|call|mov|test|jne|jmp|call|mov|test|je|mov|mov|call|mov|mov|mov|repe|je|mov|test|jne|jmp|mov|call|mov|mov|mov|mov|call|mov|call|mov|mov|mov|mov|test|jne|jmp|mov|mov|mov|mov|mov|mov|call|jmp|call|

end _jabber_x_data_ok_cb
_jabber_x_data_request_with_actions
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|xor|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|test|je|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|test|je|test|je|mov|test|je|mov|mov|mov|repe|je|mov|mov|mov|repe|je|mov|mov|mov|repe|je|mov|mov|mov|repe|seta|setb|mov|cmp|je|mov|mov|mov|repe|je|mov|mov|mov|repe|je|mov|mov|mov|repe|je|mov|mov|mov|repe|seta|setb|mov|mov|cmp|jne|call|test|je|mov|call|test|je|mov|mov|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|call|mov|mov|mov|call|mov|test|je|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|call|mov|test|jne|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|mov|test|je|mov|mov|call|test|je|mov|mov|mov|call|mov|call|mov|test|jne|mov|test|je|mov|mov|call|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|test|jne|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|test|je|mov|call|mov|mov|mov|mov|call|test|je|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|call|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|call|test|je|mov|call|test|je|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|call|mov|call|mov|mov|mov|mov|mov|call|mov|call|jmp|mov|mov|mov|call|mov|mov|mov|mov|repe|jne|mov|mov|mov|call|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|mov|xor|test|je|mov|call|test|je|mov|mov|call|mov|mov|call|mov|test|jne|mov|mov|call|mov|test|je|mov|mov|mov|mov|mov|call|test|je|mov|call|mov|test|je|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|test|je|mov|mov|mov|call|mov|call|mov|test|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|call|mov|mov|call|mov|test|jne|jmp|mov|mov|mov|repe|jne|mov|test|jne|mov|jmp|mov|jmp|mov|jmp|mov|call|mov|jmp|xor|mov|jmp|xor|jmp|mov|mov|call|test|je|mov|call|mov|test|je|mov|mov|call|test|jne|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|call|mov|jmp|xor|jmp|call|test|je|mov|call|test|je|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|repe|jne|mov|mov|mov|call|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|call|test|je|mov|call|mov|test|je|mov|mov|call|mov|mov|mov|mov|call|mov|call|jmp|xor|xor|jmp|mov|call|mov|jmp|mov|mov|call|test|je|mov|mov|call|test|sete|movzx|jmp|xor|mov|jmp|mov|mov|jmp|xor|jmp|call|endproc|_jabber_x_data_request|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|xor|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|test|je|lea|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|test|je|test|je|mov|test|je|mov|mov|mov|repe|je|mov|mov|mov|repe|je|mov|mov|mov|repe|je|mov|mov|mov|repe|seta|setb|mov|cmp|je|mov|mov|mov|repe|je|mov|mov|mov|repe|je|mov|mov|mov|repe|je|mov|mov|mov|repe|seta|setb|mov|mov|cmp|jne|call|test|je|mov|call|test|je|mov|mov|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|call|mov|mov|mov|call|mov|test|je|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|call|mov|test|jne|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|mov|test|je|mov|mov|call|test|je|mov|mov|mov|call|mov|call|mov|test|jne|mov|test|je|mov|mov|call|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|test|jne|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|test|je|mov|call|mov|mov|mov|mov|call|test|je|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|call|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|call|test|je|mov|call|test|je|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|call|mov|call|mov|mov|mov|mov|mov|call|mov|call|jmp|mov|mov|mov|call|mov|mov|mov|mov|repe|jne|mov|mov|mov|call|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|mov|xor|test|je|mov|call|test|je|mov|mov|call|mov|mov|call|mov|test|jne|mov|mov|call|mov|test|je|mov|mov|mov|xchg|mov|mov|call|test|je|mov|call|mov|test|je|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|test|je|mov|mov|mov|call|mov|call|mov|test|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|call|mov|mov|call|mov|test|jne|jmp|mov|mov|mov|repe|jne|mov|test|jne|xchg|mov|jmp|mov|jmp|mov|jmp|mov|call|mov|jmp|xor|mov|jmp|xor|jmp|mov|mov|call|test|je|mov|call|mov|test|je|mov|mov|call|test|jne|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|call|mov|jmp|xor|jmp|call|test|je|mov|call|test|je|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|repe|jne|mov|mov|mov|call|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|call|test|je|mov|call|mov|test|je|mov|mov|call|mov|mov|mov|mov|call|mov|call|jmp|xor|xor|jmp|mov|call|mov|jmp|mov|mov|call|test|je|mov|mov|call|test|sete|movzx|jmp|xor|mov|jmp|mov|mov|jmp|xor|jmp|call|

end _jabber_x_data_request_with_actions
_jabber_x_data_request
original code :
sub|mov|mov|xor|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|xor|jne|add|ret|call|endproc|_jabber_x_data_get_formtype|
disassembled code :
sub|mov|mov|xor|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|xor|jne|add|ret|call|

end _jabber_x_data_request
_jabber_x_data_get_formtype
original code :
push|sub|mov|mov|mov|xor|test|je|mov|mov|call|mov|test|jne|jmp|mov|call|mov|test|je|mov|mov|call|mov|mov|call|test|je|mov|mov|call|test|je|mov|xor|jne|mov|add|pop|jmp|mov|mov|mov|call|xor|mov|xor|jne|add|pop|ret|call|endproc|___PRETTY_FUNCTION___49366|
disassembled code :
push|sub|mov|mov|mov|xor|test|je|mov|mov|call|mov|test|jne|jmp|mov|call|mov|test|je|mov|mov|call|mov|mov|call|test|je|mov|mov|call|test|je|mov|xor|jne|mov|add|pop|jmp|mov|mov|mov|call|xor|mov|xor|jne|add|pop|ret|call|push|jne|jo|inc|outsd|outsb|jb|popa|je|outsd|outsb|push|imul|sahf|push|adc|add|arpl|popa|je|pop|arpl|jb|popa|je|outsd|outsb|add|jno|cmpsb|jno|or|ja|imul|mov|sbb|add|and|ja|imul|add|add|adc|arpl|je|popa|pop|jne|jb|add|ficomp|add|and|arpl|je|jb|outsb|popa|insd|pop|jne|jb|adc|call|add|and|push|arpl|je|jb|insd|outsd|pop|jne|jb|add|push|sbb|sbb|arpl|je|jne|popa|je|pop|jne|jb|adc|sub|and|push|jo|jae|outsb|je|adc|jno|push|outsd|arpl|add|inc|sbb|sub|arpl|je|insd|pop|jae|imul|add|arpl|sub|arpl|je|insd|pop|jae|imul|je|add|add|xor|arpl|je|insd|pop|jae|imul|jae|add|add|xor|jae|outsb|pop|arpl|imul|hlt|test|cmp|into|rol|adc|pop|add|and|loopne|clc|pop|add|and|rol|adc|pop|add|and|add|jne|jo|inc|outsd|outsb|jb|popa|je|outsd|outsb|add|sub|add|and|insb|outsd|imul|sub|

end _jabber_x_data_get_formtype
___PRETTY_FUNCTION___49366
original code :

disassembled code :
push|push|push|push|sub|mov|mov|mov|xor|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|je|xchg|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|test|je|mov|mov|call|mov|test|jne|mov|mov|call|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|jmp|call|

end ___PRETTY_FUNCTION___49366
