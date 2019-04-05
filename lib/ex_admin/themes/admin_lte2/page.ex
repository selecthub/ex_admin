defmodule ExAdmin.Theme.AdminLte2.Page do
  @moduledoc false
  use Xain

  def columns(cols) do
    count = Kernel.div(12, Enum.count(cols))

    for html <- cols do
      html
      |> Phoenix.HTML.safe_to_string
      |> div(class: "col-lg-#{count}")
    end
  end
end
