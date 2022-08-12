%builtins output

from starkware.cairo.common.serialize import serialize_word

func suma_dos_nums(num1: felt, num2: felt) -> (sum):
    alloc_locals
    local sum = num1+num2
    return(sum)
end

# felt es un numero entero muy grande

func main{output_ptr: felt*}():
    alloc_locals

    const NUM1 = 1
    const NUM2 = 10

    let(sum) = suma_dos_nums(num1 = NUM1, num2 = NUM2)
    serialize_word(sum)
    return()
end


# {} para definir argumentos implicitos y () argumentos explicitos
# ¿Por qué un argumento es implicito y explicito?
# 
# La memoria se puede manejar explicitamente (ej ver la definición de serialize_word)
# Todos los results devuelven una tupla.