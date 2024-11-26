# SimpleLanguage
```lisp
; 순수 함수 호출 (s-표현식)
(add 2 3)

; 부수 효과 호출 (인자들이 공백으로 구분됨)
print("Hello, World")

; 중첩된 s-표현식 (순수 함수 안에 순수 함수)
(subtract (multiply 2 3) 4)

; 부수 효과 호출 안에 s-표현식 포함
updateValue (calculateNewValue x) y

; 부수 효과 호출 안에 다른 부수 효과 포함
log print("Logging message") getCurrentTime()

```

