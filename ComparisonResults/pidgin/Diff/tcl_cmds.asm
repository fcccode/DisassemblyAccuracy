_unload_self
original code :
sub|mov|mov|xor|mov|mov|call|xor|mov|xor|jne|add|ret|call|endproc|_tcl_validate_gc|
disassembled code :
sub|mov|mov|xor|mov|mov|call|xor|mov|xor|jne|add|ret|call|

end _unload_self
_tcl_validate_gc
original code :
push|sub|mov|mov|xor|mov|mov|mov|mov|call|mov|test|je|call|test|je|cmp|je|mov|test|jne|xor|mov|mov|xor|jne|add|pop|ret|call|endproc|_tcl_validate_conversation|
disassembled code :
push|sub|mov|mov|xor|mov|mov|mov|mov|call|mov|test|je|call|test|je|lea|cmp|je|mov|test|jne|xor|mov|mov|xor|jne|add|pop|ret|call|

end _tcl_validate_gc
_tcl_validate_conversation
original code :
push|push|sub|mov|mov|mov|xor|mov|mov|mov|mov|call|mov|test|je|call|test|je|cmp|je|mov|test|jne|test|je|mov|mov|mov|mov|call|mov|mov|call|xor|mov|mov|xor|jne|add|pop|pop|ret|call|endproc|_tcl_validate_account|
disassembled code :
push|push|sub|mov|mov|mov|xor|mov|mov|mov|mov|call|mov|test|je|call|test|je|cmp|je|mov|test|jne|test|je|mov|mov|mov|mov|call|mov|mov|call|xor|mov|mov|xor|jne|add|pop|pop|ret|call|

end _tcl_validate_conversation
_tcl_validate_account
original code :
push|push|sub|mov|mov|mov|xor|mov|mov|mov|mov|call|mov|test|je|call|test|je|cmp|je|mov|test|jne|test|je|mov|mov|mov|mov|call|mov|mov|call|xor|mov|mov|xor|jne|add|pop|pop|ret|call|endproc|_tcl_cmd_account|
disassembled code :
push|push|sub|mov|mov|mov|xor|mov|mov|mov|mov|call|mov|test|je|call|test|je|cmp|je|mov|test|jne|test|je|mov|mov|mov|mov|call|mov|mov|call|xor|mov|mov|xor|jne|add|pop|pop|ret|call|

end _tcl_validate_account
_tcl_cmd_account
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|lea|mov|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|ja|mov|jmp|lea|mov|mov|mov|mov|mov|mov|call|test|jne|mov|mov|call|mov|mov|mov|call|mov|add|cmp|jg|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|call|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|mov|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|jmp|cmp|jne|mov|mov|call|test|je|mov|call|mov|mov|mov|test|je|mov|mov|call|mov|mov|mov|call|jmp|cmp|jne|mov|mov|call|mov|test|je|mov|call|test|jne|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|jmp|cmp|je|mov|mov|mov|mov|mov|mov|call|mov|jmp|lea|cmp|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|call|mov|mov|mov|call|jmp|mov|cmp|jg|je|mov|mov|mov|call|mov|call|mov|test|je|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|je|mov|cmp|jne|mov|call|test|jne|jmp|cmp|je|mov|mov|call|mov|test|je|cmp|je|test|jne|mov|mov|mov|call|mov|mov|mov|call|mov|test|je|xor|cmp|je|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|test|je|mov|call|cmp|je|cmp|je|cmp|je|mov|mov|mov|mov|call|mov|mov|mov|call|jmp|lea|cmp|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|test|je|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|jmp|mov|jmp|mov|mov|call|test|je|mov|call|jmp|mov|mov|call|mov|test|je|cmp|je|lea|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|call|mov|mov|mov|call|jmp|mov|mov|call|mov|test|je|mov|mov|mov|cmp|je|call|mov|mov|mov|repe|jne|mov|mov|mov|call|mov|call|mov|mov|mov|call|test|je|mov|mov|mov|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|jmp|mov|mov|call|mov|mov|jmp|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|jmp|lea|mov|mov|mov|mov|mov|mov|call|test|je|mov|jmp|lea|mov|mov|mov|lea|mov|mov|mov|mov|mov|mov|call|test|je|jmp|mov|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|jmp|call|mov|mov|mov|call|jmp|mov|mov|mov|call|mov|mov|call|mov|call|mov|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|jmp|mov|mov|mov|mov|jmp|mov|jmp|call|mov|mov|mov|mov|jmp|mov|mov|mov|mov|jmp|endproc|_tcl_cmd_buddy|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|lea|mov|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|ja|mov|jmp|lea|mov|mov|mov|mov|mov|mov|call|test|jne|mov|mov|call|mov|mov|mov|call|mov|add|cmp|jg|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|call|xchg|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|lea|mov|mov|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|jmp|cmp|jne|mov|mov|call|test|je|mov|call|mov|mov|mov|test|je|mov|mov|call|mov|mov|mov|call|jmp|cmp|jne|mov|mov|call|mov|test|je|mov|call|test|jne|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|jmp|cmp|je|mov|mov|mov|mov|mov|mov|call|mov|jmp|lea|cmp|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|xchg|mov|call|mov|mov|mov|call|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|call|mov|mov|mov|call|jmp|mov|cmp|jg|je|mov|mov|mov|call|mov|call|mov|test|je|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|je|mov|cmp|jne|mov|call|test|jne|jmp|cmp|je|mov|mov|call|mov|test|je|cmp|je|test|jne|mov|mov|mov|call|mov|mov|mov|call|mov|test|je|xor|cmp|je|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|test|je|mov|call|cmp|je|cmp|je|cmp|je|mov|mov|mov|mov|call|mov|mov|mov|call|jmp|lea|cmp|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|test|je|mov|lea|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|jmp|mov|jmp|mov|mov|call|test|je|mov|call|jmp|mov|mov|call|mov|test|je|cmp|je|lea|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|call|mov|mov|mov|call|jmp|mov|mov|call|mov|test|je|mov|mov|mov|cmp|je|call|mov|mov|mov|repe|jne|mov|mov|mov|call|mov|call|mov|mov|mov|call|test|je|mov|mov|mov|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|jmp|mov|mov|call|mov|mov|jmp|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|jmp|lea|mov|mov|mov|mov|mov|mov|call|test|je|mov|jmp|lea|mov|mov|mov|lea|mov|mov|mov|mov|mov|mov|call|test|je|jmp|mov|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|jmp|call|mov|mov|mov|call|jmp|mov|mov|mov|call|mov|mov|call|mov|call|mov|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|jmp|mov|mov|mov|mov|jmp|mov|jmp|call|mov|mov|mov|mov|jmp|mov|mov|mov|mov|jmp|

end _tcl_cmd_account
_tcl_cmd_buddy
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|dec|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|cmp|je|jae|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|je|cmp|jne|cmp|je|mov|mov|mov|mov|call|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|test|jne|jmp|cmp|je|mov|mov|mov|mov|call|mov|call|mov|test|je|mov|call|cmp|jne|mov|mov|mov|call|mov|inc|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|inc|mov|mov|call|mov|test|je|mov|mov|jmp|mov|call|mov|test|je|mov|call|cmp|jne|mov|call|mov|mov|test|jne|mov|call|test|je|inc|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|call|mov|test|jne|mov|mov|mov|test|jne|mov|dec|mov|test|jle|mov|mov|mov|dec|mov|mov|test|jg|mov|mov|call|mov|call|mov|test|jne|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|jmp|mov|call|mov|mov|test|jne|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|dec|mov|test|jg|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|jmp|mov|sub|cmp|ja|cmp|je|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|lea|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|jle|mov|mov|mov|mov|call|mov|mov|mov|repe|jne|mov|mov|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|jmp|lea|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|cmp|jle|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|test|je|mov|mov|mov|repe|je|mov|mov|mov|repe|jne|mov|mov|call|mov|test|je|mov|call|cmp|je|cmp|jne|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|call|mov|mov|mov|repe|jne|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|jmp|mov|mov|call|mov|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|call|mov|mov|mov|mov|call|jmp|endproc|_tcl_cmd_cmd|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|dec|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|cmp|je|jae|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|je|cmp|jne|cmp|je|mov|mov|mov|mov|call|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|test|jne|jmp|cmp|je|mov|mov|mov|mov|call|mov|call|mov|test|je|mov|call|cmp|jne|mov|mov|mov|call|mov|inc|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|inc|mov|mov|call|mov|test|je|mov|mov|jmp|mov|call|mov|test|je|mov|call|cmp|jne|mov|call|mov|mov|test|jne|mov|call|test|je|inc|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|call|mov|test|jne|xchg|mov|mov|mov|test|jne|mov|dec|mov|test|jle|mov|mov|mov|dec|mov|mov|test|jg|mov|mov|call|mov|call|mov|test|jne|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|jmp|mov|call|mov|mov|test|jne|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|dec|mov|test|jg|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|jmp|mov|sub|cmp|ja|cmp|je|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|lea|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|jle|mov|mov|mov|mov|call|mov|mov|mov|repe|jne|mov|mov|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|jmp|lea|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|cmp|jle|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|test|je|mov|mov|mov|repe|je|mov|mov|mov|repe|jne|mov|mov|call|mov|test|je|mov|call|cmp|je|cmp|jne|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|call|mov|mov|mov|repe|jne|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|jmp|mov|mov|call|mov|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|call|mov|mov|mov|mov|call|jmp|

end _tcl_cmd_buddy
_tcl_cmd_cmd
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|mov|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|cmp|ja|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|je|mov|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|xor|mov|repne|not|dec|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|call|mov|mov|mov|call|mov|mov|call|jmp|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|lea|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|test|je|mov|mov|call|mov|mov|call|mov|mov|call|xor|test|setne|mov|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|test|je|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|call|test|je|mov|call|mov|mov|mov|mov|call|mov|mov|test|je|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|jmp|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|jmp|call|endproc|_tcl_cmd_connection|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|mov|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|cmp|ja|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|je|mov|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|xor|mov|repne|not|dec|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|test|jne|mov|call|mov|mov|mov|call|mov|mov|call|jmp|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|lea|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|test|je|mov|mov|call|mov|mov|call|mov|mov|call|xor|test|setne|mov|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|test|je|lea|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|call|test|je|mov|call|mov|mov|mov|mov|call|mov|mov|test|je|xchg|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|jmp|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|jmp|call|

end _tcl_cmd_cmd
_tcl_cmd_connection
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|cmp|ja|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|jne|mov|mov|call|mov|mov|jmp|cmp|je|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|cmp|jne|mov|mov|call|test|je|mov|call|cmp|je|jae|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|call|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|call|endproc|_tcl_cmd_conversation|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|cmp|ja|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|jne|mov|mov|call|mov|mov|jmp|cmp|je|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|cmp|jne|mov|mov|call|test|je|mov|call|cmp|je|jae|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|call|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|call|

end _tcl_cmd_connection
_tcl_cmd_conversation
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|lea|mov|mov|mov|mov|rep|mov|mov|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|ja|mov|jmp|cmp|jne|mov|mov|call|mov|test|je|lea|mov|mov|mov|lea|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|cmp|ja|mov|mov|call|mov|cmp|je|call|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|je|mov|mov|mov|mov|mov|mov|call|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jle|mov|mov|mov|mov|mov|mov|mov|mov|jmp|mov|cmp|je|mov|mov|mov|call|cmp|jne|lea|mov|mov|mov|lea|mov|mov|mov|mov|mov|call|test|jne|inc|mov|test|je|dec|jne|mov|jmp|mov|mov|mov|call|mov|call|mov|test|je|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|mov|mov|mov|jmp|mov|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|cmp|je|call|mov|mov|call|jmp|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|call|mov|mov|jmp|mov|mov|jmp|mov|mov|mov|mov|mov|mov|sub|cmp|jne|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|call|jmp|mov|jmp|xor|jmp|call|mov|mov|call|jmp|call|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|call|jmp|call|endproc|_tcl_cmd_core|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|lea|mov|mov|mov|mov|rep|mov|mov|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|ja|mov|jmp|cmp|jne|mov|mov|call|mov|test|je|lea|mov|mov|mov|lea|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|cmp|ja|mov|mov|call|mov|cmp|je|call|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|je|mov|mov|mov|mov|mov|mov|call|mov|jmp|cmp|jne|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jle|mov|mov|mov|mov|mov|mov|mov|mov|jmp|mov|cmp|je|mov|mov|mov|call|cmp|jne|lea|mov|mov|mov|lea|mov|mov|mov|mov|mov|call|test|jne|inc|mov|test|je|dec|jne|mov|jmp|mov|mov|mov|call|mov|call|mov|test|je|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|cmp|je|mov|jmp|mov|mov|mov|jmp|mov|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|cmp|je|call|mov|mov|call|jmp|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|call|mov|mov|jmp|mov|mov|jmp|mov|mov|mov|mov|mov|mov|sub|cmp|jne|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|call|jmp|mov|jmp|xor|jmp|call|mov|mov|call|jmp|call|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|call|jmp|call|

end _tcl_cmd_conversation
_tcl_cmd_core
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|jne|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|call|endproc|_tcl_cmd_debug|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|jne|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|call|

end _tcl_cmd_core
_tcl_cmd_debug
original code :
push|push|push|sub|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|lea|mov|mov|rep|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|ret|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|jmp|call|endproc|_tcl_cmd_notify|
disassembled code :
push|push|push|sub|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|lea|mov|mov|rep|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|ret|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|jmp|call|

end _tcl_cmd_debug
_tcl_cmd_notify
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|lea|mov|mov|rep|lea|cmp|ja|cmp|je|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|test|je|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|xor|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|jmp|call|endproc|_tcl_cmd_plugins|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|lea|mov|mov|rep|lea|cmp|ja|cmp|je|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|test|je|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|xor|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|jmp|call|

end _tcl_cmd_notify
_tcl_cmd_plugins
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|mov|mov|cmp|jle|lea|mov|mov|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|call|endproc|_tcl_cmd_prefs|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|mov|mov|cmp|jle|lea|mov|mov|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|call|

end _tcl_cmd_plugins
_tcl_cmd_prefs
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|cmp|je|jb|cmp|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|jne|mov|mov|mov|call|mov|call|cmp|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|jmp|mov|jmp|cmp|je|mov|jmp|mov|mov|mov|call|mov|call|cmp|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|call|mov|call|cmp|mov|mov|mov|mov|call|mov|jmp|jmp|mov|mov|mov|mov|mov|mov|call|mov|call|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|mov|call|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|mov|call|mov|call|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|call|mov|call|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|jmp|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|jmp|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|mov|mov|call|jmp|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|jmp|lea|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|test|jle|xor|xor|mov|mov|mov|mov|call|mov|mov|call|mov|inc|cmp|jg|mov|mov|mov|call|mov|mov|call|mov|call|jmp|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|call|xor|jmp|endproc|_tcl_cmd_presence|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|cmp|je|jb|cmp|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|cmp|jne|mov|mov|mov|call|mov|call|cmp|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|jmp|mov|jmp|cmp|je|mov|jmp|mov|mov|mov|call|mov|call|cmp|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|call|mov|call|cmp|mov|mov|mov|mov|call|mov|jmp|jmp|mov|mov|mov|mov|mov|mov|call|mov|call|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|mov|call|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|mov|call|mov|call|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|call|mov|call|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|jmp|jmp|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|call|jmp|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|mov|mov|call|jmp|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|jmp|lea|mov|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|test|jle|xor|xor|mov|mov|mov|mov|call|mov|mov|call|mov|inc|cmp|jg|mov|mov|mov|call|mov|mov|call|mov|call|jmp|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|mov|call|jmp|call|xor|jmp|

end _tcl_cmd_prefs
_tcl_cmd_presence
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|dec|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|ja|mov|jmp|mov|sub|cmp|ja|mov|mov|mov|mov|mov|mov|call|mov|test|je|cmp|je|lea|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|je|cmp|jne|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|mov|je|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|call|mov|jmp|mov|sub|cmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|mov|test|mov|je|mov|mov|mov|mov|call|mov|mov|mov|repe|mov|jne|mov|mov|mov|mov|call|mov|call|test|mov|jne|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|call|mov|mov|call|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|call|cmp|mov|je|jae|mov|mov|mov|mov|mov|call|mov|mov|call|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|jmp|mov|sub|cmp|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|mov|call|mov|test|mov|je|cmp|je|cmp|jne|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|call|mov|mov|call|mov|jmp|mov|jmp|mov|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|test|mov|je|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|mov|jne|mov|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|mov|call|mov|test|mov|je|cmp|je|lea|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|call|mov|jmp|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|jmp|mov|call|test|mov|je|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|mov|mov|call|jmp|cmp|je|cmp|jne|mov|mov|mov|mov|jmp|mov|mov|mov|mov|call|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|call|mov|call|mov|mov|call|mov|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|mov|call|mov|mov|jmp|mov|mov|call|mov|mov|mov|mov|call|mov|jmp|call|endproc|_tcl_cmd_savedstatus|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|dec|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|ja|mov|jmp|mov|sub|cmp|ja|mov|mov|mov|mov|mov|mov|call|mov|test|je|cmp|je|lea|mov|mov|mov|mov|mov|call|mov|test|jne|cmp|je|cmp|jne|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|mov|mov|call|mov|lea|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|mov|je|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|call|mov|jmp|mov|sub|cmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|mov|test|mov|je|mov|mov|mov|mov|call|mov|mov|mov|repe|mov|jne|mov|mov|mov|mov|call|mov|call|test|mov|jne|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|call|mov|mov|call|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|call|cmp|mov|je|jae|mov|mov|mov|mov|mov|call|mov|mov|call|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|call|mov|mov|jmp|mov|sub|cmp|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|mov|call|mov|test|mov|je|cmp|je|cmp|jne|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|call|mov|mov|call|mov|jmp|mov|jmp|mov|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|test|mov|je|lea|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|mov|jne|mov|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|mov|call|mov|test|mov|je|cmp|je|lea|mov|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|call|mov|jmp|mov|jmp|mov|mov|mov|call|mov|mov|mov|mov|mov|call|mov|mov|mov|mov|call|jmp|mov|call|test|mov|je|mov|call|mov|mov|mov|mov|call|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|mov|mov|call|jmp|cmp|je|cmp|jne|mov|mov|mov|mov|jmp|mov|mov|mov|mov|call|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|call|mov|call|mov|mov|call|mov|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|mov|call|mov|mov|jmp|mov|mov|call|mov|mov|mov|mov|call|mov|jmp|call|

end _tcl_cmd_presence
_tcl_cmd_savedstatus
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|jne|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|jmp|call|endproc|_tcl_cmd_send_im|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|jne|mov|mov|call|mov|mov|mov|call|mov|mov|call|jmp|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|mov|mov|call|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|jmp|call|

end _tcl_cmd_savedstatus
_tcl_cmd_send_im
original code :
push|push|push|sub|mov|mov|mov|mov|xor|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|xor|jne|add|pop|pop|pop|ret|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|xor|jmp|mov|jmp|call|endproc|_tcl_cmd_signal|
disassembled code :
push|push|push|sub|mov|mov|mov|mov|xor|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|xor|jne|add|pop|pop|pop|ret|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|mov|call|mov|mov|mov|mov|call|xor|jmp|mov|jmp|call|

end _tcl_cmd_send_im
_tcl_cmd_signal
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|je|mov|jmp|mov|call|mov|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|inc|mov|mov|mov|mov|mov|mov|call|test|jne|mov|call|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|mov|call|mov|mov|call|jmp|mov|call|jmp|call|endproc|_tcl_cmd_status|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|je|mov|jmp|mov|call|mov|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|inc|mov|mov|mov|mov|mov|mov|call|test|jne|mov|call|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|mov|call|mov|mov|call|jmp|mov|call|jmp|call|

end _tcl_cmd_signal
_tcl_cmd_status
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|dec|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|test|jne|mov|sub|cmp|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|je|mov|jmp|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|call|test|je|mov|mov|call|cmp|mov|je|cmp|je|cmp|je|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|call|test|je|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|jmp|cmp|je|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|mov|call|jmp|cmp|je|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|mov|call|jmp|cmp|je|mov|mov|mov|call|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|jmp|call|endproc|_tcl_cmd_status_attr|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|dec|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|jne|mov|test|jne|mov|sub|cmp|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|je|mov|jmp|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|mov|call|test|je|mov|mov|call|cmp|mov|je|cmp|je|cmp|je|mov|mov|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|mov|mov|mov|mov|mov|call|test|je|mov|call|mov|mov|mov|mov|mov|call|mov|mov|call|jmp|cmp|je|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|mov|call|jmp|cmp|je|lea|mov|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|mov|mov|call|jmp|cmp|je|mov|mov|mov|call|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|jmp|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|call|jmp|call|

end _tcl_cmd_status
_tcl_cmd_status_attr
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|call|endproc|_tcl_cmd_status_type|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|mov|test|jne|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|dec|jne|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|jmp|call|

end _tcl_cmd_status_attr
_tcl_cmd_status_type
original code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|cmp|ja|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|call|mov|mov|call|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|test|je|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|call|endproc|_tcl_cmd_unload|
disassembled code :
push|push|push|push|sub|mov|mov|mov|mov|mov|xor|lea|mov|mov|mov|rep|cmp|jle|lea|mov|mov|mov|mov|mov|mov|mov|mov|mov|call|mov|test|mov|jne|cmp|ja|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|call|mov|mov|call|lea|mov|mov|xor|jne|add|pop|pop|pop|pop|ret|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|lea|mov|mov|mov|mov|mov|call|mov|jmp|cmp|je|mov|jmp|cmp|jne|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|call|mov|mov|call|mov|test|je|lea|mov|mov|mov|mov|call|mov|mov|mov|mov|call|mov|test|jne|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|mov|call|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|mov|call|jmp|cmp|jne|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|mov|test|je|mov|mov|mov|mov|mov|mov|call|mov|mov|call|mov|mov|mov|call|mov|mov|mov|call|jmp|mov|mov|mov|mov|mov|call|test|je|mov|mov|mov|mov|call|jmp|call|

end _tcl_cmd_status_type
_tcl_cmd_unload
original code :
sub|mov|mov|mov|mov|xor|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|xor|jne|add|ret|mov|call|test|je|mov|mov|mov|call|xor|jmp|xor|jmp|call|endproc|_CSWTCH_118|
disassembled code :
sub|mov|mov|mov|mov|xor|cmp|je|mov|mov|mov|mov|mov|call|mov|mov|xor|jne|add|ret|mov|call|test|je|mov|mov|mov|call|xor|jmp|xor|jmp|call|push|popa|arpl|outsb|jae|adc|cmp|push|or|add|adc|in|jo|add|and|mov|add|add|pop|or|add|adc|in|jo|add|and|push|mov|add|in|jo|add|and|push|jne|jo|push|insb|jne|imul|outsd|add|rcl|jne|jo|push|insb|jne|imul|outsd|add|lodsd|pop|cwde|push|call|sbb|add|adc|in|jo|add|and|mov|add|in|jo|add|and|or|add|adc|in|jo|add|and|push|mov|add|in|jo|add|and|add|push|jne|jo|push|insb|jne|imul|imul|push|push|inc|inc|pop|dec|dec|dec|inc|

end _tcl_cmd_unload
_CSWTCH_118
original code :

disassembled code :
sub|mov|mov|xor|mov|mov|call|xor|mov|xor|jne|add|ret|call|

end _CSWTCH_118