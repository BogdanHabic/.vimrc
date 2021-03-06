require 'spec_helper'

describe 'Alias syntax' do
  it 'colorize only module alias' do
    expect(<<-EOF).to include_elixir_syntax('elixirAlias', 'Enum')
      Enum.empty?(...)
    EOF
  end

  it 'colorize the module alias even if it starts with `!`' do
    expect(<<-EOF).to include_elixir_syntax('elixirAlias', 'aEnum')
      !Enum.empty?(...)
    EOF
  end

  it 'does not colorize words starting with lowercase letters' do
    expect(<<-EOF).not_to include_elixir_syntax('elixirAlias', 'aEnum')
      aEnum.empty?(...)
    EOF
  end
end
