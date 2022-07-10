defmodule Mix.Tasks.Compile.Git2 do
	def run(_args) do
		{result, _errcode} = System.cmd("sh", 
			[
				"-c",
				"clang++",
				"-O3",
				"-fpic",
				"-shared", 
				"lgit2", 
				"-march=native",
				"-I", "/usr/lib/erlang/include", "-o", "git2_ex.so", "object.cpp"])
	end
end

defmodule Git2Ex.MixProject do
  use Mix.Project

  def project do
    [
      app: :git2_ex,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
			compilers: [:git2] ++ Mix.compilers,
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
