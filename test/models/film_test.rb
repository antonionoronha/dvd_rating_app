require "test_helper"

class FilmTest < ActiveSupport::TestCase
  test "é válido com atributos válidos" do
    film = Film.new(name: "Crespúsculo", launch_year: 2005, sinopse: "Vários vampiros", director: "zzzz", rating: 3.0)
    assert film.save
  end

  test "não pode salvar sem nome" do
    film = Film.new(launch_year: 2005, sinopse: "Vários vampiros", director: "zzzz", rating: 3.0)
    assert_not film.save
  end 

  test "não pode salvar sem ano de lançamento" do
    film = Film.new(name: "Crespúsculo", sinopse: "Vários vampiros", director: "zzzz", rating: 3.0)
    assert_not film.save
  end 

  test "não pode salvar sem sinopse" do
    film = Film.new(name: "Crespúsculo", launch_year: 2005, director: "zzzz", rating: 3.0)
    assert_not film.save
  end 

  test "não pode salvar sem diretor" do
    film = Film.new(name: "Crespúsculo", launch_year: 2005, sinopse: "Vários vampiros", rating: 3.0)
    assert_not film.save
  end 

  test "não pode salvar sem avaliação" do
    film = Film.new(name: "Crespúsculo", launch_year: 2005, sinopse: "Vários vampiros", director: "zzzz")
    assert_not film.save
  end 

end
