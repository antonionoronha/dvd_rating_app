require "application_system_test_case"

class FilmsTest < ApplicationSystemTestCase
  setup do
    @film = films(:filme1)
  end

  test "visiting the index" do
    visit films_url
    assert_selector "p", text: "Filmes"
  end

  test "creating a Film" do
    visit films_url
    click_on "Novo filme"

    fill_in "film[director]", with: @film.director
    fill_in "film[launch_year]", with: @film.launch_year
    fill_in "film[name]", with: @film.name
    fill_in "film[rating]", with: @film.rating
    fill_in "film[sinopse]", with: @film.sinopse
    click_on "Create Film"

    assert_text "Filme foi criado com sucesso"
  end

  test "updating a Film" do
    visit films_url
    click_on "Editar", match: :first

    fill_in "film[director]", with: @film.director
    fill_in "film[launch_year]", with: @film.launch_year
    fill_in "film[name]", with: @film.name
    fill_in "film[rating]", with: @film.rating
    fill_in "film[sinopse]", with: @film.sinopse
    click_on "Update Film"

    assert_text "Filme foi atualizado com sucesso!"
  end

  test "destroying a Film" do
    visit films_url
    page.accept_confirm do
      click_on "Deletar", match: :first
    end

    assert_text "Filme foi deletado!"
  end
end
