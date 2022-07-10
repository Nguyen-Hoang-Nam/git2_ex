defmodule Git2Ex do
  @on_load :load_nifs

  def load_nifs do
    :erlang.load_nif('./native/libgit2/git2_ex', 0)
  end

  def geef_object_id(_, _, _) do
    raise "NIF geef_object_id/3 not implemented"
  end
end
