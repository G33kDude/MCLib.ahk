#Include %A_ScriptDir%/../
#include MCL.ahk

C := "
(

int SavedValue = 10;

int __main(int NewValue) {
	int Result = SavedValue;
	
	SavedValue = NewValue;
	
	return Result;
}

)"

pCode := MCL.FromC(C)

MsgBox DllCall(pCode, "Int", 20, "Ptr")
MsgBox DllCall(pCode, "Int", 30, "Ptr")
MsgBox DllCall(pCode, "Int", 40, "Ptr")
MsgBox DllCall(pCode, "Int", 50, "Ptr")