IO.puts("Bienvenido al juego Pares o Nones!")
IO.puts("Elige tu opción: pares o nones")
player1_choice = String.downcase(String.trim(IO.gets("Jugador 1 >> ")))

player2_choice =
  if player1_choice == "pares", do: "nones", else: "pares"

IO.puts("Jugador 2 eligió: #{player2_choice}")
IO.puts("Ambos jugadores muestran sus manos.")
IO.puts("Jugador 1, muestra la cantidad de dedos (0, 1, 2, ...)")
player1_fingers = String.trim(IO.gets("Jugador 1 >> ")) |> String.to_integer()

IO.puts("Jugador 2, muestra la cantidad de dedos (0, 1, 2, ...)")
player2_fingers = String.trim(IO.gets("Jugador 2 >> ")) |> String.to_integer()

total_fingers = player1_fingers + player2_fingers

result =
  cond do
    rem(total_fingers, 2) == 0 ->
      if player1_choice == "pares", do: "Jugador 1", else: "Jugador 2"
    true ->
      if player1_choice == "nones", do: "Jugador 1", else: "Jugador 2"
  end

IO.puts("Total de dedos: #{total_fingers}")
IO.puts("#{result} gana!")
