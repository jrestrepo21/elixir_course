options = ["piedra", "papel", "tijera"]

IO.puts("Bienvenido al juego Piedra, Papel o Tijera!")
IO.puts("Ingresa tu opción: piedra, papel o tijera")
user_choice = String.downcase(String.trim(IO.gets(">> ")))

if Enum.member?(options, user_choice) do
  cpu_choice = Enum.random(options)
  IO.puts("Tu contrincante eligió: #{cpu_choice}")

  result =
    cond do
      user_choice == cpu_choice -> :draw
      (user_choice == "piedra" && cpu_choice == "tijera") or
      (user_choice == "tijera" && cpu_choice == "papel") or
      (user_choice == "papel" && cpu_choice == "piedra") -> "usr"
      true -> "CPU"
    end

  case result do
    :draw -> IO.puts("Es un empate!")
    "usr" -> IO.puts("Has ganado! :D")
    "CPU" -> IO.puts("Has perdido! :(")
  end
else
  IO.puts("Opción inválida. Por favor ingresa 'piedra', 'papel' o 'tijera'.")
end
