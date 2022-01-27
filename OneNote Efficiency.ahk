#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


<+6::					; Toggle writing an exponent 1/2
Send, {Ctrl Down}
Send, {Shift Down}
Send, =
Send, {Ctrl Up}
Send, {Shift Up}
Return
>+6::					; Toggle writing an exponent 2/2
Send, {Ctrl Down}
Send, {Shift Down}
Send, =
Send, {Ctrl Up}
Send, {Shift Up}
Return
^Down::					; toggle subscript 
Send, {Ctrl Down}
Send, =
Send, {Ctrl Up}
Return


					; Retype greek letter names as the letters themselves.
					; Titled words will be capitalized letters.
:C:Rho::
Send, P
Return
:C:rho::
Send, ϱ
Return
:C:Theta::
Send, Θ
:C:theta::
Send, θ
:C:Beta::
Send, B
:C:beta::
Send, β
:C:Alpha::
Send, A 
:C:alpha::
Send, α
:C:delta::
Send, δ
:C:Delta::
Send, Δ
:C:Zeta::
Send, Z
:C:zeta::
Send, ζ
:C:Epsilon::
Send, E
:C:epsilon::
Send, ε
:C:Gamma::
Send, Γ
:C:gamma::
Send, γ
:C:eta::
Send, η
:C:Eta::
Send, Η
:C:Lambda::
Send, Λ
:C:lambda::
Send, λ
:C:Mu::
Send, Μ
:C:mu::
Send, μ
:C:Nu::
Send, Ν
:C:nu::
Send, ν
:C:Xi::
Send, Ξ
:C:xi::
Send, ξ
:C:Omicron::
Send, Ο
:C:omicron::
Send, ο
:C:pi::
Send, π
:C:Pi::
Send, Π
:C:Sigma::
Send, Σ
:C:sigma::
Send, σ
:C:sigma2::
Send, ς
:C:Tau::
Send, Τ
:C:tau::
Send, τ
:C:Upsilon::
Send, Y
:C:upsilon::
Send, υ
:C:Phi::
Send, Φ
:C:phi::
Send, φ
:C:Chi::
Send, Χ
:C:chi::
Send, χ
:C:Psi::
Send, Ψ
:C:psi::
Send, ψ
:C:Omega::
Send, Ω
:C:omega::
Send, ω


:C:Integral::   			; Allows you to type a definite integral. Typed limits will not show until you press spacebar or right arrowkey. 
Send, ∫
Sleep,50
Send, {Ctrl Down}
Send, {Shift Down}
Send, =
	Send, {Ctrl Up}
	Send, {Shift Up}
Input, Upper, L500, {Right}{Space}
Send, %Upper%
Sleep, 25
Send, {Ctrl Down}
Send, {Shift Down}
Send, =
Sleep, 50
	Send, {Ctrl Up}
	Send, {Shift Up}
Send, {Ctrl Down}
Send, =
Send, {Ctrl Up}
Input, Lower, L500,{Right}{Space}{(}
Send, %Lower%
Sleep, 25
	Send, {Ctrl Down}
	Send, =
	Send, {Ctrl Up}
Return

:C:Integral::∫				; replaces keyphrase "integral" with "∫."

:C:lbm::
Send, lb				; auto subscript lbm 
Send, {Ctrl Down}
Send, =
Send, {Ctrl Up}
Sleep, 25
Send, m
Sleep, 25
Send, {Ctrl Down}
Send, =
Send, {Ctrl Up}
Return

:C:lbf::
Send, lb				; auto subscript lbf
Send, {Ctrl Down}
Send, =
Send, {Ctrl Up}
Sleep, 25
Send, f
Sleep, 25
Send, {Ctrl Down}
Send, =
Send, {Ctrl Up}
Return

